$(document).ready(function() {
  date = new Date();
  var tomorrow = (date.getDate() + 1) + "/" + (date.getMonth() + 1) + "/" + date.getFullYear();
  $('.datepicker').datepicker({
    "autoclose": true,
    "todayHighlight": true,
    "startDate": tomorrow,
    "format": "d/m/yyyy"
  });

  $('.enquiry_notification')
    .hide()
    .slideDown(850, function() {})
    .delay(1500)
    .slideUp(850, function() {});

  $('.input_error_text').hide().slideDown(1000, function() {});
});
