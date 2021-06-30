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
    $('.sign-up').on('mouseenter', event => {
        $(event.currentTarget).addClass('sign-up-hover');
        $(event.currentTarget).removeClass('no-sign-up-hover');
    })

    $('.sign-up').on('mouseleave', event => {
        $(event.currentTarget).addClass('no-sign-up-hover');
        $(event.currentTarget).removeClass('sign-up-hover');
    })

    $('.login').on('mouseenter', event => {
        $(event.currentTarget).addClass('hover-grow');
        $(event.currentTarget).removeClass('no-hover-grow');
    })

    $('.login').on('mouseleave', event => {
        $(event.currentTarget).addClass('no-hover-grow');
        $(event.currentTarget).removeClass('hover-grow');
    })

    $('.social-links a svg').on('mouseenter', event => {
        $(event.currentTarget).addClass('social-hover');
        $(event.currentTarget).removeClass('no-social-hover');
    })

    $('.social-links a svg').on('mouseleave', event => {
        $(event.currentTarget).addClass('no-social-hover');
        $(event.currentTarget).removeClass('social-hover');
    })

    // Demo Login
    $('#demo-login').on('click', () => {
        $('#email-home').val("demo@mail.com");
        $('#password-home').val("password");
        $('#login-form').trigger("submit")
    })

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
    $('.item-row').on('mouseenter', event => {
        $(event.currentTarget).addClass('hovering');
        $(event.currentTarget).removeClass('not-hovering');
    })

    $('.item-row').on('mouseleave', event => {
        $(event.currentTarget).addClass('not-hovering');
        $(event.currentTarget).removeClass('hovering');
    })

    $('.grow-on-hover').on('mouseenter', event => {
        $(event.currentTarget).addClass('hover-grow');
        $(event.currentTarget).removeClass('no-hover-grow');
    })

    $('.grow-on-hover').on('mouseleave', event => {
        $(event.currentTarget).addClass('no-hover-grow');
        $(event.currentTarget).removeClass('hover-grow');
    })

    // Disable submit buttons when required fields are not complete
    // $('.item-form input').on('keyup', () => {
    //     let empty = false;
    //     $('.item-form input').each(() => {
    //         console.log($(this).val());
    //         if ($(this).val() == '') {
    //             empty = true;
    //         }
    //     })

    //     if (empty) {
    //         $('#item-submit').attr('disabled', 'disabled');
    //     } else {
    //         $('#item-submit').removeAttr('disabled');
    //     }
    // })
});