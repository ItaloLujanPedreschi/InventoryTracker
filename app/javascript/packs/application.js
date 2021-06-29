// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

$(document).on('turbolinks:load', function() {
    // User show page
    $('.business-tile').on('mouseenter', event => {
        $(event.currentTarget).addClass('hovering');
        $(event.currentTarget).removeClass('not-hovering');
    })

    $('.business-tile').on('mouseleave', event => {
        $(event.currentTarget).addClass('not-hovering');
        $(event.currentTarget).removeClass('hovering');
    })

    $('.add-button').on('mouseenter', event => {
        $(event.currentTarget).addClass('plus-hovering');
        $(event.currentTarget).removeClass('plus-not-hovering');
    })

    $('.add-button').on('mouseleave', event => {
        $(event.currentTarget).addClass('plus-not-hovering');
        $(event.currentTarget).removeClass('plus-hovering');
    })

    $('.link').on('mouseenter', event => {
        $(event.currentTarget).addClass('link-hover');
        $(event.currentTarget).removeClass('link-not-hover');
    })

    $('.link').on('mouseleave', event => {
        $(event.currentTarget).addClass('link-not-hover');
        $(event.currentTarget).removeClass('link-hover');
    })


    // Business show page



});