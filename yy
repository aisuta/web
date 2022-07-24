<!DOCTYPE html>

<html>

<head>
    <meta charset='utf-8'>
    <title>学生通行码</title>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
    <meta name='keywords' content='' />
    <meta name='description' content='' />
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' />
    <meta name='format-detection' content='telephone=no' />
    <meta name='apple-mobile-web-app-capable' content='yes' />
    <meta name='apple-mobile-web-app-status-bar-style' content='black'>
    <meta name='author' content='duanliang, duanliang920.com' />
    <script src='https://cdn.staticfile.org/vue/2.2.2/vue.min.js'></script>
    <!-- <style>
        * {
            margin: 0;
            padding: 0;
        }
    </style> -->
</head>

<body>

    <div class='bluebox'>
    </div>
    <div class='mainbox' id='mainbox'>
        <div class='box1'>
            <div class='date1' id='date1'>
            </div>
            <div class='date2' id='date2'>
            </div>
            <div style='width: 95%;height: 0.5px;background-color: rgb(248, 248, 248);'></div>
            <div class='data3' style="float:left">
                信息学院&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;202020502009
            </div>
            <img class='maimg' src='images/zima.jpg'>
            <div class='data4'>
                <div>张伟</div>
                <div class='shuaxin'>刷新</div>
            </div>
        </div>
        <div class='detail'>
            <div>
                2022-02-18 00:00:00 至 2022-06-26 23:59:59
            </div>
            <div class='detail1'>
                <div class='tt1'>&nbsp;通行码类型：</div>
                <div>&nbsp;临时通行码</div>
            </div>
            <div class='detail1'>
                <div class='tt1'>&nbsp;剩余次数：</div>
                <div>&nbsp;10000</div>
            </div>
            <div class='detail1'>
                <div class='tt1'>&nbsp;第一次刷卡时间：</div>
                <div></div>
            </div>
            <div class="black1"></div>
            
        </div>
        <div class="detail2">
            <div><a class="de">通行记录</a>&nbsp;&nbsp;<a class="deline">|</a>&nbsp;&nbsp;<a class="de">普通码</a></div>
        </div>
    </div>
    <script>
        //每隔一秒进行刷新
        var int = self.setInterval('clock()', 1000);

        function clock() {
            var now = new Date();
            var month = now.getMonth() + 1;
            var day = now.getDate();
            var hour = now.getHours();
            var minute = now.getMinutes();
            var second = now.getSeconds();
            var str1 = month + '月' + regularnum(day) + '日';
            var str2 = regularnum(hour) + ':' + regularnum(minute) + ':' + regularnum(second);
            console.log(regularnum(month));


            document.getElementById('date1').innerHTML = str1;
            document.getElementById('date2').innerHTML = str2;
        }

        function regularnum(num1){
            var strnum = num1.toString();
            if(num1<10){
                strnum = '0' + strnum;
            }
            return strnum;
        }

    </script>
</body>

</html>
<style>
    body {
        height: 1920;
        width: 1080;
        background-color: rgb(248, 248, 248);
        font-family: Arial;
        margin: 0px;
    }

    .bluebox {
        width: 100%;
        height: 25%;
        background-color: rgb(250, 81, 0);
        position: absolute;
    }

    .mainbox {
        height: 100%;
        width: 100%;
        display: flex;
        z-index: 0;
        position: relative;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    .box1 {
        height: 440px;
        width: 90%;
        margin-top: 30px;
        background-color: white;
        border-radius: 10px;
        display: flex;
        flex-direction: column;
        align-items: center;
        box-shadow: 0px 0px 8px rgb(158, 152, 152);
    }

    .date1 {
        font-size: 34px;
        font-family: Source Han Sans;
        height: 33px;
        margin-top: 5px;
        font-weight: 500;
    }

    .date2 {
        font-size: 34px;
        font-weight: 500;
        font-family: Source Han Sans;
        margin-top: 8px;
        /*font-family: Arial, Helvetica, sans-serif;*/
    }

    .maimg {
        width: 80%;
        margin-top: 5px;
    }

    .data4 {
        font-size: 18px;
        display: flex;
        flex-direction: row;
    }

    .shuaxin {
        color: rgb(85, 135, 247);
        font-size: 18px;
        margin-left: 10px;
    }

    .detail {
        display: flex;
        width: 90%;
        margin-top: 10px;
        flex-direction: column;
    }

    .detail div {
        margin-top: 2px;
    }

    .detail1 {
        display: flex;
        flex-direction: row;
    }

    .tt1 {
        color: rgb(158, 152, 152);
    }
    .black1 {
        height: 100px;
    }
    .detail2 {
        /* color: rgb(85, 135, 247); */
        text-align:center;
        font-size: 18px;
        position:fixed;
        bottom: 10px;
        /*display: flex;
        flex-direction: row;*/
    }
    .de {
        color: rgb(85, 135, 247);
    }
    .deline{
        color: rgb(190, 190, 190);
    }

</style>
