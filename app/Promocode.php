<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Promocode extends Model
{
    protected $fillable = [
        'discount_code', 'used_count', 'total_count', 'percentage',
    ];
}
