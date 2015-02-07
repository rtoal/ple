person =
  name: 'Alice'
  tryToSayHelloButFail: (delay) ->
    setTimeout (() -> console.log "Hi... from #{@name}"), delay
  sayHelloUsingAnExtraVariable: (delay) ->
    self = this
    setTimeout (() -> console.log "Hi from #{self.name}!"), delay
  sayHello: (delay) ->
    setTimeout (() => console.log "Hi from #{@name} :)"), delay

person.tryToSayHelloButFail(1000)           # Hi... from undefined
person.sayHelloUsingAnExtraVariable(1000)   # Hi from Alice!
person.sayHello(1000)                       # Hi from Alice :)
