<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $table = 'book';
    public $primary = 'id';
    public $timestamps = false;

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function booking_proof()
    {
        return $this->hasOne('App\BookingProof');
    }

    public function package()
    {
        return $this->belongsTo('App\Package','packageitenary_id');
    }

}
