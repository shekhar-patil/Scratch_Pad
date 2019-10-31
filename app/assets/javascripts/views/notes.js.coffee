class App.Views.Notes extends Backbone.View
  template: JST['notes/index']

  render: ->
    this.$el.html(@template(notes: @collection))
    this