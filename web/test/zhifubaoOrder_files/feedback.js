


//反馈表单提交
$(document).ready(function(){
	$('#feedbackform').submit(function(){ 
		$('#feedbackform').ajaxSubmit({
			target: 'div#notice',
			url: PDV_RP+'feedback/post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("你的订购信息已提交成功，我们会尽快与你联系按排发货，感谢您的支持！","");
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').show();
					$().setBg();
				}
			}
		}); 
       return false; 

   }); 
});


//全站反馈表单提交
$(document).ready(function(){
	$('#feedbacksmallform').submit(function(){ 
		$('#feedbacksmallform').ajaxSubmit({
			target: 'div#notice',
			url: PDV_RP+'feedback/post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("你的订购信息已提交成功，我们会尽快与你联系按排发货，感谢您的支持！","");
				}else{
					$('div#notice').hide();
					alert(msg);
				}
			}
		}); 
       return false; 

   }); 
});


