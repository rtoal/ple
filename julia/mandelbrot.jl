using Colors, FileIO

function mandelbrot(width, height; maxiter=50)
    xmin, xmax = -2.0, 1.0
    ymin, ymax = -1.5, 1.5

    data = Array{Int}(undef, height, width)

    for py in 1:height
        y0 = ymin + (py - 1) * (ymax - ymin) / (height - 1)
        for px in 1:width
            x0 = xmin + (px - 1) * (xmax - xmin) / (width - 1)
            x, y = 0.0, 0.0
            it = 0
            while x*x + y*y <= 4 && it < maxiter
                x, y = x*x - y*y + x0, 2*x*y + y0
                it += 1
            end
            data[py, px] = it
        end
    end

    return data
end

function save_mandelbrot(data, filename)
    maxiter = maximum(data)
    img = reinterpret(Gray{Float64}, data ./ maxiter)
    save(filename, img)
end

d = mandelbrot(1600, 1200)
println("Mandelbrot set generated.")
save_mandelbrot(d, "mandelbrot.png")
