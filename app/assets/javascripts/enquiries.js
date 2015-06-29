// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  date = new Date();
  var today = date.getDate() + "/" + (date.getMonth() + 1) + "/" + date.getFullYear();
  $('.datepicker').datepicker({
    "autoclose": true,
    "todayHighlight": true,
    "startDate": today,
    "format": "d/m/yyyy"
  });
});
