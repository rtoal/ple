# Checks on the basic types
true = is_integer 8919821982888885323298
false = is_integer 5.0
true = is_float 2.0
true = is_atom :ok
true = is_atom :false
true = is_atom false
true = false == :false
true = is_atom nil
true = is_tuple {"Hi", 3, :true}
true = is_list ["Hi", 3, :true]
true = is_function(fn x -> x * x end)
true = is_map %{x: 3, y: 5}
true = is_bitstring <<7::3, 199, 8000::31>>
true = is_bitstring <<420>>
true = is_bitstring "Elixir is cool 😎💃🏽😍"
true = is_pid self()
true = is_reference make_ref()

# Other checks (numnber, boolean, nil, binary)
true = is_number(9.8)
true = is_number(5)
true = is_boolean(true)
true = is_boolean(false)
true = is_boolean(:false)
true = is_nil(nil)
false = is_binary <<7::3, 199, 8000::31>>
true = is_binary <<420>>
true = is_binary "Elixir is cool 😎💃🏽😍"

IO.puts("Everything checks out!")
