<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/dh-generalStyle.css" type="text/css" />
    <title>選擇座位</title>
    <style type="text/css">
        /* CSS Testing */

        .ticketCard {
            /*border: 2px solid #    */
        }

        .firstColum{
            padding-right: 1px !important;
            padding-left: 1px !important;
        }
        
        .seatsNote {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .custom-table{
            font-size: 16px;
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
                            <li class="progressbar-item">選擇班次</li>
                            <li class="progressbar-item">購票須知</li>
                            <li class="progressbar-item progressbar-selected">選擇座位</li>
                            <li class="progressbar-item">訂票完成</li>
                        </ul>
                        <ul class="list-inline list-group" id="progress2">
                            <li class="progressbar-item">1</li>
                            <li class="progressbar-item">2</li>
                            <li class="progressbar-item">3</li>
                            <li class="progressbar-item progressbar-selected">4</li>
                            <li class="progressbar-item">5</li>
                        </ul>
                    </div>
                </div>
                <!-- 選擇座位 -->
                <div class="container">

                    <!-- 去程座位 -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-success panel-custom materialShadow-1">
                                <div class="panel-heading panel-heading-custom">
                                    <h3 class="panel-title text-center">選擇座位</h3>
                                </div>
                                
                                <div class="panel-body">
                                    <div class="container">
                                        <div class="col-sm-12 text-center">
                                            <h5 style="margin-bottom: 20px;">目前座位選擇: <span id="oneWaySeatsShow"></span></h5>
                                        </div>
                                    </div>
                                    <div class="panel panel-warning">
                                        <table class="table table-condensed table-responsive text-center">
                                            <!--3, 6, 09, 12, 15, 18, 21, 23, 27-->
                                            <!--                              26-->
                                            <!--2, 5, 08, 11, 14, 17, 20,   , 25-->
                                            <!--1, 4, 07, 10, 13, 16, 19, 22, 24-->
                                            <tr>
                                                <td class="firstColum">
                                                    <div class="btn btn-success btn-sm">車門</div>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',3)" id="A3" disabled="disabled">03</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',6)" id="A6" disabled="disabled">06</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',9)" id="A9" disabled="disabled">09</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',12)" id="A12" disabled="disabled">12</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',15)" id="A15" disabled="disabled">15</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',18)" id="A18" disabled="disabled">18</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',21)" id="A21">21</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',23)" id="A23" disabled="disabled">23</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',27)" id="A27">27</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <!--5, 8, 11, 14, 17, 20, 23, 26, 30-->
                                                <!--                              29-->
                                                <!--4, 7, 10, 13, 16, 19, 22,   , 28-->
                                                <!--3, 6, 09, 12, 15, 18, 21, 24, 27-->
                                                <td class="firstColum">
                                                    <div class="btn btn-success btn-sm seats" style="visibility: hidden;"></div>
                                                </td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',26)" id="A26" disabled="disabled">26</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="firstColum" rowspan="2" style="padding-top: 17px; background-color: #5cb85c;">
                                                    <div class="btn btn-success btn-sm seats" style="border: 0px;" disable>
                                                    駕駛<br>座位
                                                    </div>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',2)" id="A2" disabled="disabled">02</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',5)" id="A5" disabled="disabled">05</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',8)" id="A8" disabled="disabled">08</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',11)" id="A11">11</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',14)" id="A14" disabled="disabled">14</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',17)" id="A17" disabled="disabled">17</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',20)" id="A20" disabled="disabled">20</button>
                                                </td>
                                                <td>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',25)" id="A25" disabled="disabled">25</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <!--3, 6, 09, 12, 15, 18, 21, 23, 27-->
                                                <!--                              26-->
                                                <!--2, 5, 08, 11, 14, 17, 20,   , 25-->
                                                <!--1, 4, 07, 10, 13, 16, 19, 22, 24-->
                                                
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',1)" id="A1">01</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',4)" id="A4">04</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',7)" id="A7">07</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',10)" id="A10">10</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',13)" id="A13" disabled="disabled">13</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',16)" id="A16">16</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',19)" id="A19" disabled="disabled">19</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',22)" id="A22">22</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('A',24)" id="A24">24</button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 回程選座位 預設隱藏 -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-danger panel-custom materialShadow-1">
                                <div class="panel-heading panel-heading-custom">
                                    <h3 class="panel-title text-center">選擇座位(回程)</h3>
                                </div>
                                
                                <div class="panel-body">
                                    <div class="container">
                                        <div class="col-sm-12 text-center">
                                            <h5 style="margin-bottom: 20px;">目前座位選擇: <span id="returnSeatsShow"></span></h5>
                                        </div>
                                    </div>
                                    <div class="panel panel-warning">
                                        <table class="table table-condensed table-responsive text-center">
                                            <!--3, 6, 09, 12, 15, 18, 21, 23, 27-->
                                            <!--                              26-->
                                            <!--2, 5, 08, 11, 14, 17, 20,   , 25-->
                                            <!--1, 4, 07, 10, 13, 16, 19, 22, 24-->
                                            <tr>
                                                <td class="firstColum">
                                                    <div class="btn btn-success btn-sm">車門</div>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',3)" id="B3" disabled="disabled">03</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',6)" id="B6" disabled="disabled">06</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',9)" id="B9" disabled="disabled">09</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',12)" id="B12" disabled="disabled">12</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',15)" id="B15" disabled="disabled">15</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',18)" id="B18">18</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',21)" id="B21">21</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',23)" id="B23">23</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',27)" id="B27">27</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <!--5, 8, 11, 14, 17, 20, 23, 26, 30-->
                                                <!--                              29-->
                                                <!--4, 7, 10, 13, 16, 19, 22,   , 28-->
                                                <!--3, 6, 09, 12, 15, 18, 21, 24, 27-->
                                                <td class="firstColum">
                                                    <div class="btn btn-success btn-sm seats" style="visibility: hidden;"></div>
                                                </td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',26)" id="B26" disabled="disabled">26</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="firstColum" rowspan="2" style="padding-top: 17px; background-color: #5cb85c;">
                                                    <div class="btn btn-success btn-sm seats" style="border: 0px;" disable>
                                                    駕駛<br>座位
                                                    </div>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',2)" id="B2" disabled="disabled">02</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',5)" id="B5" disabled="disabled">05</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',8)" id="B8" disabled="disabled">08</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',11)" id="B11" disabled="disabled">11</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',14)" id="B14" disabled="disabled">14</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',17)" id="B17" disabled="disabled">17</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',20)" id="B20" disabled="disabled">20</button>
                                                </td>
                                                <td>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',25)" id="B25">25</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <!--3, 6, 09, 12, 15, 18, 21, 23, 27-->
                                                <!--                              26-->
                                                <!--2, 5, 08, 11, 14, 17, 20,   , 25-->
                                                <!--1, 4, 07, 10, 13, 16, 19, 22, 24-->
                                                
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',1)" id="B1" disabled="disabled">01</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',4)" id="B4" disabled="disabled">04</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',7)" id="B7" disabled="disabled">07</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',10)" id="B10" disabled="disabled">10</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',13)" id="B13" disabled="disabled">13</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',16)" id="B16" disabled="disabled">16</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',19)" id="B19" disabled="disabled">19</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',22)" id="B22" disabled="disabled">22</button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm" onclick="javascript:chooseSeat('B',24)" id="B24" disabled="disabled">24</button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 訂票資訊確認 -->
                <form class="container" method="post" action="Order5" id="userInfo">
                    <input type="text" name="oneWaySeatsChoices" id="oneWaySeatsChoices" hidden/>
                    <input type="text" name="returnSeatsChoices" id="returnSeatsChoices" hidden/>
                    <div class="panel panel-primary panel-custom materialShadow-1">
                        <div class="panel-heading panel-heading-custom">
                            <h3 class="panel-title text-center">訂票資訊確認</h3>
                        </div>
                        <div class="panel-body text-center panel-custom">
                            <div class="container ticketCard">
                                <div class="col-sm-8 col-sm-offset-2">
                                        <table class="table text-center table-responsive materialShadow-2 custom-table" style="background-color: #fcf8e3;">
                                            <!-- <tr>
                                                <th colspan="4" class="text-center danger">來回</th>
                                            </tr> -->
                                            <tr>
                                                <th class="text-center">票種</th>
                                                <td colspan="3">來回票</td>
                                            </tr>
                                            <tr>
                                                <th class="text-center">去程日期</th>
                                                <td colspan="3">2018/11/30</td>
                                            </tr>
                                            <tr>
                                                <th class="text-center">乘車時間</th>
                                                <td colspan="3">06:00</td>
                                            </tr>
                                            <tr>
                                                <th class="text-center">上車站</th>
                                                <td colspan="3">0006-台中車站</td>
                                            </tr>
                                            <tr>
                                                <th class="text-center">下車站</th>
                                                <td colspan="3">0001-台北轉運站</td>
                                            </tr>
                                            <tr>
                                                <th class="text-center">回程日期</th>
                                                <td colspan="3">2018/12/01</td>
                                            </tr>
                                            <tr>
                                                <th class="text-center">乘車時間</th>
                                                <td colspan="3">17:00</td>
                                            </tr>
                                            <tr>
                                                <th class="text-center">票券數量</th>
                                                <td>全票：1</td>
                                                <!--<td>半票</td>-->
                                                <!--<td>優待票</td>-->
                                            </tr>
                                            <tr>
                                                <th class="text-center">總金額</th>
                                                <td colspan="3">$540</td>
                                            </tr>
                                        </table>
                                </div>
                            </div>
                            <div class="container">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <div class="col-sm-6">
                                        <a href="order1.html">
                                            <a href="order1.html" class="btn btn-danger col-sm-12">重新訂票</a>
                                            <!--<button type="button" class="btn btn-danger col-sm-12" onclick="">重新訂票</button>-->
                                        </a>
                                    </div>
                                    <div class="col-sm-6">
                                        <a href="order5.html" class="btn btn-success col-sm-12">確認送出</a>
                                        <!--<input type="submit" value="確認送出" class="btn btn-success col-sm-12"></input>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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
        $('document').ready(function() {
            $('#logopic').toggle(1000, function() {
                $('#navtitle').fadeIn(1000);
            });
            $('.mainContent').fadeIn(1000);

        });

        function debug() {
            alert('debug');
        }
        

        // 目前選擇座位字串陣列
        var oneWaySeatsNum = '';
        var returnSeatsNum = '';

        // 選擇座位
        function chooseSeat(type,seatNum){
            if (type == "A"){
                // 去程座位 (最多選四個)
                if (oneWaySeatsNum.split(",").length <= 4) {
                    if(!oneWaySeatsNum.includes(seatNum+'')) {
                        oneWaySeatsNum = oneWaySeatsNum + seatNum + ',';
                        var answer = oneWaySeatsNum.substring(0, oneWaySeatsNum.length-1);
                        $('#oneWaySeatsChoices').prop('value',answer);
                        $('#oneWaySeatsShow').text(answer);
                        $('#A'+seatNum).prop('disabled',true);
                        console.log(type + " : " + seatNum);
                    }                   
                } else {
                    for (i=0; i<4;i++){
                        var seatArray = oneWaySeatsNum.split(',');
                        $('#A'+seatArray[i]+'').prop('disabled',false);
                    }
                    oneWaySeatsNum = '';
                    $('#oneWaySeatsChoices').prop('value','');
                    $('#oneWaySeatsShow').text('');
                }
               
            } else {
                // 回程座位
                if (returnSeatsNum.split(",").length <= 4){
                    if (!returnSeatsNum.includes(seatNum+'')) {
                        returnSeatsNum = returnSeatsNum + seatNum + ',';
                        var answer = returnSeatsNum.substring(0, returnSeatsNum.length-1);
                        $('#returnSeatsChoices').prop('value',answer);
                        $('#returnSeatsShow').text(answer);
                        $('#B'+seatNum).prop('disabled',true);
                        console.log(type + " : " + seatNum);
                    }
                } else{
                    for (i=0; i<4;i++){
                        var seatArray = returnSeatsNum.split(',');
                        $('#B'+seatArray[i]+'').prop('disabled',false);
                    }
                    returnSeatsNum = '';
                    $('#returnSeatsChoices').prop('value','');
                    $('#returnSeatsShow').text('');
                }
            }
            
        }
        
        
    </script>
</body>

</html>
