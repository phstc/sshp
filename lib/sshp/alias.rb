require "yaml"

module SSHP
  module Alias
    def self.create_or_update_by_name name, args
      all[name] = args
      save
    end

    def self.all
      @all ||= YAML.load File.open filename, "r"
    rescue Errno::ENOENT
      @all = {}
    end

    private

    def self.filename
      File.join Dir.home, ".sshp"
    end

    def self.save
      File.open(filename, "w") { |f| f.write all.to_yaml }
    end
  end
end

