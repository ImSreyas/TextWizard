const userSearch = $('.user-search')
const deoSearch = $('.deo-search')

const filterFeedbackCards = (searchInput, nameClass, usernameClass, feedbackCardClass) => {
  const val = searchInput.val().replace(/\s+/g, '') // remove all white spaces from search value
  const names = $(`.${feedbackCardClass} .${nameClass}`)
  const usernames = $(`.${feedbackCardClass} .${usernameClass}`)
  const feedbackCards = $(`.${feedbackCardClass}`)
  
  names.each((index, name) => {
    const actualString = (name.innerText + usernames[index].innerText).replace(/\s+/g, '') // remove all white spaces from actual string
    
    feedbackCards.each((index, card) => {
      $(card).css('display', 'none')
      
      if (actualString.includes(val)) {
        $(card).css('display', 'block')
      }
    })
  })
}

userSearch.on('keyup', (e) => {
  filterFeedbackCards(userSearch, '__name', '__username', 'user-feedback-card')
})

deoSearch.on('keyup', (e) => {
  filterFeedbackCards(deoSearch, '__name', '__username', 'deo-feedback-card')
})



