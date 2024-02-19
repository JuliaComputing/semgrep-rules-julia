
#ruleid: chained-const-assignment
const a = b = 1

#ruleid: chained-const-assignment
const a = b = c

#ruleid: chained-const-assignment
const a = b = c = 1

#ruleid: chained-const-assignment
const a = b = "abc"


#ok: chained-const-assignment
a = b = 1
