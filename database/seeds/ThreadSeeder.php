<?php

use App\Models\Activity;
use Illuminate\Database\Seeder;
use App\Models\Thread;
class ThreadSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Thread::class, 50)->create()->each(function ($thread) {
        	Activity::create([

			    'subject_id' => $thread->id,
                'user_id' => $thread->user_id,
			    'subject_type' => 'App\Models\Thread',
                'type'=> 'created_thread'
		]);

        });
}
}
