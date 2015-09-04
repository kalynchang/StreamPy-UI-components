noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'func'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'type'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'state'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'in'
    # Do something with the packet, then
    c.outPorts.out.send payload
  
  c