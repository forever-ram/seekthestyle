
$(document).ready(function(){
  alert('within sts-admin');
  if($('.submitted-stories').length>0){
    $.get('/sts-admin/api/stories', function(r){
       console.log("here is a count: " + r.length);
    });
  }

});
