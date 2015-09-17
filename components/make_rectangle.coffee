noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  
  c.inPorts.add 'func', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.inPorts.add 'type', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.inPorts.add 'state', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.inPorts.add ‘width’, (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.inPorts.add ‘height’, (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.inPorts.add ‘color’, (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload

  c.outPorts.add ‘shape’
  c