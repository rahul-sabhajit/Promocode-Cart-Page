<!DOCTYPE HTML>
<html lang="en">
@section('htmlheader')
    @include('layout.guest.htmlheader')
@show

<body>
@include('layout.guest.mainheader')
@yield('main-content')
@section('script')
    @include('layout.script')
@show
@include('layout.footer')
</body>

