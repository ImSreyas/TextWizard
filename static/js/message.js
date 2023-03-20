//- select user chat function 
const users = document.querySelectorAll('.user-data-container')
users.forEach(user => {
    user.addEventListener('click', (e) => {
        users.forEach(u => {
            u.setAttribute('selected', 'false')
        })
        const userChat = document.querySelectorAll('.user-chat-container-inside')
        userChat.forEach(chat => {
            if(user.id == chat.id){
                chat.setAttribute('show', 'true')
            } else {
                chat.setAttribute('show', 'false')
            }
        })
        user.setAttribute('selected', 'true')
    })
})

//- send message 
const messageButtons = document.querySelectorAll('.message-send-btn')
messageButtons.forEach(messageBtn => {
    messageBtn.addEventListener('click', () => {
        const selectedUser = document.querySelector(".user-data-container[selected='true']")
        const selectedUserId = selectedUser.id
        const inputField =document.querySelector(".message-input[id='"+ selectedUserId +"']")
        const message = inputField.value
        inputField.value = ""
        inputField.focus()

        $.ajax({
            url: '/sendMessage',
            type: 'POST',
            data: {
                receiver: selectedUserId,
                message: message
            },
            success: () => {
                const newMessage = document.createElement('div')
                newMessage.className = 'user-chat-right'
                newMessage.innerText = message
                const alignmentSetter = document.createElement('div')
                alignmentSetter.className = 'alignment-setter'
                const userChatContainer = document.querySelector(".user-chat-container-inside[id='"+ selectedUserId +"']")
                const userChat = userChatContainer.children[0]
                alignmentSetter.append(newMessage)
                userChat.append(alignmentSetter)
            }
        })
    })
})

