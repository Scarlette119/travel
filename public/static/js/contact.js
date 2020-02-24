$(function(){
  // 加载导航栏
  $("#nav-header").load("nav.html");
  //加载底部
  $("#footer").load("footer.html");
   //加载高德地图
  var map = new AMap.Map('gaode-map2', {
    zoom:12,//级别
    center: [120.2218930000,30.2166400000],//中心点坐标
  });
  AMap.plugin('AMap.ToolBar',function(){//异步加载插件
    var toolbar = new AMap.ToolBar();
    map.addControl(toolbar);
  });
  var infoWindow = new AMap.InfoWindow({ //创建信息窗体
    isCustom: true,  //使用自定义窗体
    // offset: new AMap.Pixel(16, -45)
  });
  var onMarkerClick  =  function(e) {
      infoWindow.open(map, e.target.getPosition());//打开信息窗体
      //e.target就是被点击的Marker
  } 
  var marker = new AMap.Marker({
      position: [120.2218930000,30.2166400000]
  })
  map.add(marker);
  marker.on('click',onMarkerClick);//绑定click事件
  //键盘摁下，label消失
  var labelHide=function(id,msg){
    $(`#${id}`).keydown(function(){
      $(`#${msg}`).css('display','none');
    });
  }
  //失去焦点，如果输入值不为空，显示提示信息
  var msgShow=function(id,msg){
    $(`#${id}`).blur(function(){
      if(!$(`#${id}`).val()){
        $(`#${msg}`).css('display','block');
      }
    });
  }
  labelHide('uname','uname_msg');
  labelHide('mobile','mobile_msg');
  labelHide('destination','dest_msg');
  labelHide('people','people_msg');
  labelHide('comment','comment_msg');
  msgShow('uname','uname_msg');
  msgShow('mobile','mobile_msg');
});