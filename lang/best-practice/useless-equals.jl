#ruleid: useless-equals
if x == x 
    println(1)
end

#ruleid: useless-equals
if x != x 
    println(1)
end

#ruleid: useless-equals
if x === x 
    println(1)
end

#ruleid: useless-equals
if x !== x 
    println(1)
end

#ok: useless-equals
@test x == x