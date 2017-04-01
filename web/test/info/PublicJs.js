//加载框
var Actionload
function ALoading()
{
    Actionload = $.layer({
    type: 3,
    title:'ceshi ',
    loading: {
            type: 2
        }
    });
}


//信息提示框
var Msgload
function AMsg(type,words)
{
    Msgload = $.layer({
    type: 0,
    title:'提示',
    dialog: {
            type: type,
            msg: words
        }
    });
}

//只能输入数字
function check_validate1(value){
    //定义正则表达式部分
    var reg = /^\d+$/;
    if( value.constructor === String ){
        var re = value.match( reg );
        return true;
    }
    return false;
}