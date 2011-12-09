require_relative '../rwhich'

# Mixin .which into File
class File
  extend RWhich
end
