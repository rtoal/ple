c =
  if employee?
    _supervisor = employee.supervisor
    if _supervisor?
      _city = _supervisor.city
      if _city?
        _city.name
      else
        undefined
    else
      undefined
  else
    undefined
