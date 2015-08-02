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
//= require turbolinks
//= require_tree .

$(function() {
  var apikey = "B5585A6A7042161DDBFEE49410D7E88B894ECDA1";

  $("form").submit(function(evt) {
    evt.preventDefault();
    var data = {
      text : $("input[type=text]").val(),
      out: "json",
      callback: "jQuery1113004509483091533184_1438415460677",
      apikey: apikey
    };

    $.ajax({
      url:"http://ap.mextractr.net/ma9/emotion_analyzer",
      data: data,
      dataType: "jsonp"
    }).done(done)
      .fail(function() {
        console.log("emotion failed");
      });
  });

  function done(data) {
    var text = data.analyzed_text;
    var result = [0, 0, 0];

    while (text.length > 0) {
      var regexp = /^[^\[]+\[([-0-9\.]+),([-0-9\.]+),([-0-9\.]+)\]/g;
      var array = regexp.exec(text);
      if (array == null) {
        break;
      }

      text = text.replace(regexp, "");
      console.log(text);

      for (i = 1; i < array.length; i++) {
        var type = (i - 1) % 3;
        result[type] += Number(array[i]);
      }
      console.log(result);
    }

    var form = $("<form action='/songs/result' method='POST'>");
    var like = $("<input type='text' name='like'>");
    var joy = $("<input type='text' name='joy'>");
    var anger = $("<input type='text' name='anger'>");
    var textForm = $("<input type='text' name='text'>");

    form.append(like).append(joy).append(anger).append(textForm);
    like.val(result[0]);
    joy.val(result[1]);
    anger.val(result[2]);
    textForm.val($("input[type=text]").val());

    form.submit();
  }
  /*
   // test
   done({"analyzed_text":"%E3%80%90%E3%80%90%E3%81%82%E3%82%8A%E3%80%91%20[1.00,2.00,3.00]%20%20%E3%80%91%E3%81%88%E3%80%90%E3%80%90%E3%81%AA%E3%81%84%E3%80%91%20[-5.00,4.00,-20.00]%20%20%E3%80%91","likedislike":0,"joysad":0,"angerfear":0}); */
});
