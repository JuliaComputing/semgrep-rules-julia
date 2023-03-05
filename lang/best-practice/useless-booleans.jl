
# ruleid:useless-booleans
if true
    println(1)
else
    println(2)
end

# ruleid:useless-booleans
if false
    println(1)
else
    println(2)
end

x = false 

# ruleid:useless-booleans
if x && true
    println(1)
else
    println(2)
end

# ruleid:useless-booleans
if x && false
    println(1)
else
    println(2)
end

# ruleid:useless-booleans
if x || false
    println(1)
else
    println(2)
end

# ruleid:useless-booleans
if x || true
    println(1)
else
    println(2)
end

# ok:useless-booleans
while true #works! 
    break
end

# ruleid:useless-booleans
while x && true
    break
end
