<div id="home" class="top-header" style="background-color: #2e6da4; color: #ffffff;">
    <div class="container">
        <div class="top-menu">
            <span class="menu"><img src="images/nav-icon.png" alt=""/></span>
            <ul>

                <li><a class="" id="product" name="product" href="{{ url('/home') }}">Product</a></li>
                <li><a class="" id="cart" name="cart" href="{{ url('/cart') }}">Cart</a></li>
                <li><a class="" id="" name="" href="#"></a></li>
                <li><a class="" id="promocode" name="promocode" href="{{url('/promocode?page=1')}}">Promocode</a></li>
                <li><a class="" id="logout" name="logout" href="{{url('/logout')}}">Logout</a></li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $("span.menu").click(function(){
                    $(".top-menu ul").slideToggle("slow" , function(){
                    });
                });
            </script>
            <!-- script-for-menu -->
        </div>
    </div>
</div>
