require 'mongoid'

module TopholdEngine

  class Engine < Rails::Engine

    config.generators do |g|
      g.orm :active_record
    end

    initializer "tophold_rack.load_app_instance_data" do |app|
      TopholdEngine.setup do |config|
        config.app_root = app.root
      end
    end   

#    initializer "tophold_engine.add_middleware" do |app|
#      app.middleware.use ServeGridfsImage
#    end

  end

end
