using Base.Threads: threadid, @threads

states = zeros(10)
Threads.@threads for i = 1:10
    # ruleid: index-by-threadid
    tid = Threads.threadid()
    old_val = states[tid]
    new_val = old_val + i
    states[tid] = new_val
end

@threads for i = 1:10
    # ruleid: index-by-threadid
    tid = threadid()
    val = states[tid]
    states[tid] = val + 1
end

@threads :foo for i = 1:10
    # ruleid: index-by-threadid
    val = states[Threads.threadid()]
end

Threads.@threads :static for i = 1:10
    # ok: index-by-threadid
    val = states[Threads.threadid()]
end
