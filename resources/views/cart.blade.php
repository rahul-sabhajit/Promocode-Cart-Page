@extends('layout.app')
@section('main-content')
    <link href="{{ asset('/css/bootstrap.css') }}" rel="stylesheet" type="text/css" media="all">
    <div id="home1" style="margin-top: 0%;margin-bottom: 25%;">
        <div class="container">
    <div class="col-md-12 col-md-offset-0">
        <div class="col-md-12 center-block">
            <div class="box box-primary ">
                <div class="box-header with-border ">
                    <h2 class="box-title">Cart Page</h2>
                </div>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <div class="box-body">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-bordered table-striped table-condensed "  >
                        <thead style="background-color: #2e6da4; color: #FFF;">
                        <tr>
                            <th width="27">#</th>
                            <th width="40">Product Image</th>
                            <th width="40">Product Name</th>
                            <th width="40">Quantity</th>
                            <th width="40">Price</th>
                            <th width="40">Created Time</th>
                            <th width="40">Remove</th>
                        </tr>
                        </thead>
                        <?php
                        $i=$pagestart;
                        $subtotal=0;

                        foreach ($data['cart']['data'] as $key => $_data) {
                        ?>
                        <tbody>
                        <tr>
                            <td><div align="center"><?php echo ++$i; ?></div></td>
                            <td><div align="left"><img src="{{ asset('product_img/'.$_data['product_image']) }} " height="60px"; width="60px";></div></td>
                            <td><div align="left"><?php echo $_data['product_name']; ?></div></td>
                            <td><div align="left">
                                    <a href="{{url('decreaseproductqty/'.$_data['id'])}}">
                                        <span class="glyphicon glyphicon-minus-sign"></span>
                                    </a>
                                    <?php echo $_data['product_quantity']; ?>
                                    <a href="{{url('increaseproductqty/'.$_data['id'])}}">
                                        <span class="glyphicon glyphicon-plus-sign"></span>
                                    </a></div></td>
                            <td><div align="left"><?php echo $_data['total_price']; ?></div></td>
                            <td><div align="left"><?php echo date('d-m-Y H:i:s', strtotime($_data['created_at'])); ?></div>
                            <td><div align="left">
                                    <a href="{{url('removecartproduct/'.$_data['id'])}}">
                                    <button type="button" class="btn btn-default btn-sm">
                                        <span class="glyphicon glyphicon-remove-sign"></span> Remove
                                    </button>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                        <?php $subtotal = $subtotal + $_data['total_price'];} ?>
                        <tfoot>
                        <tr>
                            <form class="form-horizontal" method="post" action="{{url('/promo')}}" enctype=multipart/form-data>
                                {!! csrf_field() !!}
                            <td colspan="3"><div align="center"></div></td>
                            <td><div align="left"><b>Subtotal</b></div></td>
                            <td><div align="left"><b><?php echo $subtotal;?></b></div></td>

                            <td><div align="right"><input type="text" id="promocode" name="promocode" placeholder="Enter Promocode"><?php if(isset($message)) {echo $message;}?>
                                </div></td>
                            <td><div align="left">
                                    <button  type="submit" id="submit" name="submit" value="Get" class="btn btn-default btn-sm">
                                        <span class="glyphicon"></span> Apply Promo code
                                    </button>

                                </div>
                            </td>
                            </form>
                        </tr>
                        <tr>
                            <td colspan="3"><div align="center"></div></td>
                            <td><div align="left"><b>Discount</b></div></td>
                            <td><div align="left"><b><?php if(isset($data['dispercentage'])){echo $data['dispercentage'] . '%';}else{echo "0";}?></b></div></td>

                            <td colspan="2"><div align="right">
                                </div></td>
                        </tr>
                        <tr>
                            <td colspan="3"><div align="center"></div></td>
                            <td><div align="left"><b>Final Amount</b></div></td>
                            <td><div align="left"><b><?php if(isset($data['discounted'] )){ if($data['discounted'] > 0){ echo $data['discounted'];}else{ echo $subtotal;}}else{echo $subtotal;}?></b></div></td>

                            <td colspan="2"><div align="right">
                                </div></td>
                        </tr>
                        </tfoot>
                    </table>

                    <div class="pagination pull-right">
                        <div class="pagination">
                            <?php
                            $prev =1;
                            $next = $data['cart']['last_page'];
                            if($data['cart']['current_page']-1 > 1) { $prev = $data['cart']['current_page']-1;}?>
                            <a href="{{url('/cart'.'?'.'page='.$prev)}}">&laquo;</a>
                            <?php
                            $last = $data['cart']['last_page'];
                            for ($start =1; $start <= $last; $start++ ){?>
                            <a href="{{url('/cart'.'?'.'page='.$start)}}"><?php echo $start;?></a>
                            <?php } ?>
                            <?php if($data['cart']['current_page']+1 <= $last) { $next = $data['cart']['current_page']+1;}?>
                            <a  href="{{url('/cart'.'?'.'page='.$next)}}">&raquo;</a>
                        </div>

                    </div>

                </div>
            </div></div>
    </div>
        </div>
    </div>


@endsection
