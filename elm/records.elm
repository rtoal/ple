import ElmTest exposing (elementRunner, suite, defaultTest, assertEqual)
import List exposing (map)

boss = {name = "Alice", salary = 200000 }
worker = {name = "Bob", salary = 50000, supervisor = boss}
newWorker = {worker | name = "Carol" }

payrollTax : {a | salary : Float} -> Float
payrollTax {salary} =
  salary * 0.15

main =
  elementRunner <| suite "Exploring records" <| map defaultTest
    [ "Alice"  `assertEqual` .name boss
    , boss `assertEqual` worker.supervisor
    , 7500.0 `assertEqual` payrollTax worker
    , boss `assertEqual` newWorker.supervisor
    ]
