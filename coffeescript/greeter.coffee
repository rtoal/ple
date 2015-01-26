person =
  name: 'Alice'
  sayHelloTheWrongWay: (delay) ->
    setTimeout (() -> console.log "Hi... from #{@name}"), delay
  sayHelloUsingAnExtraVariable: (delay) ->
    self = this
    setTimeout (() -> console.log "Hi from #{self.name}!"), delay
  sayHello: (delay) ->
    setTimeout (() => console.log "Hi from #{@name} :)"), delay

person.sayHelloTheWrongWay(1000)
person.sayHelloUsingAnExtraVariable(1000)
person.sayHello(1000)
