@extends('layout.app')
@section('main-content')
<link href="{{ asset('/css/bootstrap.css') }}" rel="stylesheet" type="text/css" media="all">
    <br/>
    <div id="home1" style="margin-top: 5%;margin-bottom: 25%;">
        <div class="container">
            <div class="col-md-12 col-md-offset-0">
                <div class="col-md-12 center-block">
                    <div class="box box-primary ">
                        <div class="box-header with-border ">
                            <h2 class="box-title">Promocode Details</h2>
                        </div>
                        <div class="box-body">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-bordered table-striped table-condensed "  >
                                <thead style="background-color: #2e6da4; color: #FFF;">
                                <tr>
                                    <th width="27">#</th>
                                    <th width="40">Promocode</th>
                                    <th width="40">Discount Percentage</th>
                                    <th width="40">Used</th>
                                    <th width="40">Max Use Count</th>
                                    <th width="40">Start Time</th>
                                    <th width="40">End Time</th>
                                    <th width="40">Created Time</th>
                                </tr>
                                </thead>
                                <?php
                                //echo $pagestart;
                                $i=$pagestart;
                                //echo json_encode($data['data'] );

                                foreach ($data['promocode']['data'] as $key => $_data) {
                                ?>
                                <tbody>
                                <tr>
                                    <td><div align="center"><?php echo ++$i; ?></div></td>
                                    <td><div align="left"><?php echo $_data['discount_code']; ?></div></td>
                                    <td><div align="left"><?php echo $_data['percentage']; ?></div></td>
                                    <td><div align="left"><?php echo $_data['used_count']; ?></div></td>
                                    <td><div align="left"><?php echo $_data['total_count']; ?></div></td>
                                    <td><div align="left"><?php echo  date('d-m-Y H:i:s', strtotime($_data['start'])); ?></div></td>
                                    <td><div align="left"><?php echo  date('d-m-Y H:i:s', strtotime($_data['end'])); ?></div></td>
                                    <td><div align="left"><?php echo date('d-m-Y H:i:s', strtotime($_data['created_at'])); ?></div>
                                    </td>
                                </tr>
                                </tbody>
                                <?php } ?>
                            </table>

                            <div class="pagination pull-right">
                                <div class="pagination">
                                    <?php
                                    $prev =1;
                                    $next = $data['promocode']['last_page'];
                                    if($data['promocode']['current_page']-1 > 1) { $prev = $data['promocode']['current_page']-1;}?>
                                    <a href="{{url('/promocode'.'?'.'page='.$prev)}}">&laquo;</a>
                                    <?php
                                    $last = $data['promocode']['last_page'];
                                    for ($start =1; $start <= $last; $start++ ){?>
                                    <a href="{{url('/promocode'.'?'.'page='.$start)}}"><?php echo $start;?></a>
                                    <?php } ?>
                                    <?php if($data['promocode']['current_page']+1 <= $last) { $next = $data['promocode']['current_page']+1;}?>
                                    <a  href="{{url('/promocode'.'?'.'page='.$next)}}">&raquo;</a>
                                </div>

                            </div>

                        </div>
                    </div></div>
            </div>
        </div>
    </div>


@endsection
