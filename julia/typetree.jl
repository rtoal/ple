using InteractiveUtils

function ttree(t::Type, indent = "    ")
    println(string(indent, t))
    indent *= "    "
    for st in subtypes(t)
        if st != Any && !contains(string(st), ".")
            ttree(st, indent)
        end
    end
end

ttree(Any)
