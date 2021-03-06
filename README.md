SuperTagger
===========

Generates ctags-compatible tags for javascript, coffeescript, scss, and ruby
(ctags supports ruby, but supertagger adds some missing tags)

Vim plugin
-----------
This repository can be used as a Vim plugin,
if you are using Vundle just add the following line to your .vimrc and run :BundleInstall

```vim
Bundle 'elentok/supertagger'
```


The 'supertagger' command
--------------------------

* looks for an existing "tags" file in this directory or a parent directory
* if no "tags" file was found, looks for a ".git" folder and creates the "tags" file there
* The 'tagger' command also calls ctags to generate tags for Ruby code and everything else

Ignoring certain files and directories
--------------------------------------

In the root of your project create a file called ".tagsignore"
where each line is a pattern to exclude.

For example:

```
node_modules/*
components/*
tmp/*
```


Supported formats
-----------------

Javascript:

```javascript

Class1 = Backbone.extend({
  initialize: function() { ... }
});

Namespace1.Class2 = L.Class.extend({
  doSomething: function(someValue) { ... }
});

Class1.jsStaticMethod = function() { ... }
Namespace3.JsStaticClass = { .. }

```

Coffeescript:

```coffeescript

Animal = Backbone.extend
  initialize: (@name) ->
  speak: ->
    console.log "Hi, I'm #{@name}"


Animal.Dog = Animal.extend
  speak: ->
    console.log "woof"

class SomeClass
  method1: ->
  method2: =>

class Namespace1.ExtendingClass extends SomeClass
  method4: ->

AnObject.coffeeStaticMethod = ->
Namespace3.CoffeeStaticClass =

```

SCSS:
```scss
@mixin mixin1 { }
@mixin mixin2($var1) { }

```

Ruby:
```ruby
class Module1::Class1
module Module1::SubModule
class Module1::SubModule::Class2
```
