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

        const messageList = document.querySelector(".user-chat-container-inside[id='"+ user.id +"'] .user-chat-list")
        messageList.scroll({
            top: messageList.scrollHeight,
            behavior: 'smooth'
        })
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
        if (!message) return

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
                const newMessageContent = document.createElement('div')
                newMessageContent.className = 'user-chat-text-content'
                const newMessageTime = document.createElement('div')
                newMessageTime.className = 'user-chat-time'
                newMessageContent.innerText = message
                
                const now = new Date();
                let hours = now.getHours();
                let minutes = now.getMinutes();

                const suffix = hours >= 12 ? 'PM' : 'AM';

                hours = hours % 12;
                hours = hours ? hours : 12; // the hour '0' should be '12' in AM/PM format

                minutes = minutes < 10 ? `0${minutes}` : minutes;

                const time = `${hours}:${minutes} ${suffix}`;

                newMessageTime.innerText = time
                newMessage.append(newMessageContent)
                newMessage.append(newMessageTime)

                const alignmentSetter = document.createElement('div')
                alignmentSetter.className = 'alignment-setter'
                const userChatContainer = document.querySelector(".user-chat-container-inside[id='"+ selectedUserId +"']")
                const userChat = userChatContainer.children[0]
                alignmentSetter.append(newMessage)
                userChat.append(alignmentSetter)

                const messageList = document.querySelector(".user-chat-container-inside[id='"+ selectedUserId +"'] .user-chat-list")
                messageList.scroll({
                top: messageList.scrollHeight,
                behavior: 'smooth'
                });
            }
        })
    })
})

//- message send input field
const inputs = document.querySelectorAll('.message-input')
inputs.forEach(input => {
    input.addEventListener('keyup', (e) => {
    if(e.key == 'Enter'){
        document.querySelector('.message-send-btn').click()
    }
    })
})

//- user search 
const userSearch = document.querySelector('.user-search')
userSearch.addEventListener('keyup', (e)=>{
    let searchValue = e.target.value
    searchValue = searchValue.toLowerCase()
    const userList = document.querySelectorAll('.user-data-container')
    userList.forEach(user => {
        user.style.display = 'none'
    })
    userList.forEach(user => {
        if((user.children[1].children[0].innerText + user.children[1].children[1].innerText).toLowerCase().includes(searchValue)){
            user.style.display = 'grid'
        }
    })
})

