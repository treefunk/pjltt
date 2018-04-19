<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    protected $table = 'packageitenary';
    public $primary = 'id';

    public function tour()
    {
        return $this->belongsTo('App\Tour','tour_id','id');
    }
}
