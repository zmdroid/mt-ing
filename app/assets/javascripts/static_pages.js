// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $(".sidebar_item").click(function() {
    var clickedItem = $(this);
    if (clickedItem.hasClass("opened")) {
      clickedItem.removeClass("opened").addClass("closed");
      return;
     }
     var sidebarItems = $(".sidebar_item");
     for (var i = 0; i < sidebarItems.length; i++) {
       var item = $(sidebarItems[i]);
       if (item.hasClass("opened")) {
         item.removeClass("opened").addClass("closed");
         break;
       }
     }
     if (clickedItem.hasClass("closed")) {
       clickedItem.removeClass("closed").addClass("opened");
     }
  });

  $(function() {
    $("#datetime-picker").datetimepicker({
      format: 'D/MM/YYYY'
    });
  });
});
