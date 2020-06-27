@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header"> Forum Threads</div>

                    <div class="card-body">

                        @forelse($threads as $thread)

                            <article>
                                <div class="level" style="display: flex; align-items: center;">

                                    <h4 style="flex: 1;
font-size: 1rem;"> <a href="{{ route('profile', $thread->owner->name) }}">{{ $thread->owner->name }}</a> {{ $thread->created_at->diffForHumans() }} posted:
                                        <a href="{{route('base')}}{{ $thread->path() }}" style="color:cadetblue">{{ $thread->title }} </a>
                                    </h4>

                                    @can('update', $thread)
                                        <form action="{{route('base')}}{{ $thread->path() }}" method="post" style="float: right;">
                                            @csrf
                                            {{ method_field('DELETE') }}

                                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Do you really want to delete the thread?')">Delete Thread</button>
                                        </form>
                                    @endcan

                                    <strong style="margin-left: 10px">{{ $thread->replies->count() }} {{ str_plural('reply', $thread->replies->count()) }}</strong>
                                </div>
                                <div class="body" style="font-size: 0.8rem; color:gray;">{{ $thread->body }}</div>


                            </article>
                            <hr>

                        @empty
                            <p>There are no relevant results at this time.</p>
                        @endforelse

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
