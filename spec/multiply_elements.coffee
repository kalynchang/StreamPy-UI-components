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
  c.inPorts.add 'multiplier', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.outPorts.add 'product'

  c