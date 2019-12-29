<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Constellation extends Model
{
    protected $table = 'constellations';

    protected $guarded = [''];

    // protected $fillable = ['name', 'date', 'whole_luck', 'whole_description', 'love_luck', 'love_description', 'career_luck', 'career_description', 
    // 'wealth_luck', 'wealth_description'];
}
