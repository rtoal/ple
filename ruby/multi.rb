module A; end
module B; include A; end
module C; include A, B; end
module D; include C; end
module E; end
module F; include E; end
module G; include F; include C; end

p G.ancestors

