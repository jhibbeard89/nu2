const ProgressBarLogic = () => {
  const progressBar = document.getElementById('main-bar');
  if (progressBar){
    const completeTasks = document.getElementsByClassName('task');
    let progressBarLength = (completeTasks.length/3.0) * 100
    let percentage = `${Math.floor(progressBarLength)}%`
    console.log(typeof percentage)
    progressBar.style.width = percentage
    progressBar.innerText = percentage
  }
}

export {ProgressBarLogic}
