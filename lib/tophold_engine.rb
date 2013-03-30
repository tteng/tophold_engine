require "tophold_engine/version"
require "tophold_engine/engine"

module TopholdEngine

  mattr_accessor :app_root

  def self.setup
    yield self
  end

end
