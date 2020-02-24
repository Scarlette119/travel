$(function(){
  // 加载导航栏
  $("#nav-header").load("nav.html");
  //加载底部
  $("#footer").load("footer.html");
  let data;
  let carousel={
    c1data:[],c2data:[],c3data:[],c4data:[]
  };
  var xhr = new XMLHttpRequest();
  xhr.open('get', '/info/getData', true);
  xhr.send();
  xhr.onreadystatechange = function(){
    if(xhr.status==200&&xhr.readyState==4){
      data = JSON.parse(xhr.responseText);
      for(var i=0; i<data.length; i++){
        switch(data[i].ctype){
          case('1'):
            carousel.c1data.push(data[i]);
            break;
          case('2'):
            carousel.c2data.push(data[i]);
            break;
          case('3'):
            carousel.c3data.push(data[i]);
            break;
          case('4'):
            carousel.c4data.push(data[i]);
            break;
          default:
            break;
        }
      }
      // 加载首页轮播1
      var chtml = '';
      for(var i=0;i<carousel.c1data.length;i++){
        chtml += `
        <div class="swiper-slide">
          <img src="${carousel.c1data[i].img}" alt="">
        </div>
        `;     
      }
      $('#s-w1').html(chtml);
      var swiper = new Swiper('#s-c1', {
        autoplay:{
          delay:3000
        },
        slidesPerView: 2,
        spaceBetween: 30,
        navigation: {
          nextEl: '.sbn1',
          prevEl: '.sbp1',
        },
      });
      //加载首页轮播2
      var chtml = '';
      for(var i=0;i<carousel.c2data.length;i++){
        chtml += `
        <div class="swiper-slide">
          <img src="${carousel.c2data[i].img}" alt="">
          <p class="pt-5 font-20 font-weight-bold">${carousel.c2data[i].title}</p>
          <p class="font-dark-blue pt-10">${carousel.c2data[i].subtitle}</p>
          <p class="font-13 pt-25 font-light-black">${carousel.c2data[i].intro}</p>
        </div>
        `;     
      }
      $('#s-w2').html(chtml);
      var swiper = new Swiper('#s-c2', {
        autoplay:{
          delay:3000
        },
        slidesPerView: 2,
        spaceBetween: 0,
        navigation: {
          prevEl: '.sbn2',
          nextEl: '.sbp2',
        },
      });
      //加载首页轮播3
      var chtml = '';
      for(var i=0;i<carousel.c3data.length;i++){
        chtml += `
        <div class="swiper-slide">
          <div>
            <img src="${carousel.c3data[i].img}" alt="">
            <div class="guide-intro">
              <div>
                <p class="font-mid font-weight-bold mb-2">${carousel.c3data[i].title}</p>
                <p class="word-inner font-13">${carousel.c3data[i].intro}</p>
              </div>        
            </div>
          </div>
        </div>
        `;     
      }
      $('#s-w3').html(chtml);
      var swiper = new Swiper('#s-c3', {
        autoplay:{
          delay:6000
        },
        slidesPerView: 3,
        spaceBetween: 0,
        navigation: {
          prevEl: '.sbn3',
          nextEl: '.sbp3',
        },
      });
      //加载首页轮播4
      var chtml = '';
      for(var i=0;i<carousel.c4data.length;i++){
        chtml += `
        <div class="swiper-slide">
          <img src="${carousel.c4data[i].img}" alt="">
          <div>
            <div class="c4-inner">
              <p class="font-20 text-white mb-3">${carousel.c4data[i].title}</p>
              <p class="text-15 font-dark-blue mb-4">${carousel.c4data[i].subtitle}</p>
              <p class="word-inner font-13 text-white">${carousel.c4data[i].intro}</p>
            </div>
          </div>
        </div>
        `;     
      }
      $('#s-w4').html(chtml);
      var swiper = new Swiper('#s-c4', {
        autoplay:{
          delay:5000
        },
        navigation: {
          prevEl: '.sbn4',
          nextEl: '.sbp4',
        },
      });
    }
  };
});