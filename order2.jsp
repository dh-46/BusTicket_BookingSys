<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css" type="text/css" />
    <!--<link rel="stylesheet" href="css/datepicker/datepicker.css" type="text/css" />-->
    <!--<link rel="stylesheet" href="css/switch/bootstrap-switch.css" type="text/css" />-->
    <link rel="stylesheet" href="css/dh-generalStyle.css" type="text/css" />
    <title>選擇班次票種</title>
    <style type="text/css">
        /* CSS Testing */
        
        .align-right{
            position:relative;
            margin-right:0px;
            margin-left:70%;
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <!-- 導覽列 -->
        <nav class="navbar navbar-default  navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                    <a class="navbar-brand logo" href="index.html">
                        <span><img id="logopic" src="img/bus.svg" style="display:none"/></span>
                    </a>
                    <a class="navbar-brand" id="navtitle" style="display:none" href="index.html">
                        搭客運吧網路訂票系統
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="nav-li-a" href="order1.html">網路訂位</a></li>
                            <li><a href="stations.html">各站據點</a></li>
                            <li><a href="news.html">最新消息</a></li>
                            <li><a href="timetable.html">時刻表</a></li>
                            <li><a href="reservedQuery.html">訂位查詢</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <!-- Main Content -->
        <div class="mainContent">
            <!--Section1-->
            <div class="container container-1">
                <!-- 訂票流程 -->
                <div class="container" id="progressbar">
                    <div class="row text-center progressbar">
                        <ul class="list-inline list-group" id="progress1">
                            <li class="progressbar-item">選擇日期站點</li>
                            <li class="progressbar-item progressbar-selected">選擇班次</li>
                            <li class="progressbar-item">購票須知</li>
                            <li class="progressbar-item">選擇座位</li>
                            <li class="progressbar-item">訂票完成</li>
                        </ul>
                        <ul class="list-inline list-group" id="progress2">
                            <li class="progressbar-item">1</li>
                            <li class="progressbar-item progressbar-selected">2</li>
                            <li class="progressbar-item">3</li>
                            <li class="progressbar-item">4</li>
                            <li class="progressbar-item">5</li>
                        </ul>
                    </div>
                </div>
                <!-- 使用者輸入的資訊 -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2">
                            <div class="panel panel-primary panel-custom materialShadow-1">
                                <div class="panel-heading panel-heading-custom">
                                    <h3 class="panel-title">您的選擇</h3>
                                </div>
                                <div class="panel-body">
                                    <span style="font-size:1.5em">去程：2018/11/30 &nbsp06:00 ~ 08:59</span><br>
                                    <span style="font-size:1.5em">起站：台中車站</span><br>
                                    <span style="font-size:1.5em">訖站：台北轉運站</span><br>
                                    <div class="divider"></div>
                                    <span style="font-size:1.5em">回程：2018/12/01 &nbsp15:00 ~ 17:59</span><br>
                                    <span style="font-size:1.5em">起站：台北轉運站</span><br>
                                    <span style="font-size:1.5em">訖站：台中車站</span><br>
                                    <div class="divider"></div>
                                    <span style="font-size:1.5em">全票 1 張</span><br>
                                    <span style="font-size:1.5em" class="text-left">總金額  $540</span><br>
                                </div>
                            </div>
                        </div> 
                    </div>
                    <div class="row">
                    <!-- 選擇班次 -->
                    <form class="" method="post" action="Order3" id="form2">
                        <!-- 去程 透過後端回傳的資料決定版面6或12-->
                        <div class="col-sm-8 col-sm-offset-2">
                            <div class="panel panel-success panel-custom materialShadow-2">
                                <div class="panel-heading panel-heading-custom">
                                    <h3 class="panel-title">去程班次列表</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="list-group oneWayS">
                                        <input type="text" name="oneWaySelect" id="oneWaySelect" hidden/>
                                        <a href="javascript:radioSelect(0)" 
                                        	id="oneWayS1" 
                                        	class="list-group-item list-group-item-warning materialShadow-1" 
                                        	style="font-size:1.3em">
                                                               2018/11/20 06:00
                                                               <span class="badge" style="font-size:1em">剩餘座位 10</span>
                                                               </a>
                                        <a href="javascript:radioSelect(1)" 
                                        	id="oneWayS2" 
                                        	class="list-group-item list-group-item-warning materialShadow-1" 
                                        	style="font-size:1.3em">
                                                               2018/11/20 07:00
                                                               <span class="badge" style="font-size:1em">剩餘座位 9</span>
                                                               </a>
                                        <a href="javascript:radioSelect(2)" 
                                        	id="oneWayS3" 
                                        	class="list-group-item list-group-item-warning materialShadow-1" 
                                        	style="font-size:1.3em">
                                                               2018/11/20 08:00
                                                               <span class="badge" style="font-size:1em">剩餘座位 3</span>
                                                               </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 回程 透過後端回傳的資料決定隱藏或顯示-->
                        <div class="col-sm-8 col-sm-offset-2">
                                <div class="panel panel-danger panel-custom materialShadow-2">
                                    <div class="panel-heading panel-heading-custom">
                                        <h3 class="panel-title">回程班次列表</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="list-group returnS">
                                            <input type="text" name="returnSelect" id="returnSelect" hidden/>
                                            <a href="javascript:radioSelect(3)" 
                                                id="returnS1" 
                                                class="list-group-item list-group-item-warning materialShadow-1"
                                                style="font-size:1.3em">
                                                                2018/11/22 15:00
                                                                <span class="badge" style="font-size:1em">剩餘座位 4</span></a>
                                            <a href="javascript:radioSelect(4)" 
                                                id="returnS2" 
                                                class="list-group-item list-group-item-warning materialShadow-1"
                                                style="font-size:1.3em">
                                                               2018/11/22 16:00
                                                               <span class="badge" style="font-size:1em">剩餘座位 8</span></a>
                                            <a href="javascript:radioSelect(5)" 
                                                id="returnS3" 
                                                class="list-group-item list-group-item-warning materialShadow-1"
                                                style="font-size:1.3em">
                                                               2018/11/22 17:00
                                                               <span class="badge" style="font-size:1em">剩餘座位 5</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
	                    <div class="row">
	                        <div class="form-group col-sm-12 ">
	                            <!--<a href="order3.html" class="btn btn-primary form-control">送出查詢</a>-->
	                            <input type="submit" value="送出查詢" class="btn btn-primary form-control materialShadow-1" />
	                        </div>
	                    </div>
                    </form>
                    </div>

                </div>
            </div>
        </div>
        <!--Footer-->
        <footer class="footer">
            <div class="container text-center">
                <div class="row">
                    <div class="col-xs-12">
                        <br>
                        <span>免費客服 0800-000-000 搭客運吧 © 版權所有 Copyright © 2018 All Rights Reserved.</span>
                        <br>
                        <span>本網站為資策會養成班結訓專題作品，引用圖文若有侵犯您的著作權，煩請來信告知以利將資料移除，謝謝！</span>
                    </div>
                </div>
            </div>
        </footer>
    </div>



    <!--JS for general usage-->
    <script type="text/javascript" src="js/jquery/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap/bootstrap.js"></script>
    
    <script type="text/javascript">
            // 畫面載入動畫
            $('document').ready(function() {
                $('#logopic').toggle(1000, function() {
                    $('#navtitle').fadeIn(1000);
                });
                $('.mainContent').fadeIn(1000);
            });
            
            
            // 將用戶選擇的選項寫到隱藏欄位中
            function radioSelect(index) {
                switch (index) {
                    case 0:
                        // 把選擇的選項index寫到隱藏欄位中
                        // var answer = $('#oneWayS1').text();
                        $('#oneWaySelect').attr('value',index);
                        // Reset三個選項的底色
                        $('.oneWayS a').css('background-color', '#fcf8e3');
                        // 變更被選上的選項底色
                        $('#oneWayS1').css('background-color', '#FCEEA9');
                        console.log($('#oneWaySelect').val());
                        break;
                    case 1:
                        // var answer = $('#oneWayS2').text();
                        $('#oneWaySelect').attr('value', index);
                        $('.oneWayS a').css('background-color', '#fcf8e3');
                        $('#oneWayS2').css('background-color', '#FCEEA9');
                        console.log($('#oneWaySelect').val());
                        break;
                    case 2:
                        // var answer = $('#oneWayS3').text();
                        $('#oneWaySelect').attr('value', index);
                        $('.oneWayS a').css('background-color', '#fcf8e3');
                        $('#oneWayS3').css('background-color', '#FCEEA9');
                        console.log($('#oneWaySelect').val());
                        break;
                    case 3:
                        // var answer = $('#returnS1').text();
                        $('#returnSelect').attr('value', index);
                        $('.returnS a').css('background-color', '#fcf8e3');
                        $('#returnS1').css('background-color', '#FCEEA9');
                        console.log( $('#returnSelect').val());
                        break;
                    case 4:
                        // var answer = $('#returnS2').text();
                        $('#returnSelect').attr('value',index);
                        $('.returnS a').css('background-color', '#fcf8e3');
                        $('#returnS2').css('background-color', '#FCEEA9');
                        console.log( $('#returnSelect').val());
                        break;
                    case 5:
                        var answer = $('#returnS3').text();
                        $('#returnSelect').attr('value',index);
                        $('.returnS a').css('background-color', '#fcf8e3');
                        $('#returnS3').css('background-color', '#FCEEA9');
                        console.log( $('#returnSelect').val());
                        break; 
                }
            }
    </script>
</body>

</html>
