<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tokobuku extends Model
{
    protected $table = 'tokobukus';
    protected $primaryKey = 'id';
    public $incrementing = true;
    protected $fillable = [
        'id', 'nama_tokobuku','alamat', 'no_telepon', 'jenis', 'latitude', 'longitude'
    ];
}

