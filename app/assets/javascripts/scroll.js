function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll(".message");
  let lastMessage = messages[messages.length - 1];
  if(messages.length) {
    lastMessage.scrollIntoView();

  }
}

