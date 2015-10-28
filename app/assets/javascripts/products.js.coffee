# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$(window).load ->
	$('#products').isotope
	  itemSelector: '.box'
	  layoutMode: 'fitRows'
	  $('.box').css('margin-bottom',50)


$(document).ready -> 
	$('#products').isotope
	  itemSelector: '.box'
	  layoutMode: 'fitRows'
	  $('.box').css('margin-bottom',50)



