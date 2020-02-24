var is_name = 0;
var is_mobile = 0;
var mobile_checked = 0;
function check_name(){
  if(!$('#uname').val()){
    $('#uname_error').css('display','block');
    is_name = 0;
  }else{
    $('#uname_error').css('display','none');
    is_name = 1;
  }
}
function check_mobile(){
  if(!$('#mobile').val()){
    $('#mobile_error').html(`<i class="fa fa-exclamation-triangle mr-1" aria-hidden="true"></i>这是一个必填项哦`);
    $('#mobile_error').css('display','block');
    is_mobile = 0;
  }
  else if($('#mobile').val().search(/^1[3-9]\d{9}$/i)==-1){
    $('#mobile_error').html(`<i class="fa fa-exclamation-triangle mr-1" aria-hidden="true"></i>请填写正确的手机格式`);
    $('#mobile_error').css('display','block');
    is_mobile = 1;
    mobile_checked = 0;
  }
  else{
    $('#mobile_error').css('display','none');
    is_mobile = 1;
    mobile_checked = 1;
  }
}
function send_msg(){
  if(!is_name){
    $('#name_error').css('display','block');
  }
  if(!is_mobile){
    $('#mobile_error').css('display','block');
  }
  if(is_mobile&&!mobile_checked){
    $('#mobile_error').css('display','block');
  }
  if(is_mobile&&is_name&&mobile_checked){
    var uname = $('#uname').val();
    var mobile = $('#mobile').val();
    var destination = $('#destination').val();
    var people = $('#people').val();
    var comment = $('#comment').val();
    var xhr = new XMLHttpRequest();
    xhr.open('post', '/user/signUp', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    var formdata = `uname=${uname}&mobile=${mobile}&destination=${destination}&people=${people}&comment=${comment}`;
    xhr.send(formdata);
    xhr.onreadystatechange = function(){
      if(xhr.status==200&&xhr.readyState==4){
        if(xhr.responseText=='suc'){
          $('.commit-info').fadeIn();
          setTimeout(function(){
            $('.commit-info').fadeOut(1000);
            window.location.reload();
          }, 2000);
        }
      }
    }
  }
}