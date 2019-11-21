window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @AllNotes = [
      new @Models.Note(id: 1, title: 'The first title', content: 'I am first Note')
      new @Models.Note(id: 2, title: 'The second title', content: 'I am second Note')
      new @Models.Note(id: 3, title: 'The third title', content: 'I am third Note')
      new @Models.Note(id: 4, title: 'The fourth title', content: 'I am fourth Note')
    ]
    new @Routers.ScratchPadRouter
    Backbone.history.start(pushState: true)
window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
