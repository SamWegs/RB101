if false
  greeting = “hello world”
end

greeting # nil since greeting is within a different scope it technically is defined,
# but not visibly to the call.
