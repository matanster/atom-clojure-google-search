module.exports =
class GooglesearchView
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('googlesearch')

    # Create message element
    message = document.createElement('div')
    message.textContent = "atom-clojure-google-search loaded"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  destroy: ->
    @element.remove()

  getElement: ->
    @element
