// the toggle relation in relationEditBox

console.log("in toggle.js");
// console.log(on_or_off);
// console.log(relation);
// console.log(source_Id);
// console.log(target_Id);

var sourceId = $("#toggle-one").attr('sourceId');
var targetId = $("#toggle-one").attr('targetId');

$(function(){


  if ($("#toggle-one").prop('checked') == true) {
    displayRelation();
  } else {
    concealRelation();
  }
});


// fill the relation_exp and relation_demo with text
$(function () {
  $("#toggle-one").change(function () {
    console.log("hello world");
    if($(this).prop('checked') == true) {
      displayRelation();
     } else {
       concealRelation();
   }
  });
});

function displayRelation () {

  $("#relation_exp").html('相关系数 (1-10): <input type="number" name="points" min="1" max="10" />');
  $("#relation_demo").html("因果实例： ");
}

function concealRelation () {
  $("#relation_exp").html("");
  $("#relation_demo").html("");
}
