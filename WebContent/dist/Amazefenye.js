var jump = function(context) {
    $("#tips").html('当前第：' + context.option.curr + "页");
}
$(function() {
    
    /*ajax常规跳转*/
    var page = window.location.search.match(/page=(\d+)/);
    $("#page5").page({
        pages:10,
        curr:page?page[1]:1,
        jump:window.location.href.split('?')[0]+"?page=%page%"
        /*使用回调函数可以处理更复杂的逻辑
        jump:function(context, first){
            if(!first){
                window.location.href = '?page='+context.option.curr;
            }
        }        
        */
    })
})
