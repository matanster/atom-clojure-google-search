Shell = require 'shell'

module.exports =
  activate: ->
    atom.commands.add 'atom-workspace', 'online-clojure-search:google': => @search()
    atom.commands.add 'atom-workspace', 'online-clojure-search:docs': => @docssearch()

  search: ->
    editor = atom.workspace.getActiveTextEditor()
    buffer = editor.getBuffer()
    selections = editor.getSelections()

    buffer.transact ->
      for selection in selections
        cased = selection.getText()
        url = "https://encrypted.google.com/search?q=clojure #{cased}&oq=#{cased}"
        Shell.openExternal url

  docssearch: ->
    editor = atom.workspace.getActiveTextEditor()
    buffer = editor.getBuffer()
    selections = editor.getSelections()

    buffer.transact ->
      for selection in selections
        cased = selection.getText()
        url = "https://clojuredocs.org/clojure.core/#{cased}"
        Shell.openExternal url
