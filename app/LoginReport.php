<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LoginReport extends Model
{
    protected $fillable = ['user_id','action','created_at','updated_at'];




    public function user()
    {
        return $this->belongsTo('App\User');
    }
}