@extends('layout.app')
@section('main-content')
    <div class="header">
        <div class="container">
            <div class="wrapper">
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <div class="view">
                    <p>View as:</p>
                    <a href="#" class="icon-grid"></a>
                    <a href="#" class="icon-list"></a>
                </div>
                <div class="products category">

                    <ul class="">
                        <?php
                        if(isset($product)){
                        foreach ($product as $key => $value){ ?>
                        <li>
                            <div class="itemIMG">
                                <img src="{{ asset('product_img/'.$value['image']) }} ">
                                <div class="addCART"> <a href="{{url('addtocart/'.$value['id'])}}" >+ Add To Cart</a>
                                </div>
                            </div>
                            <div class="itemTitle">	<a href="#"><?php echo $value['name']?></a>
                                <span>&#8377; <?php echo $value['price']?></span>

                                <p class="des"><b>Detailed item information</b></p>
                                <p><?php echo $value['description']?></p>
                            </div>
                        </li>
                        <?php }} ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>

@endsection
