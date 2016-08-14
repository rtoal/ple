person =
  name: 'Alice'
  tryToSayHelloButFail: (delay) ->
    setTimeout (() -> console.log "Hi from #{@name} :("), delay
  sayHello: (delay) ->
    setTimeout (() => console.log "Hi from #{@name} :)"), delay

person.tryToSayHelloButFail 1000        # Hi from undefined :(
person.sayHello 1000                    # Hi from Alice :)
