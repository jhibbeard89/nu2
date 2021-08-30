const WayLogic = () => {
  let i = 0
  const container = document.getElementsByClassName('question-card');
  const buttonNext = document.getElementById('next-btn')
  const buttonBack = document.getElementById('back-btn')
  const buttonContainer = document.getElementById('button-container')

  if (buttonNext){
    if (i === 0){
      buttonNext.innerText = "Start questions"
    }
    buttonNext.addEventListener('click', () => {
      buttonNext.innerText = "Next questions"
      container[i].classList.add("question")
      i += 1
      container[i].classList.remove("question")
      if(i !== 0){
        buttonBack.classList.remove("question")
      }
      if(i === 11){
        buttonContainer.style.display = "none"
      }
    });
  }

  if (buttonBack){
    buttonBack.addEventListener('click', () => {
      container[i].classList.add("question")
      i -= 1
      container[i].classList.remove("question")
      if(i === 0){
        buttonNext.innerText = "Start questions"
        buttonBack.classList.add("question")
      }
    })
  }
}

// const UserSelection = () => {
//   const interaction = document.getElementsByClassName('employment-status')
//   const target = document.getElementById('employment-input')
//   const interactionButtons = Object.entries(interaction)

//   interactionButtons.forEach(element =>{
//     element[1].addEventListener('click', () => {
//       target.value = element[1].innerText;
//       $(".employment-status").removeClass('selected')
//       element[1].classList.add('selected')
//     });
//   });
// }



const buttonSelection = (questionId, formSelection) => {
  const question = document.getElementById(questionId);
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

const UserSelection = () => {
  buttonSelection("question-1", "employment-input");
  buttonSelection("question-2", "income-input");
  buttonSelection("question-3", "german-level");
  buttonSelection("question-8", "duration-input");
}


  // const buttonSelection = (question, formSelection) => {
  // const question = document.getElementById('question-1');
  // const target = document.getElementById('employment-input');
  // const selectionButton = question.getElementsByClassName('question-button');
  // const interactionButtons = Object.entries(selectionButton)
  // interactionButtons.forEach(element => {
  //   element[1].addEventListener('click', () => {
  //     target.value = element[1].innerText;
  //     $(".employment-status").removeClass('selected')
  //     element[1].classList.add('selected')
  //   });
  // })

export {WayLogic, UserSelection}
