module TopholdEngine

  class Engine < Rails::Engine

    initializer "tophold_rack.load_app_instance_data" do |app|
      TopholdEngine.setup do |config|
        config.app_root = app.root
      end
    end   

#    initializer "tophold_engine.add_middleware" do |app|
#      app.middleware.use ServeGridfsImage
#    end

    rake_tasks do
      #require 'resque/tasks'
    end

  end

end
