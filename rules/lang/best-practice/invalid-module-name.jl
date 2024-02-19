#ruleid: invalid-module-name
module Amod
    x = 2
    module Amod
    y =3
    end
end


#ok: invalid-module-name
module Amod
    x = 2
    module Bmod
    y =3
    end
end
