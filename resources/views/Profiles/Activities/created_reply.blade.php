@if(!empty($activity->subject['body']))
<div class="card">
    <div class="card-header">

        {{$profile_user->name}} replied to
        <a href="">"{{ $activity->subject['thread']['title'] }}"</a>

    </div>

    <div class="card-body">

        {{ $activity->subject['body'] }}

    </div>

</div>
@endif