require 'rails/generators'
class TopholdEngineGenerator < Rails::Generators::Base

  source_root File.expand_path('../templates', __FILE__)

  def install_engine_patch
    template "rails_engine_namespace_patch.rb", "config/initializers/rails_engine_namespace_patch.rb"
  end

end
