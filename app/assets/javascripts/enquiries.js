$(document).ready(function() {
  date = new Date();
  var today = date.getDate() + "/" + (date.getMonth() + 1) + "/" + date.getFullYear();
  $('.datepicker').datepicker({
    "autoclose": true,
    "todayHighlight": true,
    "startDate": today,
    "format": "d/m/yyyy"
  });

  $('.enquiry_notification')
    .hide()
    .slideDown(1250, function() {})
    .delay(1500)
    .slideUp(1250, function() {});
});
