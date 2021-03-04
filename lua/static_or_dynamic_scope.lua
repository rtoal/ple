x = 'MAIN';
function second() print(x) end
function first() local x = 'FIRST'; second() end
first()
