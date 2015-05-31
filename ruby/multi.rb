module G; end
module F; end
module E; include F; end
module D; end
module C; include D; include E; end
module B; include G; include F; end
class A; include B; include C; end

p A.ancestors
