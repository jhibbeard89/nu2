import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages')
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create(
      { channel: 'ChatroomChannel', id: id },
      {
        received(data) {
          let currentUser = document.querySelector('#main').dataset.currentUser
          // console.log({ currentUser })
          // console.log(data.id)
          messagesContainer.insertAdjacentHTML('beforeend', data.html)
          if (data.user.first_name == currentUser) {
            //console.log(data.user); // called when data is broadcast in the cable
          } else {
            let message = document.querySelector(`#message-${data.id}`)
            let icon = document.querySelector(`#icon-${data.id}`)
            if (message) {
              message.classList.add('your-message')
              message.classList.remove('my-message')
              icon.classList.add('your-message-author')
              icon.classList.remove('my-message-author')
            }
            // message.classList.add('your-message')
            // message.classList.remove('my-message')
            // console.log('test')
          }
        },
      }
    )
  }
}

export { initChatroomCable };
