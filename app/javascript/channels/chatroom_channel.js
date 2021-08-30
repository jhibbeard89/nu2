import consumer from "./consumer"

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    const currentUser = document.querySelector("#main").dataset.currentUser;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        console.log(data.id)
        if(data.user.first_name == currentUser){
        //console.log(data.user); // called when data is broadcast in the cable
        messagesContainer.insertAdjacentHTML('beforeend', data.html);
        } else {
          console.log(currentUser)
          console.log(data.user.first_name)
          console.log(`#message-${data.id}`)
          messagesContainer.insertAdjacentHTML('beforeend', data.html);
          let message = document.querySelector(`#message-${data.id}`)
          // console.log(`#message-${data.id}`)
          // console.log(message)1
          message.classList.remove("my-message")
          message.classList.add("your-message")
          // console.log('test')
        }
      },
    });
  }
}

export { initChatroomCable };
