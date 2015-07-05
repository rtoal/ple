def hello
  "hello"
end

p Object.private_instance_methods.include? :hello  # true
