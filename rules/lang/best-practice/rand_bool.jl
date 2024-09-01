#ruleid: rand-bool
rand() < 0.5

function some_rand_function(x)
    #ruleid: rand-bool
    if rand() < 0.5
        println("Random")
    end
end

#ok: rand-bool
rand() < 0.7  # this is fine

x = rand()
#ruleid: rand-bool
if x < 0.5
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
x < 0.5 && action()

#ok: rand-bool
flag = rand(Bool)

#ruleid: rand-bool
if some_flag && rand() < 0.5 || other_flag
    println("Random")
end

