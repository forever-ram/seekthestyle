$(document).ready(function(){


  if($('.main-header').length > 0){
    alert('within main-header');
    var source   = $("#main-header-hbr").html();
    var template = Handlebars.compile(source);
    var frag=template();
    $('.main-header').html(frag);
  }

    if($('.stories-list').length > 0){
    $.get('/sts/v1/api/stories', function(r){
      var frag="";
      var source   = $("#stories-list-hbr").html();
      var template = Handlebars.compile(source);
      $.each(r, function(index, date){
        console.log(date);
        frag+= template(date);
      });
      $('.stories-list').html(frag);
    });
  }


  $('body').on('click', '.show-comments', function(){
    var story_id=$(this).attr('data-story-id');
    alert('you are in .show-comments with ' + story_id);
  });

  $('body').on('click', '.submit_story', function(){
    alert('wanting to submit story');
  });

  $('body').on('click','.show_comments', function(){
    alert('about to show comments');
  });




});