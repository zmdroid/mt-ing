//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function() {
  $(".sidebar_item").click(function() {
    var itemIsClosed = $(this).hasClass("closed");
    if (itemIsClosed) {
      $(this).removeClass("closed").addClass("opened");
    } else {
      $(this).removeClass("opened").addClass("closed");
    }
  });
});
