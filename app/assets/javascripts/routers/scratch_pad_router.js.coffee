class App.Routers.ScratchPadRouter extends Backbone.Router
  routes:
    '' : 'index'
    'notes/:id' : 'showNote'

  showNote: (id) ->
    alert("requesting for the note with id #{id}")

  index: ->
    view = new App.Views.Notes(collection: App.AllNotes)
    $('#container').html(view.render().el)