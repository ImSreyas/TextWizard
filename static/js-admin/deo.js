const deleteButtons = document.querySelectorAll('.delete-btn')
if(deleteButtons){
    deleteButtons.forEach((deleteBtn, index) => {
        deleteBtn.addEventListener('click', (e) => {
            const deoId = e.target.id
            const username = document.querySelectorAll('.username-content')[index].innerText
            const name = document.querySelectorAll('.name-container')[index].innerText
            $.ajax({
                url:'/admin/deleteDeo',
                type: 'POST',
                data: {
                    deoId: deoId,
                },
                success: () => {
                    popup(`${username} (${name}) has been deleted`, 'green', '6s')
                    $(`#${deoId}`).css('display', 'none')
                }
            })
        })
    })
}
const blockButtons = document.querySelectorAll('.block-btn')
if(blockButtons){
    console.log('ya working')
    blockButtons.forEach((blockBtn, index) => {
        blockBtn.addEventListener('click', (e) => {
            const deoId = e.target.id
            const username = document.querySelectorAll('.actual-username-value')[index].innerText
            const name = document.querySelectorAll('.name-container')[index].innerText
            $.ajax({
                url:'/admin/blockDeo',
                type: 'POST',
                data: {
                    deoId: deoId,
                },
                success: () => {
                    const b = ($(`button#${deoId}.block-btn`).text() == 'block' ? 'unblock' : 'block')
                    const u = ($(`button#${deoId}.block-btn`).text() == 'unblock' ? 'unblocked' : 'blocked')
                    popup(`${username} (${name}) has been ${u}`, (u == 'unblocked') ? 'blue' : 'red', '6s')
                    $(`button#${deoId}.block-btn`).text(b)
                }
            })
        })
    })
}