        /* 监听页面的加载 */
        $(() => {
            $("#phoneID").val("17878192819");
            $("#passwordID").val("123456");
            /* 添加点击事件 */
            $(".login-head").children("span").click(function () {
                $(this).addClass("active").siblings().removeClass("active");
                let index = $(this).index();
                $(".content").children().eq(index).addClass("current").siblings().removeClass("current");
            })
            /* 登录按钮的点击事件 */
            $("#loginBtn").click(function () {
                let phoneVal = $("#phoneID").val();
                let passwordVal = $("#passwordID").val();
                $.ajax({
                    type: "post",
                    url: "http://127.0.0.1/keshi/src/server/login.php",
                    data: `phone=${phoneVal}&password=${passwordVal}`,
                    dataType: "json",
                    success: function (response) {
                        /* 登录成功 */
                        if (response.status == "success") {
                            /* 跳转到首页 */
                            window.location.href = "http://127.0.0.1/keshi/src/html/index.html";
                        } else {
                            /* 注册失败： */
                            alert(response.msg);
                        }
                        /* 登录失败 */
                    }
                });
            })
        })