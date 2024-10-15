#ok: rand-bool-variable
rand() < 0.5

function some_rand_function(x)
    #ok: rand-bool-variable
    if rand() < 0.5
        println("Random")
    end
end

#ok: rand-bool-variable
rand() < 0.7  # this is fine

x = rand()
#ruleid: rand-bool-variable
if x < 0.5
    do_something()
else
    do_something_else()
end

#ok: rand-bool-variable
y = ok()
if y < 0.5
    do_something()
else
    do_something_else()
end

#ruleid: rand-bool-variable
x < 0.5 && action()

#ok: rand-bool-variable
flag = rand(Bool)

#ok: rand-bool-variable
if some_flag && rand() < 0.5 || other_flag
    println("Random")
end

