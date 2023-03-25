const deleteButtons = document.querySelectorAll('.delete-btn')
if(deleteButtons){
    deleteButtons.forEach((deleteBtn, index) => {
        deleteBtn.addEventListener('click', (e) => {
            const userId = e.target.id
            const username = document.querySelectorAll('.actual-username-value')[index].innerText
            const name = document.querySelectorAll('.name-container')[index].innerText
            $.ajax({
                url:'/admin/deleteUser',
                type: 'POST',
                data: {
                    userId: userId,
                },
                success: () => {
                    popup(`${username}(${name}) has been deleted`, 'green', '6s')
                    $(`#${userId}`).remove()
                }
            })
        })
    })
}