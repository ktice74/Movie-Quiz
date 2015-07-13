
$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
//Register user
// $(".submit").on("click", function(event)
//   event.preventDefault();


//   )

  $(function() {
    $( ".guess_accordion_before" ).accordion({
      header: "h3", collapsible: true, active: false, heightStyle: "content"
    }).sortable();
  });

    $(function() {
    $( ".answer_accordion" ).accordion({
      header: "h3", collapsible: true, active: false, heightStyle: "content"
    })
  });

    $(function() {
    $( ".guess_accordion_after" ).accordion({
      header: "h3", collapsible: true, active: false, heightStyle: "content"
    }).sortable();
  });



  /*Submit Guesses*/
  var guessesArray = [];
  var answersArray = [];
  var comboArray = [];


  var updateUserScore = function(score){
    var year = window.location.pathname.split('/')[2];
    console.log(year)
    $.ajax({
      url: '/score',
      type: 'post',
      data: {year: year, score: score},
      dataType: 'json'
      }).done(function(response) {
        console.log(response);
      })
      .fail(function(response) {
        console.log(response);
      })
      .always(function() {
        console.log("complete");
      });

    }

  var compareArrays = function(guesses, answers) {
    var correct = 0

    for (var i = 0; i < guesses.length; i++) {
      if (guesses[i] === answers[i]) {
       correct += 1;
      }
    }
    $('.content').find('p').css("display", "none")

    $(".answers_correct_text").append("You answered " + correct + " questions correctly out of 10.").css("display", "block", "font-family", "'Open Sans Condensed', sans-serif;");

    updateUserScore(correct)
  }




  $('.submit_answers').on('click', function(event){
    event.preventDefault();


    $("html, body").animate({ scrollTop: 0 }, "slow");


    $('.guess_accordion_section').each(function() {
      guessesArray.push(this.dataset.id);
    });

    $('.answer_accordion_section').each(function() {
      answersArray.push(this.dataset.id);
    });

    compareArrays(guessesArray, answersArray);

    $(".guess_accordion_before").removeClass("guess_accordion_before").addClass("guess_accordion_after");

    $(".answer_accordion").css("display", "inline-block");

    $("input.submit_answers").css("display", "none")


  });
  // $function() {
  //   $('.accordion_section').on("click", function(){

  //   })
  // }
  // $('.submit_answers').on('click', function(event){
  //   event.preventDefault();
  //   $('.guess_accordion_section').each(function() {
  //    guesses.push($(this).find('h3').text().slice(0,2) );
  //    console.log(guesses);

  //   });
  // })
  // $function() {
  //   $('.accordion_section').on("click", function(){

  //   })
  // }


});



  /*Submit Guesses*/
  // var guesses = []
  // var correct_answers = []
  // $('.submit_answers').on('click', function(event){
  //   event.preventDefault();
  //   $('.accordion_section').each(function() {
  //    guesses.push($(this).find('h3').text().slice(0,2) );
  //    console.log(guesses);
  //   });
  //   $('.answer_accordion').each(function() {
  //    correct_answers.push($(this).find('h3').text().slice(0,2) );
  //    console.log(correct_answers);
  //  });
  // });
  // $function() {
  //   $('.accordion_section').on("click", function(){

  //   })
  // }

$('.accordion_section:first-child').find('h3').text()[0]
"1"