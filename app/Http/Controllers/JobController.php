<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;
use App\Models\Job;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;

class JobController extends Controller
{
    // @desc show all job listings
    // @route get/ jobs
    public function index(): view
    {
        $jobs = Job::all();
        return view('jobs.index')->with('jobs', $jobs);
    }

    // @desc show create job form
    // @route get/ jobs/create
    public function create(): view
    {
        return view('jobs.create');
    }

    // @desc show job to database
    // @route post/ jobs
    public function store(Request $request): RedirectResponse
    {
        
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'salary' => 'required|integer',
            'tags' => 'nullable|string',
            'job_type' => 'required|string',
            'remote' => 'required|boolean',
            'requirements' => 'nullable|string',
            'benefits' => 'nullable|string',
            'address' => 'nullable|string',
            'city' => 'required|string',
            'state' => 'required|string',
            'zipcode' => 'nullable|string',
            'contact_email' => 'required|string',
            'contact_phone' => 'nullable|string',
            'company_name' => 'required|string',
            'company_description' => 'nullable|string',
            'company_logo' => 'nullable|image|mimes:jpeg,jpg,png,gif|max:2048',
            'company_website' => 'nullable|url',
        ]);

        // Hardcoded user ID 

        $validatedData['user_id'] = 1;

        // check for image
        if($request->hasFile('company_logo')) {
            // store the file and get path
            $path = $request->file('company_logo')->store('logos', 'public');
        }

       // add path to validated data
       $validatedData['company_logo'] = $path;


        // submit to database
        Job::create($validatedData);

        return redirect()->route('jobs.index')->with('success', 'Job listing created successfully');
    }

    // @desc display a single job listing
    // @route get/ jobs/{$id}
    public function show(Job $job): View
    {
        return view('jobs.show')->with('job', $job);
    }

    // @desc show edit job form
    // @route get/ jobs/{$id}/edit
    public function edit(Job $job): View
    {
        return view('jobs.edit')->with('job', $job);
    }

    // @desc update job listing
    // @route put/ jobs/{$id}
    public function update(Request $request, Job $job): string
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'salary' => 'required|integer',
            'tags' => 'nullable|string',
            'job_type' => 'required|string',
            'remote' => 'required|boolean',
            'requirements' => 'nullable|string',
            'benefits' => 'nullable|string',
            'address' => 'nullable|string',
            'city' => 'required|string',
            'state' => 'required|string',
            'zipcode' => 'nullable|string',
            'contact_email' => 'required|string',
            'contact_phone' => 'nullable|string',
            'company_name' => 'required|string',
            'company_description' => 'nullable|string',
            'company_logo' => 'nullable|image|mimes:jpeg,jpg,png,gif|max:2048',
            'company_website' => 'nullable|url',
        ]);


        // check for image
        if($request->hasFile('company_logo')) {

            //delete old logo
            Storage::delete('public/logos/' . basename($job->company_logo));

            // store the file and get path
            $path = $request->file('company_logo')->store('logos', 'public');
        }

       // add path to validated data
    //    $validatedData['company_logo'] = $path;


        // submit to database
        $job->update($validatedData);

        return redirect()->route('jobs.index')->with('success', 'Job listing Updated successfully');
    }

    // @desc delete job listing
    // @route DELETE/jobs/{$id}
    public function destroy(Job $job): RedirectResponse
    {
        // if logo then delete it
        if($job->company_logo) {
            Storage::delete('public/logos/' . $job->company_logo);
        }

        $job->delete();

        return redirect()->route('jobs.index')->with('success', 'Job listing deleted successfully');
    }
}
