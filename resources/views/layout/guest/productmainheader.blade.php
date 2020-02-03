<div id="home" class="top-header" style="background-color: #2e6da4; color: #ffffff;">
    <div class="container" style="background-color: #2e6da4; color: #ffffff;">
        <div class="top-menu">
            <span class="menu"><img src="images/nav-icon.png" alt=""/></span>
            <ul style="">

                <li><a class="" href="{{url('login')}}">Sign In</a></li>
                <li><a class="" href="{{url('register')}}">Cart</a></li>


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
