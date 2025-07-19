import std::io;

fn void main()
{
    for (int c = 1; c < 41; c++)
    {
        for (int b = 1; b < c; b++)
        {
            for (int a = 1; a < b; a++)
            {
                if (a * a + b * b == c * c)
                {
                    io::printfn("%d, %d, %d", a, b, c);
                }
            }
        }
    }
}