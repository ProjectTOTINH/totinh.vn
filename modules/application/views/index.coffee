define [
  'backbone'
  getNameTempFileWithTimestamp('text!application/templates/index')
],(Backbone,template) ->
  return ->
    View = Backbone.View.extend
      el: $('.mainContainer')
      
      initialize: ->
        console.log template
        @$el.html(template)
        
        $('.classDemo').html "running......."    
    
    new View
