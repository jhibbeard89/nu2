const WayLogic = () => {
  let i = 0
  const container = document.getElementsByClassName('question-card');
  const buttonNext = document.getElementById('next-btn')
  const buttonBack = document.getElementById('back-btn')
  const buttonContainer = document.getElementById('button-container')

  if (buttonNext){
    buttonNext.addEventListener('click', () => {
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
        buttonBack.classList.add("question")
      }
    })
  }
}

export {WayLogic}
