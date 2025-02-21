t <- floor((43200 * 0:10 + 21600) / 11)
h <- floor(t / 3600) + 12 * (floor(t / 3600) == 0)
m <- floor(t / 60) %% 60
s <- t %% 60
cat(paste(gettextf("%02d:%02d:%02d", h, m, s), collapse = "\n"))