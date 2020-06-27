<?php

namespace App\Http\Resources\api\Thread;

use App\Http\Resources\api\Reply\ShowReplyResource;
use Illuminate\Http\Resources\Json\JsonResource;

class showThreadResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'channel'=>$this->channel->name,
            'title'=>$this->title,
            'body'=>$this->body,
            'replies'=>ShowReplyResource::collection($this->replies),
        ];
    }
}
