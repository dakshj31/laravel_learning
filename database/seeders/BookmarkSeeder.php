<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Job;
use App\Models\User;

class BookmarkSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // get test user
        $testUser = User::where('email', 'test@test.com')->firstOrFail();

        // get all jobs ids
        $jobIds = Job::pluck('id')->toArray();

        // randomly select jobs to bookmark
        $randomJobIds = array_rand($jobIds, 3);

        // attach the selected jobs as bookmark for the test user
        foreach ($randomJobIds as $jobId) {
            $testUser->bookmarkedJobs()->attach($jobIds[$jobId]);
        }
    }
}
