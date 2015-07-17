noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  c.inPorts.add 'input_stream', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.outPorts.add 'output_list'
  c.outPorts.add 'state'
  c