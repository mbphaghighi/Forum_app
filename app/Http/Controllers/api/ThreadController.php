<?php

namespace App\Http\Controllers\api;

use App\Http\Requests\api\Thread\createThreadRequest;
use App\Http\Requests\api\Thread\DestroyThreadRequest;
use App\Http\Requests\api\Thread\ThreadShowRequest;
use App\Http\Requests\Threads\ThreadStoreRequest;
use App\Http\Resources\api\Thread\showThreadResource;
use App\Http\Resources\api\ThreadIndexResource;
use App\Models\Thread;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ThreadController extends Controller
{
    public function index()
    {
        $threads = Thread::query();
        $by = request('by');
        $popular = request('popular');
        $unanswered = request('unanswered');

        if ($popular) {
            $threads = $threads->orderBy('replies_count', 'desc');
        } elseif ($by) {
            $username = $by;
            $user = User::where('name', $username)->firstOrFail();
            $threads = Thread::where('user_id', $user->id);
            $threads = $threads->latest();
        } elseif ($unanswered) {
            $threads = $threads->where('replies_count', 0);
        } else {
            $threads = $threads->latest();
        }

        $threads = $threads->paginate(3);
        return ThreadIndexResource::collection($threads);
    }

    public function create(createThreadRequest $request)
    {
        Thread::create([
            'user_id' => auth()->id(),
            'channel_id' => $request->channel_id,
            'title' => $request->title,
            'body' => $request->body,
        ]);
        return [
            'status' => true,
            'message' => 'The thread is successfully created.'
        ];
    }

    public function show(Thread $thread){

        return new showThreadResource($thread);
    }

    public function destroy(Thread $thread){

        $this->authorize('update',$thread);
        $thread->delete();
        return [
            'status'=>true,
            'message'=>'The thread is successfully deleted.'
        ];
    }
}
