/* 整体思路：表单验证 + 图形验证码 + 手机短信验证 + 注册请求 */
//监听整个页面
$(()=>{
    
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
    });
})