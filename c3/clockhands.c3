import std::io;

fn void main()
{
    for (int i = 0; i < 11; i++)
    {
        int t = (i * 43200 + 21600) / 11;
        int h = t / 3600;
        int m = t / 60 % 60;
        int s = t % 60;
        io::printfn("%02d:%02d:%02d", h ?: 12, m, s);
    }
}