#ruleid: rand-bool
rand(Bool)

function some_rand_function(x)
    #ruleid: rand-bool
    if rand(Bool)
        println("Random")
    end
end

#ok: rand-bool
rand() < 0.7  # this is fine

x = rand()
#ruleid: rand-bool
if rand(Bool)
    do_something()
else
    do_something_else()
end

#ok: rand-bool
y = ok()
if y < 0.5
    do_something()
else
    do_something_else()
end

#ruleid: rand-bool
rand(Bool) && action()

#ok: rand-bool
flag = rand(Bool)

#ruleid: rand-bool
if some_flag && rand(Bool) || other_flag
    println("Random")
end

