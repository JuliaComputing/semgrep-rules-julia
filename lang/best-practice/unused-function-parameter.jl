#ruleid: unused-function-parameter
function foo(x)
    y = 2
    return y
  end
  
  #ruleid: unused-function-parameter
  function foo(x)
    y = 2
    y
  end
  
  #ok: unused-function-parameter
  function foo(x)
    x = 3
  end
  
  #ok: unused-function-parameter
  function foo(x)
    bar(x)
  end
  
  #ok: unused-function-parameter
  function foo(x)
    y = x
    return y
  end
  