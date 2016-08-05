// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  console.log('ready')
  $('input.btn.btn-success').on('click', showForm);
  $('div.well').on('submit', '#new_review', postFormListener);
});

function showForm(event) {
  event.preventDefault();
  var url = $('form.button_to').attr('action')

  $.ajax({
    url: url,
    method: 'GET'
  })
 .done(function(form){
  $('.well').prepend(form)
  $('input.btn.btn-success').hide();
  })
 .fail(function(error){
  console.log('Try Again')
 })
};

function postFormListener(event){
  console.log(event)
  event.preventDefault()
  var url = $('.new_review').attr('action')
  var data = $('form').serialize()

  $.ajax({
    url: url,
    method: 'POST',
    data: data
  })
  .done(function(data){
    $('form').hide()
    $('.well').prepend(data)
  })
  .fail(function(error){
    console.log(error)
  })
}

function postedReviewListener(){

}
