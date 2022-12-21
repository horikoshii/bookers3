$(function(){
  var pagescroll = $('#p-scroll');
  pagescroll.hide();

  $(window).scroll(function () {
     if ($(this).scrollTop() > 50) {
          pagescroll.fadeIn();
     } else {
          pagescroll.fadeOut();
     }
  });
  pagescroll.click(function () {
     $('body, html').animate({ scrollTop: 0 }, 800);
    return false;
  });
});