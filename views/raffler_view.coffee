class Raffler.Views.EntriesIndex extends Backbone.View
  template:  _.template($('#item-template').html())
  events:
    'click #new': 'createEntry'
    'click #draw': 'drawWinner'
    'click #clear': 'clearWinner'
    'click li': 'kill'
  initialize: ->
    @collection.on('sync', @render, this)
    @collection.on('add', @render, this)
    @collection.on('destroy', @render, this)
  render: ->
    # console.log @el
    @$el.html(@template(entries: @collection.toJSON()))
    @
  createEntry: ->
    @collection.create name: $('#new_entry').val()
  clearWinner:  ->
    for model in @collection.models
      model.set(winner: false)
      model.save()
  drawWinner: ->
    winner = @collection.shuffle()[0]
    if winner
      winner.set(winner: true)
      winner.save()
  kill: (ev) ->
      console.log $(ev.target).attr('id')
      item=@collection.find (model) ->
          model.get("id") is $(ev.target).attr('id')
      item.destroy()