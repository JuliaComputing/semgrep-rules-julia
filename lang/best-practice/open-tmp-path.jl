#ruleid: open-tmp-path
open("/tmp/blah.txt", "r")

#ruleid: open-tmp-path
open("/tmp/blah.txt"; "r")

#ruleid: open-tmp-path
open("/tmp/blah.txt") do 
    print(1)
end

#TODO make const-propagation work here
x = "/tmp/blah.txt"
open(x, "w")

#ok: open-tmp-path
open("./tmp/blah.txt")

#ok: open-tmp-path
open("/home/user/tmp/blah.txt")