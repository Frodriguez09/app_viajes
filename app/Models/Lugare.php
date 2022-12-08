<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lugare extends Model
{
    protected $fillable = [
        'latitud',
        'logitud',
        'nombre',

    ];


    protected $dates = [
        'created_at',
        'updated_at',

    ];

    protected $appends = ['resource_url'];

    public function viajes(){
        return $this->hasMany((Viaje::class));
    }

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/lugares/'.$this->getKey());
    }
}
