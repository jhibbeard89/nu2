const ProgressBarLogic = () => {
  const progressBar = document.getElementById('main-bar');
  if (progressBar){

    const completeTasks = document.getElementsByClassName('task');
    let progressBarLength = (completeTasks.length/3.0) * 100
    let percentage = Math.floor(progressBarLength)
    const frame = () => {
      if (i === percentage){
        clearInterval(id)
      } else {
        i += 1
        progressBar.style.width = `${i}%`;
        progressBar.innerText = `${i}%`;
      }
    }

    const move = () => {
      id = setInterval(frame, 30)
    }

    let i = 0
    let id;
    window.addEventListener("load", move)


  }
}

export {ProgressBarLogic}
