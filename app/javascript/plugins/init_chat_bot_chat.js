const ChatBotToggle = () => {
  const botIcon = document.getElementById('bot-link')
  if (botIcon){
    const chatWindow = document.getElementById('main')
    if ((sessionStorage.getItem('chatState') === 'closed') || (sessionStorage.getItem('chatState') === null )) {
      chatWindow.classList.add("hidden")
    }
    botIcon.addEventListener("click", () => {
      chatWindow.classList.toggle("hidden")
      if ((sessionStorage.getItem('chatState') === 'closed') || (sessionStorage.getItem('chatState') === null )) {
        sessionStorage.setItem("chatState", "open");
      } else {
        sessionStorage.setItem("chatState", "closed");
      }

    });
  }
}




export {ChatBotToggle}
