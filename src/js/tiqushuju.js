//第一种  //JSON.stringify(arr)
var dataitems = document.querySelectorAll('.classify_product_div .classify_product_ul li');
var arr = [];
//[{},{}]
for (var ele of dataitems) {
    var obj = {};
    if (ele.querySelector('a img')) {
        obj.src = ele.querySelector('a img').src;
    }
    if (ele.querySelector('.classify_price')) {
        obj.p1 = ele.querySelector('.classify_price').innerText;
    }
    if (ele.querySelector('.classify_name')) {
        obj.p2 = ele.querySelector('.classify_name').innerText;
    }
    if (ele.querySelector('.classify_sales')) {
        obj.p3 = ele.querySelector('.classify_sales').innerText;
    }
    if (ele.querySelector('.classify_comment')) {
        obj.p4 = ele.querySelector('.classify_comment').innerText;
    }
    // if (ele.querySelector('wide_delicacy float-left a')) {
    //     obj.mid1 = ele.querySelector('wide_delicacy float-left a').innerHTML;
    // }
    // if (ele.querySelector('wide_hot float-left a')) {
    //     obj.right1 = ele.querySelector('wide_hot float-left a').innerHTML;
    // }
    // if (ele.querySelector('.userimg img')) {
    //     obj.smallpic = ele.querySelector('.userimg img').src;
    // }
    // if (ele.querySelector('.username')) {
    //     obj.username = ele.querySelector('.username').innerHTML;
    // }
    // if (ele.querySelector('.supp')) {
    //     obj.dianzan = ele.querySelector('.supp').innerHTML;
    // }
    arr.push(obj);
}
console.log(arr);

// 第二种  //JSON.stringify(arr)
// var dataitems = document.querySelectorAll('.find_cate_content');
// var arr = [];
// //[{},{}]
// for (var ele of dataitems) {
//     var obj = {};
//     // if (ele.querySelector('.find_cate_content .find_cate_main_c')) {
//     //     obj.product = ele.querySelector('.find_cate_content .find_cate_main_c').innerHTML;
//     // }
//     // if (ele.querySelector('.find_cate_main_e')) {
//     //     obj.product = ele.querySelector('.find_cate_content .find_cate_main_e').innerHTML;
//     // }
//     if (ele.querySelector('.find_cate_main_c')) {
//         obj.biaoti = ele.querySelector('.find_cate_main_c').innerHTML;
//     }

//     if (ele.querySelector('.find_cate_main_e')) {
//         obj.title = ele.querySelector('.find_cate_main_e').innerHTML;
//     }

//     // if (ele.querySelector('.cate_text .etext')) {
//     //     obj.price = ele.querySelector('.cate_text .etext').innerHTML;
//     // }
//     arr.push(obj);
// }
// console.log(arr);