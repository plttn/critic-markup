{$, $$, SelectListView, View } = require 'atom-space-pen-views'
CSON = require 'season'
_ = require 'underscore-plus'

module.exports =
class CriticMarkupView extends SelectListView
	possibleFilterKeys: ['title']
	activate: ->
		new CriticMarkupView

	initialize: (serializeState) ->
		super
		@addClass('critic-markup')

	serialize: ->

	getFilterKey: ->
		filter = 'title'
		input @filterEditorView.getText()
		inputArr = input.split(':')

		if inputArr.length > 1 and inputArr[0] in @possibleFilterKeys
			filter = inputArr[0]

		return filter

	getFilterQuery: ->
		input = @filterEditorView.getText()
		inputArr = input.split(':')

		if inputArr.length > 1
			input = inputArr[1]

		return input

	cancelled: ->
		@hide()
	
