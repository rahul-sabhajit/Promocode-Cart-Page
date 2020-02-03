<!DOCTYPE HTML>
<html lang="en">
@section('htmlheader')
    @include('layout.htmlheader')
@show

<body>
@include('layout.guest.productmainheader')
@yield('main-content')
@section('script')
    @include('layout.script')
@show
@include('layout.footer')
</body>

