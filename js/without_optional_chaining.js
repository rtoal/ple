import assert from "assert/strict"

const employee = { supervisor: { city: { name: "LA" } } }

const cityName = (() => {
  if (employee === null || employee === undefined) {
    return undefined
  }
  const _supervisor = employee.supervisor
  if (_supervisor === null || _supervisor === undefined) {
    return undefined
  }
  const _city = _supervisor.city
  if (_city === null || _city === undefined) {
    return undefined
  }
  return _city.name
})()

assert(cityName === "LA")
