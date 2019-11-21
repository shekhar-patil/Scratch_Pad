class App.Views.EditNote extends Backbone.View
  template: JST['notes/edit']

  tagName: 'form'

  events:
    'submit': 'saveModel'

  render: ->
    this.$el.html(@template(note: @model))
    this

  saveModel: (e) ->
    @model.set('title', this.$('.note-title').val())
    @model.set('content', this.$('.note-content').val())
    Backbone.history.navigate('/', trigger: true)
    false