<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class product_table extends Model
{
    protected $fillable = [
        'name', 'image', 'price','description',
    ];
}
