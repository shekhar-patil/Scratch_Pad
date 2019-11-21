class App.Routers.ScratchPadRouter extends Backbone.Router
  routes:
    '' : 'index'
    'notes/:id' : 'showNote'

  showNote: (id) ->
    model = App.AllNotes[id - 1]
    view = new App.Views.EditNote(model: model)
    $('#container').html(view.render().el)

  index: ->
    view = new App.Views.Notes(collection: App.AllNotes)
    $('#container').html(view.render().el)