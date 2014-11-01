// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .




// UI js

(function (window, document) {

    var $layout   = $('#layout'),
        $menu     = ('#menu'),
        $menuLink = $('#menuLink');


    $menuLink.click(function() {
        var active = 'active';

        $layout.toggleClass(active);
        $menu.toggleClass(active);
        $(this).toggleClass(active);
    });

}(this, this.document));



/// Editor
$(document).ready(function () {
    var converter1 = Markdown.getSanitizingConverter();

    converter1.hooks.chain("preBlockGamut", function (text, rbg) {
        return text.replace(/^ {0,3}""" *\n((?:.*?\n)+?) {0,3}""" *$/gm, function (whole, inner) {
            return "<blockquote>" + rbg(inner) + "</blockquote>\n";
        });
    });

    var editor1 = new Markdown.Editor(converter1);

    editor1.run();

    var converter2 = new Markdown.Converter();

    converter2.hooks.chain("preBlockGamut", function (text, rbg) {
        return text.replace(/^ {0,3}""" *\n((?:.*?\n)+?) {0,3}""" *$/gm, function (whole, inner) {
            return "<blockquote>" + rbg(inner) + "</blockquote>\n";
        });
    });

    converter2.hooks.chain("plainLinkText", function (url) {
        return "This is a link to " + url.replace(/^https?:\/\//, "");
    });

    var help = function () { alert("Do you need help?"); }
    var options = {
        helpButton: { handler: help },
        strings: { quoteexample: "whatever you're quoting, put it right here" }
    };
    var editor2 = new Markdown.Editor(converter2, "-second", options);

    editor2.run();
})();
