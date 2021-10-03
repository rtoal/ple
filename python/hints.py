dozen: int = 12
found: bool
found = False
from typing import List, Set, Dict, Tuple
def first_two(a: List[float]) -> Tuple[float, float]:
     return (a[0], a[1])
 
assert first_two([False, 0, 17, 2.2, []]) == (False, 0)
