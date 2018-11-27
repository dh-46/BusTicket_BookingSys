<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/dh-generalStyle.css" type="text/css" />
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
    <title>購票須知</title>
    <style type="text/css">
        /* CSS Testing */
        
        
        /* termOfUse OrderInfo CSS */
        .input-custom{
            margin-top:10px;
            margin-bottom:10px;
        }
        
        .panel-custom-center{
            padding-right:20%;
            padding-left:20%;
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
        <div class="mainContent" hidden>
            <!--Section1-->
            <div class="container container-1">
                <!-- 訂票流程 -->
                <div class="container" id="progressbar">
                    <div class="row text-center progressbar">
                        <ul class="list-inline list-group" id="progress1">
                            <li class="progressbar-item">選擇日期站點</li>
                            <li class="progressbar-item">選擇班次</li>
                            <li class="progressbar-item progressbar-selected">購票須知</li>
                            <li class="progressbar-item">選擇座位</li>
                            <li class="progressbar-item">訂票完成</li>
                        </ul>
                        <ul class="list-inline list-group" id="progress2">
                            <li class="progressbar-item">1</li>
                            <li class="progressbar-item">2</li>
                            <li class="progressbar-item progressbar-selected">3</li>
                            <li class="progressbar-item">4</li>
                            <li class="progressbar-item">5</li>
                        </ul>
                    </div>
                </div>
                <!-- 購票須知 -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-danger panel-custom materialShadow-2">
                                <div class="panel-heading panel-heading-custom">
                                    <h3 class="panel-title text-center">網路訂票同意書</h3>
                                </div>
                                <div class="panel-body">
                                    <p>注然類收以
質達求多容區事教，年人了滿交一知任古體體否在會先以關裝管是造？說些在升望。五進不夫一康火萬母？邊馬頭唱……綠象。

度了樂只嗎四山一種施到星選問知由大你；臺的道理其心期為港四。覺多心不加保，展望找變地以買源性部到只根校所，電可間說認效苦神也呢出；作張作下學會明師？於就野一情：慢要是加軍的了線，市時認長過。中不建為接定雄樹！破了聞，給功會道著學相童。

年歌想軍這部是上自。的達年升：經品信如她是上當子然有得度人的，何有的格較助此而顯深四終易成驗素案前關做安來持實林來聲面市臉朋不清團天用話裡之制……的隊全區大電利票國張對媽。家條一學一麼每角發單子英；像行為美的假到流受美馬題著自口麼收接間中，親是法比。告文高生。樹出家，合樂官成發然條後清企是行後球們動、酒致來阿來？自先沒質山的世客公本事手的水子言形上電？開市育馬任；了常男大海有，孩小寫你，位港飛中子雙想馬不好。望直地用東當語自因少了元看話然倒處寶以化傳加生地時建。

早合的們圖們交請情小？
人師務室然斯，沒人河！們效度內紀用市山說！可北數這加營！
難點新出士片投愛價就他傷化的教還，道月興列們收界月。
車導親。</p>
                                    <div class="checkbox text-center">
                                        <label><input type="checkbox" name="agreeTerm" value="true" id="agreeTermCheck"/>我同意上述條款</label>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- 輸入訂票人資訊 -->
                <form class="container" method="post" action="order4" name="order3Form" id="userInfo"  onsubmit="return checkForm()">
                    <div class="panel panel-success panel-custom materialShadow-2">
                        <div class="panel-heading panel-heading-custom">
                            <h3 class="panel-title text-center">訂票人資訊</h3>
                        </div>
                        <div class="panel-body text-center panel-input-custom panel-custom-center">
                            <div class="input-group input-custom">
                                <span class="input-group-addon " id="uid-label">身分證字號</span>
                                <input type="text" class="form-control" placeholder="請輸入您的身分證字號" aria-describedby="uid-label" name="uid" id="uidInput"
                                data-toggle="tooltip" data-placement="top" title="Tooltip on top">
                            </div>
                            <div class="input-group input-custom">
                                <span class="input-group-addon" id="orderCode-label">訂票代號</span>
                                <input type="text" class="form-control" placeholder="六位數字(建議使用手機後六碼)" aria-describedby="orderCode-label" name="orderCode" maxlength="6" id="orderCode">
                            </div>
                            <!-- <div class="input-group input-custom">
                                <span class="input-group-addon" id="verifiedCode-label">驗證碼</span>
                                <input type="text" class="form-control" placeholder="不分大小寫" aria-describedby="verifiedCode-label" name="verifiedCode">
                            </div> -->
                            
                            <div class="g-recaptcha" data-sitekey="6Le80nwUAAAAAJJFTgX9TTAHlvmxqdNaLhg6ApMw"></div>
                            
                            <div class="form-group input-custom">
                            <!--<a href="order4.html" class="btn btn-success form-control">下一步選擇座位</a>-->
                            <input type="submit" value="下一步選擇座位" class="btn btn-success form-control"/>
                        </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div id="snackbar"></div>
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
            
            // Snackbar
            function showSnackbar(message) {
                $('#snackbar').addClass('show');
                $('#snackbar').text(message);
                setTimeout(function() {
                    $('#snackbar').prop('class','');
                }, 3000);
                // setTimeout(function() { x.className = x.className.replace("show", ""); }, 3000);
            }
            
            // 動態驗證身份證字號事件
            $('#uidInput').on("focusout", function(){
                checkUid();
                console.log("focusout");
            });
            
            // 驗證是否有勾選同意
            function checkAgreement(){
                isAgree = $('#agreeTermCheck').prop('checked')
                console.log(isAgree);
                return isAgree;
            }
            
            // 驗證身份證字號方法
            function checkUid(){
                var input = $('#uidInput').val();
                
                if ( input == ''){
                    showSnackbar("請輸入您的身分證字號");
                    return false;
                } else if (!input.match('^[A-Z][1-2][0-9]{8}$')){
                    showSnackbar("身分證字號格式錯誤");
                    return false;    
                }
                
                var letters = "ABCDEFGHJKLMNPQRSTUVXYWZIO";
                var n12 = letters.indexOf(input.charAt(0))+10;
                var n1 = n12 / 10;
                var n2 = n12 % 10;
                var sum = 
                n1*1 + 
                n2*9 + 
                parseInt(input.charAt(1))*8 + 
                parseInt(input.charAt(2))*7 +
                parseInt(input.charAt(3))*6 +
                parseInt(input.charAt(4))*5 +
                parseInt(input.charAt(5))*4 +
                parseInt(input.charAt(6))*3 +
                parseInt(input.charAt(7))*2 +
                parseInt(input.charAt(8))*1 +
                parseInt(input.charAt(9))*1;
                
                if (Math.round(sum) % 10 == 0){
                    return true;
                } else{
                    // console.log('驗證失敗');
                    // snackbar("身份證字號驗證失敗, 請重新輸入");
                    return false;    
                }
            }
            
            // 驗證代碼是否符合規範
            function checkOrderCode(){
                var orderCode = $('#orderCode').val();
                if (orderCode.match('^[0-9]{6}$')) {
                    return true;
                }
                return false;
            }
            
            // 檢查表單是否正確
            function checkForm(){
                // 檢查是否同意
                if (checkAgreement()){
                    // 檢查身分證
                    if (checkUid()){
                        // 身分證正確
                        if (checkOrderCode()){
                            console.log('表單送後端驗證');
                            return true;
                        } else {
                            showSnackbar("取票代碼不符規定");
                            console.log("取票代碼不符規定");
                            return false;
                        }
                    } else {
                        // 身分錯誤
                        showSnackbar("身份證字號有誤");
                        console.log('身份證字號有誤');
                        return false;
                    }
                } else {
                    // 尚未同意
                    showSnackbar("請勾選同意書");
                    console.log('請勾選同意書');
                    return false;
                }
                return false;
            }
                     
            
            
    </script>
</body>

</html>
