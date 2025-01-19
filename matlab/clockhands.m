t = ((0:10) + 0.5) * 43200 / 11;
h = floor(t / 3600) + 12 * (floor(t / 3600) == 0);
m = floor(mod(t / 60, 60));
s = floor(mod(t, 60));
fprintf('%02i:%02i:%02i\n',[h; m; s])