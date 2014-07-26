define(['jquery', 'domReady!', 'app/foo/printer', 'layout'], function ($, doc, printer, layout) {
    var p = printer($('#printer'));
    p.info("called from app/main");
    $('#notbuilt').hide();
    $('#built').show();
});
