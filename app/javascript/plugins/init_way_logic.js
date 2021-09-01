const WayLogic = () => {
  let i = 0
  const container = document.getElementsByClassName('question-card');
  const buttonNext = document.getElementById('next-btn')
  const buttonBack = document.getElementById('back-btn')
  const buttonContainer = document.getElementById('button-container')
  const numberOfQuestions = container.length - 1

  if (buttonNext){
    const counter = document.getElementById('counter');

    if (i === 0){
      buttonNext.innerText = "START QUESTIONS"
    }
    buttonNext.addEventListener('click', () => {
      buttonNext.innerText = "NEXT QUESTION"
      container[i].classList.add("question")
      i += 1
      container[i].classList.remove("question")
      if(i !== 1){
        buttonBack.classList.remove("question")
      }
      if(i === 10){
        buttonContainer.style.display = "none"
      }
      counter.innerText = `${i}/${numberOfQuestions}`
    });
  }

  if (buttonBack){
    buttonBack.addEventListener('click', () => {
      container[i].classList.add("question")
      i -= 1
      container[i].classList.remove("question")
      if(i === 0){
        buttonNext.innerText = "START QUESTIONS"
        buttonBack.classList.add("question")
      }
      counter.innerText = `${i}/${numberOfQuestions}`
    })
  }
}

const buttonSelection = (questionId, formSelection) => {
  const question = document.getElementById(questionId);
  if (question){
    const target = document.getElementById(formSelection);
    const selectionButton = question.getElementsByClassName('question-button');
    const interactionButtons = Object.entries(selectionButton)
    interactionButtons.forEach(element => {
      element[1].addEventListener('click', () => {
        target.value = element[1].innerText;
        $(".question-button").removeClass('selected')
        element[1].classList.add('selected')
      });
    })
  }
}

const UserSelection = () => {
  buttonSelection("question-1", "employment-input");
  buttonSelection("question-2", "income-input");
  buttonSelection("question-3", "german-level");
  buttonSelection("question-8", "duration-input");
}

export {WayLogic, UserSelection}
