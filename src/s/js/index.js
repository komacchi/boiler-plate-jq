console.log('moge')
let inputText = {

  focusOut: (t) => {
    const len = t.val()
    if (len) {
      t.addClass('focusout').removeClass('focusin')
    } else {
      t.removeClass('focusin')
    }
  },
  focusIn: (t) => {
    t.addClass('focusin').removeClass('focusout error')
  }
}

// event
$(() => {
  $('.input__text').on('focus', (e) => {
    inputText.focusIn($(e.currentTarget))
  })
  $('.input__text').on('blur', (e) => {
    inputText.focusOut($(e.currentTarget))
  })
})
