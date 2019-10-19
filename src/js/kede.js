$(() => {

  //轮播图
  let oSlider = new Slider();
  oSlider.init();


  // 左边的楼层切换
  $(".k-left").children().mouseout(function () {
    $(this).removeClass("no");
  })
  $(".k-left").children().mouseenter(function () {
    $(this).addClass("no").siblings().removeClass("no");
  })


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

  //热门选项卡切换
  $(".a").mouseenter(function () {
    $(this).addClass("bac").siblings().removeClass("bac");
    let index = $(this).index();
    // $(".ka").eq(index).addClass("cu").siblings().removeClass("cu");
    $(".ka").eq(index).removeClass("cu").siblings(".ka").addClass("cu");
  })


  //秒杀选项卡
  $(".qiehuan").children().children().mouseenter(function () {
    $(this).addClass("on").siblings().removeClass("on");
    let index = $(this).index();
    $(".tuwen").eq(index).removeClass("cum").siblings(".tuwen").addClass("tuwen cum");
  })

  //楼层部分
  //楼层种类1 两个滑动图片
  //发送请求
  $.ajax({
    type: "get",
    url: "../server/floor1.php",
    dataType: "json",
    success: function (data) {
      // console.log(data);
      for (var i = 0, len = data.length; i < len; i++) {
        let mor = new Floor(data[i]);
        mor.init()
      }
    }
  });


  

  $(".wide-f-left-num>li").eq(0).addClass("on");
  var floorImgNum = 0;
  var floorImgNumT = setInterval(function () {
    floorImgNum++;
    floorImgChange();
  }, 1000);

  $(".wide-f-left-num>li").mouseenter(function () {
    var index = $(this).index();
    floorImgNum = index;
    $(".wide-f-left-changeimg").stop().animate({
      left: -(floorImgNum * 210)
    });
    $(this).addClass("on").siblings("li").removeClass("on");
    floorImgChange();
  });

  //清除定时器
  $(".wide-f-left-changeimgbox").hover(function () {
    clearInterval(floorImgNumT);
  }, function () {
    floorImgNumT = setInterval(function () {
      floorImgNum++;
      floorImgChange();
    }, 1000);
  });
  // 轮播函数
  function floorImgChange() {
    if (floorImgNum == 3) {
      $(".wide-f-left-changeimg").css({
        left: "0"
      });
      floorImgNum = 1;
    }
    $(".wide-f-left-changeimg").animate({
      left: -(floorImgNum * 210)
    });
    if (floorImgNum == 2) {
      $(".wide-f-left-num>li").eq(0).addClass("on").siblings("li").removeClass("on");
    } else {
      $(".wide-f-left-num>li").eq(floorImgNum).addClass("on").siblings("li").removeClass("on");
    }
  }

  //楼层类型2 全图片





  //地点选项卡
  //内容部分切换
  $(".ziliao-b-l").children().children().mouseenter(function () {
    $(this).addClass("no").siblings().removeClass("no");
    let index = $(this).index();
    $(this).parent().parent().siblings(".ziliao-b-r").eq(index).removeClass("xiaoshi").siblings(".ziliao-b-r").addClass("xiaoshi");
  })
  //表头部分切换
  $(".ul1").children().mouseenter(function () {
    $(this).addClass("no").siblings().removeClass("no");
    let index = $(this).index();
    $(".ziliao").eq(index).removeClass("coum").siblings(".ziliao").addClass("coum");
  })



  // 评论选项卡
  $(".review-a").mouseenter(function () {
    $(this).addClass("bac").siblings().removeClass("bac");
    let index = $(this).index();
    $(".review-ka").eq(index).removeClass("cu").siblings(".review-ka").addClass("cu");
  })





})