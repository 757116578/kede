/* 整体思路：表单验证 + 图形验证码 + 手机短信验证 + 注册请求 */
//监听整个页面
$(() => {
    //测试数据
    $("#phoneID").val("17878192819");
    $("#passwordID").val("123456");
    $(".phone-ma").val("999");


    //手机号码
    $("#phoneID").focus(function () {
        $(this).parents("#phone").siblings("#no").eq(0).text("");
    })
    $("#phoneID").blur(function () {
        let val = $(this).val().trim();
        if (val.length == 0) {
            $(this).parents("#phone").siblings("#no").eq(0).text("手机号不能为空");
        } else if (/^1[3-9]\d{9}$/.test(val)) {
            $(this).parents("#phone").siblings("#no").removeClass("yes");
            $(this).parents("#phone").siblings("#no").eq(0).text("");
        } else {
            $(this).parents("#phone").siblings("#no").addClass("yes");
            $(this).parents("#phone").siblings("#no").eq(0).text("手机号码不正确");
        }
    })
   
    //密码
    $("#passwordID").focus(function () {
        $(this).parents("#password").siblings("#no").eq(3).text("");
    })
    $("#passwordID").blur(function () {
        let val = $(this).val().trim();
        if (val.length == 0) {
            $(this).parents("#password").siblings("#no").eq(3).text("密码不能为空");
        } else if (/^[0-9a-zA-Z]{6,10}$/.test(val)) {
            $(this).parents("#password").siblings("#no").eq(3).text("");
        } else {
            $(this).parents("#password").siblings("#no").eq(3).text("密码格式不正确");
        }
    })

    /* 集成图像验证码 */
    let captcha1 = new CaptchaMini({
        fontSize: 30,
        length: 5,
        content: "adshdfsnf234j35uetege5",
        lineNum: 3,
        dotNum: 20
    });
    let imgCode;
    captcha1.draw(document.querySelector('#captcha'), r => {
        console.log("验证码 = " + r);
        imgCode = r;
        $(".tuma").val(imgCode);//测试数据
    });
    //判验证码
    $(".tuma").focus(function () {
        $(this).parents("#tuma").siblings("#no").eq(1).text("");
    })
    $(".tuma").blur(function () {
        let val = $(this).val().trim();
        if (val.length == 0) {
            $(this).parents("#tuma").siblings("#no").eq(1).text("验证码不能为空");
        } else if (imgCode==val) {
            $(this).parents("#tuma").siblings("#no").eq(1).text("");
        } else {
            $(this).parents("#tuma").siblings("#no").eq(1).text("验证码输入不正确");
        }
    })


    /* 给手机号码发送短信： */
    /* 思路：给按钮添加点击事件，当点击按钮的时候，检查手机号码是否正确，如果手机号码正确，那么就短信，如果不正确那 */
    let randomNumber;

    function getRandom(min, max) {
        return parseInt(Math.random() * (max - min + 1)) + min
    }

    randomNumber = 999;
    $("#msgCodeBtn").click(function () {
        $("#phoneID").trigger("blur");
        let flag = $("#phone").siblings("#no").eq(0).hasClass("form-group-error");
        /* 如果flag的值是flase,那么我们就调用第三方平台发请求 发短信 */
        if (flag) return;
        // randomNumber = getRandom(1000, 9999);
        // randomNumber = 999;
        $.ajax({
            type: 'post',
            url: 'http://route.showapi.com/28-1',
            dataType: 'json',
            data: {
                "showapi_appid": '91032', //这里需要改成自己的appid
                "showapi_sign": 'd57b19c8d2d44aef94aee464768a38d8', //这里需要改成自己的应用的密钥secret
                "mobile": $("#phoneID").val(),
                "content": `{"name":"文顶顶","code":${randomNumber},"minute":"3","comName":"脑子进水集团"}`,
                "tNum": "T150606060601",
            },
            success: (result) => console.log(result)
        });
    });

 /* 注册按钮的处理： */
    /* 思路：检查表单验证通过 && 图像验证码 && 手机短信验证码 && 是否勾选协议  把页面数据作为参数提交给服务器： */
    $("#registerBtn").click(function() {


        $("#phoneID").trigger("blur");
        $("#passwordID").trigger("blur");
        $("#passwordB").trigger("blur");

        

        if ($(".tuma").val() != imgCode) {
            alert("图形验证码不正确!");
            return;
        }

        // console.log($("#msgCode").val(), "++", randomNumber);

        if ($(".phone-ma").val() != randomNumber + "") {
            alert("手机验证码不正确!");
            return;
        }

        if (!$("#protocol").is(":checked")) {
            alert("请阅读并同意注册协议");
            return;
        }

        /* 发请求给服务器  注册： */
        $.ajax({
            type: "post",
            url: "../server/register.php",
            data: `
            &phone=${$("#phoneID").val()}
            &password=${$("#passwordID").val()}
            `,
            dataType: "json",
            success: function(response) {
                /* 注册成功： */
                console.log(response, response.status);

                if (response.status == "ok") {
                    console.log("++++");

                    /* 跳转到首页 */
                    window.location.href = "http://127.0.0.1/keshi/src/html/login.html";
                } else {
                    /* 注册失败： */
                    alert(response.msg);
                }
            }
        });



    })











})