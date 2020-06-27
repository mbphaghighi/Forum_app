<?php

namespace App\Http\Resources\api\Reply;

use Illuminate\Http\Resources\Json\JsonResource;

class ShowReplyResource extends JsonResource
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

            'user_name'=>$this->owner->name,
            'body'=>$this->body,
        ];
    }
}
