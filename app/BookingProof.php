<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BookingProof extends Model
{
    protected $fillable = [
        'id','book_id','picture_path'
    ];

    public function book(){
        return $this->belongsTo('App\Book');
    }
}
