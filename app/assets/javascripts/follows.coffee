# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('.users-show').on 'ajax:success','.follow', (e, data, status, xhr) ->
    $(e.target).data('method','delete')
    $(e.target).removeClass('follow')
    $(e.target).addClass('unfollow')
    $(e.target).find('i').removeClass('btn-follow')
    $(e.target).find('i').addClass('btn-unfollow')
  $('.users-show').on 'ajax:error','.follow', (e, data, status, xhr) ->
    Materilize.toast('Erro follow',400,'red')

  $('.users-show').on 'ajax:success','.unfollow', (e, data, status, xhr) ->
    $(e.target).data('method','post')
    $(e.target).removeClass('unfollow')
    $(e.target).addClass('follow')
    $(e.target).find('i').removeClass('btn-unfollow')
    $(e.target).find('i').addClass('btn-follow')

  $('.users-show').on 'ajax:error','.unfollow', (e, data, status, xhr) ->
    Materilize.toast('Erro unfollow',400,'red')