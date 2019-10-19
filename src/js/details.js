$(() => {
    //截取由列表页跳转过来详情页面后的链接中需要的东西
    var lstr = decodeURI(location.search).slice(1);
    var zhtml = "";
    var obj = {};
    var arr = lstr.split("&");
    for (var i = 0; i < arr.length; i++) {
        var arr2 = arr[i].split("=");
        obj[arr2[0]] = arr2[1];
    }
    console.log(obj);


    var ahtml = "";
    ahtml += `<li><img src="${obj.src}"></li>
    `;
    $(".exzoom_img_ul").html(ahtml);

    var bhtml = "";
    bhtml += `
    <p class="id">${obj.p2}</p>
    `;
    $(".you").html(bhtml);


    $("#exzoom").exzoom({
        autoPlay: false,
    }); //方法调用，务必在加载完后执行




    // 右边的楼层，切返回顶部
    $(".k-right").children().mouseout(function () {
        $(this).removeClass("no");
    })
    $(".k-right").children().mouseenter(function () {
        $(this).addClass("no").siblings().removeClass("no");
    })
    //返回顶部
    $(".k-right").children().eq(5).click(function () {
        $("html,body").animate({
            scrollTop: 0
        })
    })

    // nav显示隐藏  
    $(".span1").hover(function () {
        $(".tab").css("display", "block")
    }, function () {
        $(".tab").css("display", "none")
    });

    $("#g").click(function () {
        window.location.href = ("./car.html");
        })


})