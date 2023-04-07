// -post 
$('.post-btn').click(() => {
    const caption = $('.caption-input').val()
    const content = $('.post-content-input').val()
    
    $.ajax({
        url: '/addPost',
        type: "POST",
        data: {
            caption: caption,
            content: content
        },
        success: (data) => {
            if(data == 'success'){
                popup("post added successfully", 'green', '3s')
                $('.caption-input').val('')
                $('.post-content-input').val('')
                $('.post-input-container-main error').each((i, error) => {
                    error.innerText = ''
                })
                getPosts()
            } else if(data == 'not logged in') {
                location.href = '/login'
            } else {
                $('.post-input-container-main error').each((i, error) => {
                    error.innerText = data[i]
                })
            }
        }
    })
})
function getPosts(){
    $.ajax({
        url: '/getPosts',
        type: "POST",
        success: (posts) => {
            $('.post-output-container-main').html('')
            posts.forEach(post => {
                //-main container 
                const mainContainer = document.createElement('div')
                mainContainer.className = 'post-container'
                mainContainer.id = post.post_id

                //?user details row
                const userRow = document.createElement('div')
                userRow.className = 'user-row'

                //?user profile pic main container 
                const userImageContainer = document.createElement('div')
                userImageContainer.className = 'user-image-container'

                //?user profile pic container inside
                const userImage = document.createElement('img')
                userImage.className = 'user-image'
                userImage.src = "/static/uploads/" + post.profile_pic

                //-appending user image to the user image main container 
                userImageContainer.append(userImage)

                //?container for displaying name of the user 
                const userName = document.createElement('div')
                userName.className = 'user-name-container'
                userName.innerHTML = post.name

                //?container for displaying username of the user
                const username = document.createElement('div')
                username.className = 'username-container_'
                username.innerHTML = post.username

                //-appending user profile pic, user name and username to the user row container 
                userRow.append(userImageContainer, userName, username)

                //-caption container
                const caption = document.createElement('div')
                caption.className = 'post-caption-container'
                caption.innerText = post.caption

                //-content container
                const content = document.createElement('div')
                content.className = 'post-content-container'
                content.innerText = post.content

                //-tool container 
                const tools = document.createElement('div')
                tools.className = 'tools-container'

                //? comment container 
                const commentIcon = document.createElement('div')
                commentIcon.className = 'comment-icon-container'
                commentIcon.id = post.post_id

                //? time container
                const date = new Date(post.time)
                const dayOfWeek = date.toLocaleString('en-us', {weekday: 'short'}); // get the abbreviated day of the week
                const dayOfMonth = date.getDate(); 
                const month = date.toLocaleString('en-us', {month: 'short'}); // get the abbreviated month
                const year = date.getFullYear(); 
                const hours = date.getHours(); 
                const minutes = date.getMinutes(); 
                const ampm = hours >= 12 ? 'PM' : 'AM'; 
                const formattedHours = hours % 12 || 12;
                const formattedMinutes = minutes < 10 ? '0' + minutes : minutes; 

                const formattedDate = `${dayOfWeek}, ${dayOfMonth} ${month} ${year}`;
                const formattedTime = `${formattedHours}:${formattedMinutes} ${ampm}`; 
                const formattedDateTime = `${formattedDate} ${formattedTime}`;

                const time = document.createElement('div')
                time.className = 'time-container'
                time.innerText = formattedDateTime

                //-appending comment and time container to the tools container
                tools.append(commentIcon, time)

                //-appending all containers to the main container
                mainContainer.append(userRow)
                mainContainer.append(caption)
                mainContainer.append(content)
                mainContainer.append(tools)
                $('.post-output-container-main').append(mainContainer)
            })
        }
    })
}
getPosts()