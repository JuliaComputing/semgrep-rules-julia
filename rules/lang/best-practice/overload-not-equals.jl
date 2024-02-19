#ruleid: overload-not-equals
!=(x::Float32, y::Float32) = true

#ruleid: overload-not-equals
function !=(x::Float32, y::Float32)  
    return true
end

#ok: overload-not-equals
const != = !(==)