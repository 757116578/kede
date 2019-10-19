class Slider {
    constructor() {
        // this.data = data;
        this.index = 0;
        this.timer = null;
        this.root = null;
    };
    init() {
        this.render();
        this.sliderBtn();
        $(".slider-img").eq(0).css("zIndex", 1);
        $(".slider-btn").eq(0).addClass("active");
        $("#banner").css("background", "rgb(248, 242, 242)")
        this.auto();
        this.click();
        this.enterStop();
    };
    render() {

        let html = "";
        let arr = ["1", "2", "3", "4","5","6"]
        for (var i = 0, len = arr.length; i < len; i++) {
            html += `<span class="slider-btn">${arr[i]}</span>`
        };
        let a = `
                
                <div class="check"><span class="check-l"> &lt;</span><span class="check-r"> &gt;</span></div>
                <div class="btn">${html}</div>`
        // this.root = $(`<div class="box">${a}</div>`);
        $(".box").append(a)
    };
    sliderBtn() {
        self = this;
        $(".slider-btn").mouseenter(function () {
            $(this).addClass("active").siblings().removeClass("active");
            let index = $(this).index();
            $(".slider-img").eq(index).css("zIndex", 1).siblings().css("zIndex", 0);
        })
    };
    animate(index) {
        let arr1 = ["rgb(248, 242, 242)", "rgb(239, 218, 189)", "rgb(234, 240, 255)", "rgb(255, 253, 242)","rgb(47, 54, 60)","rgb(243, 243, 245)"]
        $(".slider-btn").eq(index).addClass("active").siblings().removeClass("active");
        $(".slider-img").eq(index).css("zIndex", 1).siblings().css("zIndex", 0);
        $("#banner").css("background", arr1[index])
    };
    check(method) {
        if (method == "next") {
            this.index++;
            if (this.index == 6) this.index = 0;
        };
        if (method == "prev") {
            this.index--;
            if (this.index == -1) this.index = 6 - 1;
        };
        this.animate(this.index)
    };
    auto() {
        clearInterval(this.timer);
        this.timer = setInterval(() => this.check("next"), 2000);
    };
    click() {

        $(".check-l").click(() => { this.check("prev") });
        $(".check-r").click(() => { this.check("next") })
    };
    enterStop() {
        $(".box").mouseenter(() => clearInterval(this.timer));
        $(".box").mouseleave(() => this.auto());
    }
}