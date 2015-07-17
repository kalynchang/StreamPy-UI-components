noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component

  # Define a meaningful icon for component from http://fontawesome.io/icons/
  c.icon = 'camera'

  # Provide a description on component usage
  c.description = 'sink that prints mean up to this point and next val'

  # Add input ports
  c.inPorts.add 'input_stream',
    
    process: (event, payload) ->
      # What to do when port receives a packet
      return unless event is 'data'
      c.outPorts.out.send payload

  # Add output ports
  

  # Finally return the component instance
  c
