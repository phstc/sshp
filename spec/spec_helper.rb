require "rspec"
require "fileutils"
require "tempfile"

require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib sshp]))
require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib sshp version]))
require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib sshp alias]))

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter = "progress"
end
