noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  # Define a meaningful icon for component from http://fontawesome.io/icons/
  c.icon = 'cog'
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.inPorts.add 'constant_factor', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.outPorts.add 'product'
  c