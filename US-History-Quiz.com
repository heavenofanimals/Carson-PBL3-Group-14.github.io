<title>US-History-Quiz.com</title>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
<body ng-app>
<h1> Group 5 Unum PBL US History Quiz </h1>


</body>
<div class="quiz-container">
  <div id="quiz"></div>
</div>
<div id="buttons">
<button id="previous">Previous Question</button>
<button id="next">Next Question</button>
<button id="submit">Submit Quiz</button>
<button id="explain">More Info</button>
<button id="reset">Reset Quiz</button>
</div>
<div id="results"></div>

<script>
(function quiz() {

  const myQuestions = [
	{
	  question: "What political party was founded in Germany in the year 1920?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "National Socialist German Workers' Party",
		b: "Communist Party",
		c: "Capitalist Party of German Workers",
		d: "Nationalist Societies of the German People Party"
	  },
	  correctAnswer: "a"
	},
  {
	  question: "What event forced many restrictions on Germany in 1919?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "Treaty of Paris",
		b: "Declaration of Independence",
		c: "The Signing of the Treaty of Versailles",
		d: "Treaty of Stonewall"
	  },
	  correctAnswer: "c"
	},
	{
	  question: "What did Adolf Hitler write while he was in prison in 1924?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "Communist Manifesto",
		b: "Mein Kampf",
		c: "The Little Train that Could",
		d: "Stein Lampf"
	  },
	  correctAnswer: "b"
	},
	{
	  question: "Who were the leaders of the Axis Powers?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "Hitler, Hirohito, Mussolini",
		b: "Hitler, Churchill, Mussolini",
		c: "Hitler, Mao Zedong, Hirohito",
		d: "Hitler, Stalin, and Mao Zedong"
	  },
	  correctAnswer: "a"
	},
	{
	  question: "Who were the leaders of the Allied Powers?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "Roosevelt, Hirohito, Stalin",
		b: "Roosevelt, Churchill, Stalin",
		c: "Roosevelt, Churchill, Mussolini",
		d: "Roosevelt, Mao Zedong, Stalin"
	  },
	  correctAnswer: "b"
	},
	{
	  question: "What was the event that made the United States join the war in 1941?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "The Treaty of Versailles",
		b: "The Nuclear Arms Race",
		c: "The Great Depression",
		d: "The bombing of Pearl Harbor"
	  },
	  correctAnswer: "d"
	},
	{
	  question: "What caused Japan to surrender in 1945?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "D-Day",
		b: "Germany’s surrender",
		c: "The bombing of Hiroshima and Nagasaki",
		d: "The development of nuclear weapons"
	  },
	  correctAnswer: "c"
	},
	{
	  question: "What was the main goal of the Axis Powers?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "To take control of Europe and the Pacific",
		b: "To make trade easier",
		c: "To remove all crime from Europe",
		d: "To take control of the Allies"
	  },
	  correctAnswer: "a"
	},
	{
	  question: "What was the main goal of the Allied Powers?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "To make trade harder",
		b: "To prevent the Axis Powers from taking over Europe and the Pacific",
		c: "To create crime in Europe",
		d: "To stop the Axis Powers from taking over the Allies"
	  },
	  correctAnswer: "b"
	},
	{
	  question: "What was the secret code used by the Allies to communicate that the Axis powers could not decode?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "The Apache Code",
		b: "Morse Code",
		c: "The Allied Code",
		d: "The Navajo code"
	  },
	  correctAnswer: "d"
	},
	{
	  question: "What was the explosive that was first used to end WWII in 1945?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "The Ballistic Missile",
		b: "The Intercontinental Missile",
		c: "The Atomic Bomb",
		d: "Big Bertha"
	  },
	  correctAnswer: "c"
	},
	{
	  question: "What was founded by the Allies in 1945 to maintain world peace?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "United Nations",
		b: "NATO",
		c: "NAFTA",
		d: "Food Stamps"
	  },
	  correctAnswer: "a"
	},
	{
	  question: "What conflict followed the end of WWII?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "WWIII",
		b: "The Cold War",
		c: "The Great Depression",
		d: "The American Revolution"
	  },
	  correctAnswer: "b"
	},
	{
	  question: "What was built to separate Germany in 1989?",
	  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/World_War_II_in_Europe%2C_1942.svg/2042px-World_War_II_in_Europe%2C_1942.svg.png",
	  answers: {
		a: "The Great Wall of Germany",
		b: "The Berlin Wall",
		c: "The German Wall",
		d: "The Great Wall of China"
	  },
	  correctAnswer: "b"
	}

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
if (window.confirm('click "Ok" for more info.')) 
{
window.location.href='https://carson-pbl3-group-14.github.io/US-History-Citations.com';
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
  background-color: brown;
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
