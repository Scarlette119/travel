$(function(){
    // 加载导航栏
    $("#nav-header").load("nav.html");
    //加载底部
    $("#footer").load("footer.html");
    $("#footer-top").load("footer_top.html");
    //ajax获取数据
    let data;
    var xhr = new XMLHttpRequest();
    xhr.open('get', '/about/getInfo', true);
    xhr.send();
    xhr.onreadystatechange = function(){
      if(xhr.status==200&&xhr.readyState==4){
        //加载导游信息
        data = JSON.parse(xhr.responseText);
        var chtml = '';
        for(var i=0;i<data.length;i++){
          chtml += `
          <div class="col-lg-3">
            <img src="${data[i].guide_pic}" alt="">
            <div>            
              <p class="font-dark-blue font-weight-bold">${data[i].gname}</p>
              <p class="font-12 word-inner font-light-black">${data[i].intro}</p>
            </div>
          </div>
          `;
        }
        $('#guide-info').html(chtml);
      }
    }
});