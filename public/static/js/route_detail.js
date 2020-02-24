$(function(){
  // 加载导航栏
  $("#nav-header").load("nav.html");
  //加载底部
  $("#footer").load("footer.html");

  
  //ajax获取数据
  let data;
  let urlParams = new URLSearchParams(location.search);
  let rid = urlParams.get('rid');
  var xhr = new XMLHttpRequest();
  xhr.open('get', `/route/getRouteDetail/${rid}`, true);
  xhr.send();
  xhr.onreadystatechange = function(){
  if(xhr.status==200&&xhr.readyState==4){
    data = JSON.parse(xhr.responseText);
    //加载高德地图
    var map = new AMap.Map('gaode-map', {
      zoom:15,//级别
      center: [data[0].jd,data[0].wd],//中心点坐标
      mapStyle:'amap://styles/7025627d0cd4c3a654f876ebfde17598'
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
        position: [data[0].jd,data[0].wd]
    })
    map.add(marker);
    marker.on('click',onMarkerClick);//绑定click事件
    $('#destination').html(data[0].destination);
    $('#route_intro').html(data[0].route_intro);
    $('#guide_name').html(data[0].gname);
    $('#guide_pic').html(`<img src="${data[0].guide_pic}" alt="">`);
    $('#guide_intro').html(data[0].intro);
    $('#route_distance').html(data[0].distance);
    $('#route_people').html(data[0].people);
    $('#route_duration').html(data[0].duration);
    var chtml = '';
    for(let i=0; i<data.length; i++){
      chtml += `
      <div class="col-lg-4"><img src="${data[i].route_pic}" alt=""></div>
      `;
    }
    $('#route_pic').html(chtml);
    }
  }
});
