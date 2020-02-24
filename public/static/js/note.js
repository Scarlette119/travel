$(function(){
  // 加载导航栏
  $("#nav-header").load("nav.html");
  //加载底部
  $("#footer").load("footer.html");
  //ajax获取数据
  let data;
  var xhr = new XMLHttpRequest();
  xhr.open('get', '/note/getNotes', true);
  xhr.send();
  xhr.onreadystatechange = function(){
    if(xhr.status==200&&xhr.readyState==4){
      //加载导游信息
      data = JSON.parse(xhr.responseText);
      console.log(data);
      var chtml = '';
      var chtml2 = '';
      for(var i=0;i<data.length;i++){
        chtml += `
        <div class="media">
            <div class="imgBox">
              <img src="${data[i].thumb}" alt="">
            </div>
            <div class="media-body bg-white">
              <p class="font-18 font-dark-black font-weight-bold">${data[i].title}</p>
              <p class="font-12 font-dark-blue">发布日期：${data[i].rdate}</p>
              <article class="word-inner font-13 font-light-black">${data[i].intro}</article>
            </div>
          </div>
        `;
        if(data[i].thumb_s){
          chtml2 += `
            <div class="media">
            <a href="${data[i].href}"><img src="${data[i].thumb_s}" alt=""></a>
            <div class="media-body pl-3">
              <p><a href="" class="font-14 font-dark-black">${data[i].title}</a></p>
              <p class="font-12 font-white-gray">发布日期：${data[i].rdate}</p>
              <div class="line"></div>
            </div>
          </div>
          `;
        }
        else continue;
      }
      $('#notes-list').html(chtml);
      $('#notes').html(chtml2);
    }
  }
});