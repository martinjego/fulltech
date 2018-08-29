# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require rails-ujs
#= require jquery3
#= require activestorage
#= require turbolinks
#= require_tree .
#= require popper
#= require bootstrap

$ ->
  $('.dropdown').on 'show.bs.dropdown', ->
    $(this).find('.dropdown-menu').first().stop(true, true).slideDown()
    return
  # Add slideUp animation to Bootstrap dropdown when collapsing.
  $('.dropdown').on 'hide.bs.dropdown', ->
    $(this).find('.dropdown-menu').first().stop(true, true).slideUp()
    return
