# frozen_string_literal: true

module MyAquarium
  # major.features.minor.hotfixes
  VERSION = "0.0.0.0"

  def self.gem_version
    Gem::Version.new VERSION
  end
end
