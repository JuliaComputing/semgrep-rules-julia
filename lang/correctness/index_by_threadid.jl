using Base.Threads

states = zeros(10)
Threads.@spawn for i = 1:10
    # ruleid: index-by-threadid
    tid = Threads.threadid()
    old_val = states[tid]
    new_val = old_val + i
    states[tid] = new_val
end

@spawn begin
    # ruleid: index-by-threadid
    tid = threadid()
    val = states[tid]
    states[tid] = val + 1
end

Threads.@spawn for i = 1:10
    # ruleid: index-by-threadid
    val = states[threadid()]
end


Threads.@spawn for i = 1:10
    # ruleid: index-by-threadid
    val = states[Threads.threadid()]
end
