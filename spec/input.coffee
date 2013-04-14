Animal = Backbone.extend
  initialize: (@name) ->
  speak: ->
    console.log "Hi, I'm #{@name}"


Animal.Dog = Animal.extend
  speak: ->
    console.log "woof"

Animal.Cat = Animal.extend
  speak: ->
    console.log "meow"

Animal.Tiger = OpenLayers.Class
  speak: ->
    console.log "meow"

class SomeClass
  method1: ->

  method2: =>

class Namespace1.SomeOtherClass
  method3: ->

class Namespace1.ExtendingClass extends SomeClass
  method4: ->

AnObject.coffeeStaticMethod = ->
  console.log "hello"

Namespace3.CoffeeStaticClass =
  value1: 123
