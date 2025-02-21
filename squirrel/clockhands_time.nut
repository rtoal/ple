for (local i = 0 ; i < 11 ; i++)
{
    local t = (43200 * i + 21600) / 11
    printf("%02d:%02d:%02d\n", date(t, 'u').hour || 12, date(t).min, date(t).sec)
}