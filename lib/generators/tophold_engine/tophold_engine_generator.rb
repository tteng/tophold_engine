require 'rails/generators'
class TopholdEngineGenerator < Rails::Generators::Base

  source_root File.expand_path('../templates', __FILE__)

  def install_engine_patch
    template "rails_engine_namespace_patch.rb", "config/initializers/rails_engine_namespace_patch.rb"
    template "sunspot_mongoid_patch.rb",        "config/initializers/sunspot_mongoid_patch.rb"
    template "auto_commit_sunspot.rb",          "lib/auto_commit_sunspot.rb"
  end

end
