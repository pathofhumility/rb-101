def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no" # param == 'no' => false, so return 'no'
end

bar(foo) # foo returns 'yes', so bar(foo) => 'no'
