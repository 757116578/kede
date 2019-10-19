class Floor {
    constructor(data) {
        this.data = data;
    }
    init() {
        this.render();
    }
    render() {
        //创建头部的标签
        let h1 = JSON.parse(this.data.hmid1).map((ele) => `<a href="javascript:;">${ele}</a><span>|</span>`).join("");
        let h2 = JSON.parse(this.data.hr1).map((ele) => `<a href="javascript:;">${ele}</a><span>|</span>`).join("");
        //楼头部分
        let html1 = `<li class="wide-f-title-left">${this.data.name}</li>
        <li class="wide-f-title-mid">${this.data.hmid}：<span>|</span>${h1}</li>
        <li class="wide-f-title-right">${this.data.hr}：<span>|</span>${h2}</li>
        <li class="wide-f-title-more"><a href="javascript:;">更多<i class="iconfont icon-jiantouyou"></i></a></li>
        `;
        // 左侧
        let l1 = JSON.parse(this.data.Lsrc1).map((ele) => `<li><img src="${ele}" alt=""></li>`).join("");
        let l2 = JSON.parse(this.data.hot).map(function (ele) {
            return `<li><img src="${ele.s}" alt=""><a href="javascript:;">${ele.n}</a><pclass="hotgoods-price">${ele.p1}<span>${ele.p2}</span></p></li>`
        }).join("");
        let html2 = `
        <div class="wide-f-left-changeimgbox">
            <ul class="wide-f-left-num">
                <li></li>
                <li></li>
            </ul>
            <ul class="wide-f-left-changeimg">${l1}</ul>
        </div>
        <div class="hotgoods-line">
            <div class="hotgoods-line-title">
                HOT热销商品排行
            </div>
            <ul class="hotgoods-line-ul">${l2}</ul>
        </div>`;
        //右边
        let r1 = JSON.parse(this.data.r).map(function (ele) {
            return `
            <li class="wide-f-right-items">
                    <img src="${ele.s}" alt="" class="change-left">
                    <p class="wide-right-items-price">${ele.p1}</p>
                    <p class="wide-right-items-name">${ele.p2}</p>
                    <p class="wide-right-items-sales">${ele.p3}</p>
                </li>
            `
        }).join("");
        let html3 = `<ul class="floor">${r1}<ul>`;
        //最后结果
        let html = `
        <div class="wide-f-main" id="floor1">
        <ul class="wide-f-title">${html1}</ul>
          <div class="wide-f-left">${html2}</div>
          <div class="wide-f-right">${html3}<div>
        </div>
        
          `;
        $("#wide-f-main").append(html);
    }
}