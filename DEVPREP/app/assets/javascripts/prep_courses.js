// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  var element = $("#getting-started")

  var futureDate = moment(new Date(2016, 03, 25))
  var currentDate = moment()

  var daysApart = futureDate.diff(currentDate, 'days')

  element.text(daysApart)

})
