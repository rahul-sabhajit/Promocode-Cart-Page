<head>
    <title>productCart Demo</title>

    <link href="{{ asset('/css/style.css') }}" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="{{ asset('/css/chocolat.css') }}" type="text/css" media="screen" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Product demo" />
    <script src="{{ asset('/js/jquery-1.11.1.min.js') }}"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<style>
    #loader {
        position: absolute;
        left: 50%;
        top: 50%;
        z-index: 1;
        width: 150px;
        height: 150px;
        margin: -75px 0 0 -75px;
        border: 16px solid #f3f3f3;
        border-radius: 50%;
        border-top: 16px solid #3498db;
        width: 120px;
        height: 120px;
        -webkit-animation: spin 2s linear infinite;
        animation: spin 2s linear infinite;
    }

    @-webkit-keyframes spin {
        0% { -webkit-transform: rotate(0deg); }
        100% { -webkit-transform: rotate(360deg); }
    }

    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }


    #maindv {
        opacity: 0.5;
        text-align: left;
    }


    * {
        margin: 0;
        padding: 0;
    }
    body {
        font: 14px/18px'OpenSans-Bold', sans-serif;
    }
    ul {
        list-style: none;
    }
    .wrapper {
        width: 700px;
        margin: 20px auto;
    }
    .products {
        margin: 40px 0;
        overflow: hidden;
        border-left: 1px solid #d9d9d9;
        border-bottom: 1px solid #d9d9d9;
    }
    .products ul li p {
        display: none;
    }
    .products ul.list li p {
        display: block;
    }
    .products .list li {
        float: none;
        display: block;
        width: 691px;
        height: 245px;
    }
    .products .list li .itemTitle {
        float: left;
        position: relative;
        padding: 45px 0 20px 0;
        width: auto;
        height: auto;
        border: 0;
        background: transparent;
    }
    .products .list li:hover .itemTitle {
        border: 0;
    }
    .products .list li .itemTitle a {
        padding: 0 0 5px 0;
    }
    .products .list li .itemTitle .des {
        color: #333;
        text-transform: none !important;
        padding: 10px 0 0 0;
    }
    .products .list li .itemTitle p {
        color: #333;
        text-transform: none !important;
        width: 440px;
    }
    .products .list li .itemIMG {
        height: 243px;
        float: left;
        border-right: 1px solid #d9d9d9;
        margin: 0 13px 0 0;
        width: 230px;
        position: relative;
    }
    .products .list li .itemIMG img {
        position: absolute;
        margin: auto;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
    }
    .products .list li .addCART {
        height: 243px;
        border-bottom: 1px solid rgba(51, 51, 51, 1);
    }
    .products .list li .addCART a {
        margin: 45% auto auto 40px;
    }
    .products.catalog {
        margin: 80px auto 40px auto;
    }
    .products.category {
        margin: 10px 0;
        width: 693px;
        float: left;
    }
    .products ul li {
        float: left;
        margin: 0;
        padding: 0;
        width: 230px;
        height: 244px;
        position: relative;
        border-top: 1px solid #d9d9d9;
        border-right: 1px solid #d9d9d9;
    }
    .products ul li img {
        position: absolute;
        margin: auto;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
    }
    .products ul li:hover .addCART, .products ul li:hover .addCART a {
        opacity: 1;
    }
    .products ul li:hover .itemTitle {
        border: 1px solid rgba(51, 51, 51, 1);
        border-top: 0;
    }
    .products ul li:hover .itemTitle a {
        color: #010101;
    }
    .addCART {
        position: absolute;
        top: 0;
        left: 0;
        width: 228px;
        height: 186px;
        border: 1px solid rgba(51, 51, 51, 1);
        border-bottom: 0;
        background: rgba(255, 255, 255, 0.5);
        opacity: 0;
        -webkit-transition: opacity 0s;
        -moz-transition: opacity 0s;
        -o-transition: opacity 0s;
    }
    .addCART a {
        text-decoration: none;
        display: inline-block;
        width: 157px;
        height: 40px;
        margin: 100px auto auto 40px;
        background-color: #333;
        text-align: center;
        font: 14px/40px'OpenSans-Italic', sans-serif;
        color: #fff;
        opacity: 0;
        -webkit-transition: opacity 1s;
        -moz-transition: opacity 1s;
        -o-transition: opacity 1s;
    }
    .itemTitle {
        position: absolute;
        bottom: 0;
        left: 0;
        width: 208px;
        height: 36px;
        border: 1px solid rgba(51, 51, 51, 0);
        -webkit-transition: opacity 1s;
        -moz-transition: opacity 1s;
        -o-transition: opacity 1s;
        border-top: 0;
        padding: 10px;
        background: rgba(255, 255, 255, 0.5);
    }
    .itemTitle p, .itemTitle span, .itemTitle a {
        text-transform: uppercase;
    }
    .itemTitle a {
        color: #003f75;
        text-decoration: none;
        display: block;
    }
    .itemTitle span {
        color: #a20000;
    }
    .view p  { top: 5px; margin: 0 10px 0 0; }
    .view p,
    .view a {
        float: left;
        display: inline-block;
        text-decoration: none;
        position: relative;
    }
    .icon-grid {
        background: url("https://webdevtrick.com/wp-content/uploads/grid-view.png") no-repeat 0 0;
        height: 16px;
        width: 16px;
        top: 7px;
    }
    .icon-list {
        background: url("https://webdevtrick.com/wp-content/uploads/list-view.png") no-repeat 0 0;
        height: 32px;
        width: 32px;
    }
</style>

</head>
