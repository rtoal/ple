for (local i = 0 ; i < 11 ; i++)
{
    local t = (43200 * i + 21600) / 11
    local h = t / 3600
    local m = t / 60 % 60
    local s = t % 60
    printf("%02d:%02d:%02d\n", h || 12, m, s)
}