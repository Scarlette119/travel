$(function(){
  // 加载导航栏
  $("#nav-header").load("nav.html");
  //加载底部
  $("#footer").load("footer.html");
  $("#footer-top").load("footer_top.html");
   //ajax获取数据
   let data;
   var xhr = new XMLHttpRequest();
   xhr.open('get', '/route/getRouteThumb', true);
   xhr.send();
   xhr.onreadystatechange = function(){
     if(xhr.status==200&&xhr.readyState==4){
       //加载导游信息
       data = JSON.parse(xhr.responseText);
       var chtml = '';
       for(var i=0;i<data.length;i++){
         chtml += `
         <div class="col-lg-4">
         <div class="card">
           <div class="card-img-top">
             <a href="${data[i].href}"><img src="${data[i].thumb}" alt=""></a>
           </div>
           <div class="card-body">
             <div class="card-title font-20 font-weight-bold"><a href="${data[i].href}">${data[i].title}</a></div>
             <p class="font-dark-blue font-15">${data[i].subtitle}</p>
             <article class="font-12 font-light-black mt-3 word-inner">${data[i].intro}</article>
           </div>
         </div>
       </div>
         `;
       }
       $('#route-thumb').html(chtml);
     }
   }
});