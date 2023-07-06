using Base.Threads

a = zeros(10)

# ruleid: threads-macro
Threads.@threads for i = 1:10
    a[i] = Threads.threadid()
end

# ruleid: threads-macro
@threads for i = 1:10
    a[i] = threadid()
end

# ok: threads-macro
Threads.@threads :static for i = 1:10
    a[i] = Threads.threadid()
end
