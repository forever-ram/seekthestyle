$(document).ready(function(){

  if($('.stories-list').length > 0){
    alert('you are in .stories-list');
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

});