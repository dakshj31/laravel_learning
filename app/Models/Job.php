<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;

    protected $table = 'job_listings';

    protected $fillable = [
    'title', 
    'description',
    'salary',
    'tags',
    'job_type',
    'remote',
    'requirements',
    'benefits',
    'address',
    'city',
    'state',
    'zipcode',
    'contact_email',
    'contact_phone',
    'company_name',
    'company_description',
    'comapny_logo',
    'company_website'
    ];
}
