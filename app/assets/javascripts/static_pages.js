$(document).ready(function() {
  $(".sidebar_item").click(function() {
    var clickedItem = $(this);
    if (clickedItem.hasClass("opened")) {
      clickedItem.removeClass("opened").addClass("closed");
      clickedItem.find("img").removeClass("rotate-right").addClass("rotate-left");
      return;
     }
     var sidebarItems = $(".sidebar_item");
     for (var i = 0; i < sidebarItems.length; i++) {
       var item = $(sidebarItems[i]);
       if (item.hasClass("opened")) {
         item.removeClass("opened").addClass("closed");
         item.find("img").removeClass("rotate-right").addClass("rotate-left");
         break;
       }
     }
     if (clickedItem.hasClass("closed")) {
       clickedItem.removeClass("closed").addClass("opened");
       var img = clickedItem.find("img");
       if (img.hasClass("rotate-left")) {
         img.removeClass("rotate-left").addClass("rotate-right");
       } else {
         img.addClass("rotate-right");
       }
     }
  });
});
