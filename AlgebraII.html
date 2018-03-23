<head>
<title>Algebra-II-Quiz.com</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
<body ng-app>
<h1> Group 5 Unum PBL Algebra II Quiz </h1>


</body>
<div class="quiz-container">
  <div id="quiz"></div>
</div>
<div id="buttons">
<button id="previous">Previous Question</button>
<button id="next">Next Question</button>
<button id="submit">Submit Quiz</button>
<button id="explain">Explanations</button>
<button id="reset">Reset Quiz</button>
</div>
<div id="results"></div>

<script>
(function quiz() {

  const myQuestions = [
	{
	  question: "Simplify this expression:",
	  image:"https://raw.githubusercontent.com/Carson-PBL3-Group-14/Carson-PBL3-Group-14.github.io/master/BA649DF0-C2B9-4E03-81EF-51E16F55BC4E.jpeg",
	  answers: {
		a: "6X + 10",
		b: "6X^2 + 10",
		c: "16X",
		d: "4X"
	  },
	  correctAnswer: "a"
	},
  {
	  question: "Simplify this expression:",
	  image:"https://raw.githubusercontent.com/Carson-PBL3-Group-14/Carson-PBL3-Group-14.github.io/master/73B9086B-A970-46A0-9EFC-3779A81CD9A2.jpeg",
	  answers: {
		a: "-9.72X",
		b: "-9.7X",
		c: "-5.55 - 4.2X",
		d: "-5.55X - 4.2X"
	  },
	  correctAnswer: "c"
	},
	{
	  question: "Solve this equation:",
	  image:"https://raw.githubusercontent.com/Carson-PBL3-Group-14/Carson-PBL3-Group-14.github.io/master/3A04397E-4BF3-4810-BB62-1E9CC8D9B6B2.jpeg",
	  answers: {
		a: "2.25 is real and 4 is extraneous",
		b: "No real solutions",
		c: "4 is real and 2.25 is extraneous",
		d: "Two real solutions"
	  },
	  correctAnswer: "b"
	},
	{
	  question: "Solve this equation:",
	  image:"https://raw.githubusercontent.com/Carson-PBL3-Group-14/Carson-PBL3-Group-14.github.io/master/87DDAA6D-67FF-474C-A0B8-A739C7AA225F.jpeg",
	  answers: {
		a: "Two real solutions",
		b: "1 is real and -2 is extraneous",
		c: "No real solutions",
		d: "X^2 + X - 2"
	  },
	  correctAnswer: "a"
	},
	{
	  question: "What function does this graph represent?",
	  image:"https://raw.githubusercontent.com/Carson-PBL3-Group-14/Carson-PBL3-Group-14.github.io/master/BABD7655-6DC6-45EF-A12C-FDF46238AB7D.jpeg",
	  answers: {
		a: "y= ^3√x-7 -3",
		b: "y= ^3√x",
		c: "y= x+2",
		d: "y= X^2"
	  },
	  correctAnswer: "b"
	},
	{
	  question: "What function will cause graph y= /X| to move right 4 units and reflect over the line X=4",
	  image:"https://raw.githubusercontent.com/Carson-PBL3-Group-14/Carson-PBL3-Group-14.github.io/master/44BA77A2-C506-4497-A5B1-D8E06B49C242.jpeg",
	  answers: {
		a: "y= ^2√-X+4",
		b: "y= √X-4",
		c: "y= √-X^2 + 4|",
		d: "y= √−X+4"
	  },
	  correctAnswer: "d"
	},
	
  ];

  function buildQuiz() {
	// we'll need a place to store the HTML output
	const output = [];

	// for each question...
	myQuestions.forEach((currentQuestion, questionNumber) => {
	
		const image = [];
		

	
	  // we'll want to store the list of answer choices
	  const answers = [];

	  // and for each available answer...
	  for (letter in currentQuestion.answers) {
		// ...add an HTML radio button
		answers.push(
		  `<label>
			 <input type="radio" name="question${questionNumber}" value="${letter}">
			  ${letter} :
			  ${currentQuestion.answers[letter]}
		   </label>`
		);
	  }

	  // add this question and its answers to the output
	  output.push(
		`<div class="slide">
		   <div class="question"> ${currentQuestion.question} </div>
		   <div class="image"><img src=${currentQuestion.image}></div>
		   <div class="answers"> ${answers.join("")} </div>
		 </div>`
	  );
	});

	// finally combine our output list into one string of HTML and put it on the page
	quizContainer.innerHTML = output.join("");
  }

  function showResults() {
	// gather answer containers from our quiz
	const answerContainers = quizContainer.querySelectorAll(".answers");

	// keep track of user's answers
	var numCorrect = 0;

	// for each question...
	myQuestions.forEach((currentQuestion, questionNumber) => {
	  // find selected answer
	  const answerContainer = answerContainers[questionNumber];
	  const selector = `input[name=question${questionNumber}]:checked`;
	  const userAnswer = (answerContainer.querySelector(selector) || {}).value;

	  // if answer is correct
	  if (userAnswer === currentQuestion.correctAnswer) {
		// add to the number of correct answers
		numCorrect++;
		// color the answers green
		answerContainers[questionNumber].style.color = "lightgreen";
	  } else {
		// if answer is wrong or blank
		// color the answers red
		answerContainers[questionNumber].style.color = "red";
	  }
	});

	// show number of correct answers out of total
	resultsContainer.innerHTML = `${numCorrect} out of ${myQuestions.length}`;
}

function explanation(){
if (window.confirm('click "Ok" for explanations.')) 
{
window.location.href='https://www.google.com';
};
}

  function showSlide(n) {
	slides[currentSlide].classList.remove("active-slide");
	slides[n].classList.add("active-slide");
	currentSlide = n;
	
	if (currentSlide === 0) {
	  previousButton.style.display = "none";
	} else {
	  previousButton.style.display = "inline-block";
	}
	
	if (currentSlide === slides.length - 1) {
	  nextButton.style.display = "none";
	  submitButton.style.display = "inline-block";
	} else {
	  nextButton.style.display = "inline-block";
	  submitButton.style.display = "none";
	}
	if (currentSlide === slides.length - 1) {
	  resetButton.style.display = "inline-block";
		explainButton.style.display = "inline-block";
	} else {
	  resetButton.style.display = "none";
		explainButton.style.display = "none";
	}

  }
  function showNextSlide() {
	showSlide(currentSlide + 1);
  }

  function showPreviousSlide() {
	showSlide(currentSlide - 1);
  }

  const quizContainer = document.getElementById("quiz");
  const resultsContainer = document.getElementById("results");
  const submitButton = document.getElementById("submit");
  const resetButton = document.getElementById("reset");
  // display quiz right away
  buildQuiz();

  const previousButton = document.getElementById("previous");
  const nextButton = document.getElementById("next");
  const explainButton = document.getElementById("explain");
  const slides = document.querySelectorAll(".slide");
  let currentSlide = 0;

  showSlide(0);

  // on submit, show results
  submitButton.addEventListener("click", showResults);
  nextButton.addEventListener("click", showNextSlide);
  explainButton.addEventListener("click", explanation);
  previousButton.addEventListener("click", showPreviousSlide);
  resetButton.addEventListener("click", resetQuiz);
  
  function resetQuiz(){
	quiz()
	let n = 0;
	slides[currentSlide].classList.remove("active-slide");
	slides[n].classList.add("active-slide");
	currentSlide = n;
	resultsContainer.innerHTML = null
  }
  
})();
</script>
<style>
@import url(https://fonts.googleapis.com/css?family=Work+Sans:300,600);

body{
	font-size: 20px;
	font-family: 'Work Sans', sans-serif;
	color: #333;
  font-weight: 300;
  text-align: center;
  background-color: #f8f6f0;
}
h1{
  font-weight: 300;
  margin: 0px;
  padding: 10px;
  font-size: 20px;
  background-color: lightgreen;
  color: #fff;
}
.question{
  font-size: 30px;
  margin-bottom: 10px;
}
.answers {
  margin-bottom: 20px;
  text-align: left;
  display: inline-block;
}
.answers label{
  display: block;
  margin-bottom: 10px;
}
button{
  font-family: 'Work Sans', sans-serif;
	font-size: 22px;
	background-color: #279;
	color: #fff;
	border: 1px;
	border-radius: 3px;
	padding: 30px;
	cursor: pointer;
	margin-bottom: 10px;
}
button:hover{
	background-color: #38a;
}

#buttons{
	margin-top:220px;
}



.slide{
  position: absolute;
  left: 0px;
  top: 0px;
  width: 100%;
  z-index: 1;
  opacity: 0;
  transition: opacity 0.5s;
}
.active-slide{
  opacity: 1;
  z-index: 2;
}
.quiz-container{
  position: relative;
  height: 200px;
  margin-top: 40px;
}
img{
width:20%;
height:100%;
border:0px;
}
</style>
