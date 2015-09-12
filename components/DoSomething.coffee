# Basic template for your own component!

noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component

  # Define a meaningful icon for component from http://fontawesome.io/icons/
  c.icon = 'cog'

  # Provide a description on component usage
  c.description = 'do X'

  # Add input ports
  c.inPorts.add 'func', (event, payload) ->
    return unless event is 'data'
    c.outPorts.out.send payload

  c.inPorts.add 'type', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.inPorts.add 'state', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload
  
  c.inPorts.add ‘parameter1’, (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.inPorts.add ‘parameter2’, (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.inPorts.add 'input’, (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload


  # Add output ports
  c.outPorts.add 'output’

  # Finally return the component instance
  c
