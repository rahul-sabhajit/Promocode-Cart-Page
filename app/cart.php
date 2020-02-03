<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cart extends Model
{
    protected $fillable = [
        'product_id', 'user_id', 'product_name','product_quantity', 'total_price', 'product_image',
    ];
}
