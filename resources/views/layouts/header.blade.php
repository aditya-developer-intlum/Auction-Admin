<!-- Admin Header -->       
<header class="_ad-hdr">
    <div class="_ad-hdr-top">
        <div class="_ad-hdr-left">
            <h2 class="_ad-title">@yield("menutitle","Admin Dashboard")</h2>
            
        </div>
        <div class="_ad-hdr-right">
            <!-- Notification Div  -->
            <div class="_ad-hrd-notification">
                <div class="_dropDown-btn">
                    <p class="_dropDown-text">
                        <span class="_note-icon"><img src="images/bell-icon.png" alt=""><span class="_note-num">2</span></span>
                    </p>
                    <div class="_dropDown _ad-dropDow">
                        <div class="_dropDown-hdr">Notification</div>
                        <div class="_dropDown-body text-center">
                            <ul class="_notification-List" style="height: 150px">
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Profile Div  -->
            <div class="_user-div">
                <div class="_userDiv-cont">
                    <span class="_ad-user-icon">
                        <img src="images/user-icon.jpg" alt="">
                        <span class="_userLogin"></span>
                    </span>
                    <span class="_ad-user-txt">
                        <span class="_ad-user-name _adBlue-txt">Admin</span><br>
                        <span class="_text-light-gray">Administrator</span>
                    </span>
                    <div class="_ad-user-profile">
                        <div class="_dropDown-btn">
                            <p class="_dropDown-text">
                                <span class="_note-icon"><i class="fas fa-angle-down"></i></span>
                            </p>
                            <div class="_dropDown _ad-dropDow">
                                <div class="_dropDown-hdr">Administrator</div>
                                <div class="_dropDown-body text-center">
                                    <ul class="_notification-List" style="height: 150px">
                                        <li><a href="#">My Profile</a></li>
                                        <li><a href="#">Activity</a></li>
                                        <li><a href="#">Messages</a></li>
    <li><a href="javascript::void(0)"  onclick="document.getElementById('logout').submit()">
        Log Out</a>
    </li>
                                     <form action="{{ route('logout') }}" id="logout" method="post">
                                         
                                         @csrf
                                        @method("POST")
                                     </form>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>               
</header>