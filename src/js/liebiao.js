$(() => {
  new Promise(function (resolve, reject) {
    $.ajax({
      type: "get",
      url: "../server/getPageCount.php",
      dataType: "json",
      success: (data) => {
        let res = "";
        for (let i = 0; i < data.count; i++) {
          res += `<a href="javascript:;">${i + 1}</a>`
        }
        $("#page").html(res);
        $("#page").children().eq(0).addClass("active");

        resolve();
      }
    });
  }).then(function () {
    getDataWithPage(1, 0);
  })
  /* type ==0 默认排序  id */
  /* type ==1 升序排列  价格 */
  /* type ==2 降序排列  价格 */
  function getDataWithPage(page, type) {
    $.ajax({
      type: "get",
      url: "../server/getGoodsData.php",
      data: `page=${page}&sortType=${type}`,
      dataType: "json",
      success: function (data) {
        renderUI(data);

        
        
        var aLis = document.querySelectorAll(".xuanzhong");
        for (var i = 0; i < aLis.length; i++) {
          aLis[i].index = i;
          aLis[i].onclick = function () {
            var good = data[this.index];
            var xhtml = "";
            for (var h in good) {
              xhtml += h + "=" + good[h] + "&";
            }
            console.log(xhtml);
            location.href = "details.html?" + xhtml.slice(0, -1);

          }
        }

      }
    });
  }
  // 列表渲染
  function renderUI(data) {
    // <a href="./details.html"></a>
    let html = data.map((ele) => {
      return `
        <li class="item" data-id=${ele.good_id}>
        <div class="xuanzhong">
        <img src="${ele.src}"
            alt="">
        <p class="p1">${ele.p1}</p>
        <p class="p2">${ele.p2}</p>
        <p class="p3">${ele.p3.substr(0,30)}</p>
        <p class="p4">${ele.p4}</p>
        </div>
        <div class="get">
            <button class="button1">加入购物车</button>
            <span class="span-x">收藏</span>
        </div>
        
    </li>
        `
    }).join("");
    $(".classify_product_ul").html(html);
  }

  /* 先给页面添加点击事件，当点击的时候获取页码值，根据该值发送网络请求 */
  $("#page").on("click", "a", function () {
    getDataWithPage($(this).text());
    $(this).addClass("active").siblings().removeClass("active");
  })
  /* 处理排序 */
  $(".span1-1").click(function () {
    getDataWithPage(1, $(this).index());
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

  // nav显示隐藏  
  $(".span1").hover(function () {
    $(".tab").css("display", "block")
  }, function () {
    $(".tab").css("display", "none")
  });


   /* 实现点击添加商品到购物车的功能 */
   $(".classify_product_ul").on("click",".button1 ", function() {
    /* 获取当前商品的ID */
    let good_id = $(this).parents("li").data().id;
    /* 发送网络请求把当前数据添加到购物车表中 */
    /* 数据库表 cart_id  good_id  num isChecked */
    /* 添加数据： */
    /* 删除数据： */
    /* 更新数据： */

    $.ajax({
        url: "../server/cart.php",
        data: { type: "add", good_id: good_id },
        dataType: "json",
        success: function(response) {
            if (response.status == "success") {
                $(".cart_total").text($(".cart_total").text() * 1 + 1);
            }
        }
    });
})

/* 发请求获取购物车中商品的数量 */
$.ajax({
    url: "../server/getTotalCount.php",
    dataType: "json",
    success: function({ total }) {
        // console.log(total);
        $(".cart_total").text(total);
    }
});

/* 打开购物车页面 */
// $("#g").click(() => window.location.href = "./cart.html");
$("#g").click(function () {
  window.location.href = ("./car.html");
  })


})