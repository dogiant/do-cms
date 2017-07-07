/* Write here your custom javascript codes */
//手机端判断各个平台浏览器及操作系统平台

function isMobile(){

  if(/android/i.test(navigator.userAgent)){

      //document.write("This is Android'browser.");//这是Android平台下浏览器
      return true;

  }

  if(/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)){

      //document.write("This is iOS'browser.");//这是iOS平台下浏览器
      return true;

  }

  if(/Linux/i.test(navigator.userAgent)){

      //document.write("This is Linux'browser.");//这是Linux平台下浏览器
	
  }

  if(/Linux/i.test(navigator.platform)){

      //document.write("This is Linux operating system.");//这是Linux操作系统平台

  }

  if(/MicroMessenger/i.test(navigator.userAgent)){

      //document.write("This is MicroMessenger'browser.");//这是微信平台下浏览器
      return true;

  }

	return false;
}

jQuery(document).ready(function() {
	
	$("#search").click(function(){
		var ptype = $("#ptype").val();
    	$.ajax({
            type: 'GET',
            url: "/console/data/product_search.do",
            async: false,
            data:{"ptype":ptype,"apiAccess":true},
            contentType: "application/json",
            dataType:"json",
            cache:false,
            success: function(data) {
                if(data.success){
                	if(data.search){
                		location.href="http://www.agertech.com.cn/product.html#;key="+ptype;
                	}else{
                		location.href="http://www.agertech.com.cn/product.html#;cat="+data.cat+";subCat="+data.subCat+";ptype="+ptype;
                	}
                }else{
                	alert(data.msg);
                }
            },
            error: function(e) {
               console.log(e.message);
               alert("查无数据");
            }
        }); 
		

    });
});

