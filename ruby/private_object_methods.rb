def hello = "hello"
fail unless Object.private_instance_methods.include? :hello
