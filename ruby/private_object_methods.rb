def hello
  "hello"
end

fail unless Object.private_instance_methods.include? :hello
