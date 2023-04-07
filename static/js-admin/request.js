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
    blockButtons.forEach((blockBtn, index) => {
        blockBtn.addEventListener('click', (e) => {
            const deoId = e.target.id
            const username = document.querySelectorAll('.actual-username-value')[index].innerText
            const name = document.querySelectorAll('.name-container')[index].innerText
            $.ajax({
                url:'/admin/verifyDeo',
                type: 'POST',
                data: {
                    deoId: deoId,
                },
                success: () => {
                    const b = ($(`button#${deoId}.block-btn`).text() == 'verify' ? 'cancel' : 'verify')
                    const u = ($(`button#${deoId}.block-btn`).text() == 'cancel' ? 'verification canceled' : 'verified successfully')
                    popup(`${username} (${name}) - ${u}`, (u == 'verified successfully') ? 'green' : 'red', '6s')
                    $(`button#${deoId}.block-btn`).text(b)
                }
            })
        })
    })
}