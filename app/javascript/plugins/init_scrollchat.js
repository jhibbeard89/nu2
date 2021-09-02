const ScrollMessagesIntoView = () => {
  const messages = document.querySelectorAll('.message-container')
  const lastMessage = messages[messages.length - 1];
  lastMessage.scrollIntoView(false);
  console.log(lastMessage)
  console.log("Scroll loads")
}

export {ScrollMessagesIntoView}
