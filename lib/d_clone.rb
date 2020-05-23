require "d_clone/version"
require "d_clone/array"
require "d_clone/hash"

class Array
  include DClone::Array
end

class Hash
  include DClone::Hash
end