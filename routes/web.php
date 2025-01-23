<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/jobs', function() {
    $title = 'Available Jobs';
    $jobs = [
        // 'Web developer',
        // 'data analyst',
        // 'block chain',
        // 'system design',
    ];
    return view('jobs.index', compact('title', 'jobs'));
})->name('jobs');

Route::get('/jobs/create', function() {
    return view('jobs.create');
})->name('jobs.create');

Route::get('/posts/{id}', function(string $id) {
    return 'Post ' . $id;
})->whereAlpha('id');

Route::get('/posts/{id}/comments/{commentId}', function(string $id, string $commentId) {
    return 'Post ' . $id . ' Comment ' . $commentId;
});

Route::get('/test', function(Request $request) {
    return[
        'method' => $request->method(),
        'url' => $request->url(),
        'path' => $request->path(),
        'fullUrl' => $request->fullUrl(),
        'ip' => $request->ip(),
        'userAgent' => $request->userAgent(),
        'header' => $request->header(),
    ];
});

Route::get('/users', function(Request $request){
    return $request->except(['name']);
});

Route::get('/trial', function(){
    return response()->json(['name'=> 'Daksh'])->cookie('name', 'Joshi');
});

Route::get('/download', function(){
    return response()->download(public_path('favicon.ico'));
});

Route::get('/read-cookie', function(Request $request){
    $cookieValue = $request->cookie('name');
    return response()->json(['cookie'=> $cookieValue]);
});
