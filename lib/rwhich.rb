# Provides a mixin that add's #which
module RWhich

  # returns the first executable match of filename in the path
  #
  # @note Only supports the base use case of the which command line program
  #
  # @param [String] filename the filename to find
  # @param [String] path the path to search, defaults to ENV['PATH']
  # @param [String] path_sep the path separator, defaults to File::PATH_SEPARATOR
  def which filename, path=ENV['PATH'], path_sep=File::PATH_SEPARATOR
    path = path.split(path_sep).find { |path| File.executable? File.join(path, filename) }
    path && File.expand_path(filename, path)
  end
end
