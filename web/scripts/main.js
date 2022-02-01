$(document).ready(function() {
    if (window.location.hash != "") $("html, body").animate({
        scrollTop: $(window.location.hash.toString()).offset().top + "px"
    }, {
        duration: 500
    });

    $.ajax({
        url: "/hotcoffee/stat/downloads.php?path=installer/MirandaHotCoffee_0.96.1.24291_x64.exe",
        cache: true,
        success: function(html) {
            $("#x64_installer_dwn").html("<a target=\"_blank\" href=/hotcoffee/stat/index.php?path=installer/MirandaHotCoffee_0.96.1.24291_x64.exe>" + html + "</a>");
        }
    });

    $.ajax({
        url: "/hotcoffee/stat/downloads.php?path=installer/MirandaHotCoffee_0.96.1.24291_x86.exe",
        cache: true,
        success: function(html) {
            $("#x86_installer_dwn").html("<a target=\"_blank\" href=/hotcoffee/stat/index.php?path=installer/MirandaHotCoffee_0.96.1.24291_x86.exe>" + html + "</a>");
        }
    });

    $('.spoiler_links').click(function() {
        $("#" + $(this).attr('id') + "b").toggle("normal");
        var src = $(this).children("img").attr("src");
        $(this).children("img").attr("src", src === "/hotcoffee/images/minus.png" ? "/hotcoffee/images/plus.png" : "/hotcoffee/images/minus.png");

        if ($(this).text() == "Показать")
            $(this).text("Скрыть")
        else if ($(this).text() == "Скрыть")
            $(this).text("Показать")

        if ($(this).text() == "Show")
            $(this).text("Hide")
        else if ($(this).text() == "Hide")
            $(this).text("Show")


        if ($(this).text() == "Показать условия")
            $(this).text("Скрыть условия")
        else if ($(this).text() == "Скрыть условия")
            $(this).text("Показать условия")

        if ($(this).text() == "Show terms")
            $(this).text("Hide terms")
        else if ($(this).text() == "Hide terms")
            $(this).text("Show terms")

        var t = $(this);
        $('html, body').animate({
            scrollTop: t.offset().top
        }, 500);

        return false;
    });

    $("#language-en").click(function() {
        var date = new Date(new Date().getTime() + 24 * 60 * 60 * 1000);
        document.cookie = "LANG=en; path=/hotcoffee; expires=" + date.toUTCString();
        location.reload();
        return 0;
    });

    $("#language-ru").click(function() {
        var date = new Date(new Date().getTime() + 24 * 60 * 60 * 1000);
        document.cookie = "LANG=ru; path=/hotcoffee; expires=" + date.toUTCString();
        location.reload();
        return 0;
    });

});

document.createElement("btn");
document.createElement("hklmb");
document.createElement("hkmmb");
document.createElement("hkrmb");
document.createElement("hksw");