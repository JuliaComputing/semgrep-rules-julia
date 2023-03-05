
# ok:compare-nothing
x = nothing

# ruleid:compare-nothing
if x == nothing
    println(1)
else
    println(2)
end

# ruleid:compare-nothing
if x != nothing
    println(1)
else
    println(2)
end

# ruleid:compare-nothing
if nothing == x
    println(1)
else
    println(2)
end

# ruleid:compare-nothing
if nothing != x
    println(1)
else
    println(2)
end

y=2 

# ruleid:compare-nothing
if y ==2 && x == nothing
    println(1)
else
    println(2)
end

# ruleid:compare-nothing
if x == nothing || y == 2
    println(1)
else
    println(2)
end

# ok:compare-nothing
if nothing === x
    println(1)
else
    println(2)
end

# ok:compare-nothing
if nothing !== x
    println(1)
else
    println(2)
end

# ok:compare-nothing
if x === nothing
    println(1)
else
    println(2)
end

# ok:compare-nothing
if isnothing(X)
    println(1)
else
    println(2)
end