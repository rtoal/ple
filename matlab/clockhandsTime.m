t = ((0:10) * 43200 + 21600) / 11;
clock = datetime(t,'ConvertFrom','posixtime');
clock.Format = 'hh:mm:ss';
fprintf('%s\n', clock);