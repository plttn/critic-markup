{CompositeDisposable} = require 'atom'

module.exports = CriticMarkup =
  subscriptions: null

  activate: ->
    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace',
      'critic-markup:list-critics': => @listCritics()

  deactivate: ->
    @subscriptions.dispose()

  listCritics: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.insertText('Hello, World!')
