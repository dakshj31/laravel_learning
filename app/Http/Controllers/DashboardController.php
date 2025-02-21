<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use App\Models\Job;

class DashboardController extends Controller
{
    // @desc Show all users job listing
    // @route GET/ dashboard
    public function index(): View {
        // Getlogged in user
        $user = Auth::user();

        // Get the user listings
        $jobs = Job::where('user_id', $user->id)->get();
        
        return view('dashboard.index', compact('user', 'jobs'));
    }
}
