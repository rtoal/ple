fail unless nil.class == NilClass
fail unless false.class == FalseClass
fail unless true.class == TrueClass
fail unless 3.class == Integer
fail unless (2**1000).class == Integer
fail unless 2.0.class == Float
fail unless :dog.class == Symbol
fail unless "dog".class == String
fail unless (1..5).class == Range
fail unless [1,2,3,4,5].class == Array
fail unless {x: 1, y: 2}.class == Hash
fail unless {'x' => 1, 'y' => 2}.class == Hash
