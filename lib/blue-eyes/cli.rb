require "thor"

module Blue-eyes
  class CLI < Thor

    desc "-v", "Show Blue-eyes version number"
    map %w[-v --version] => :version
    # USAGE: blue-eyes -v
    def version
      say "Blue-eyes #{Blue-eyes::VERSION::STRING}"
    end


    # register(class_name, subcommand_alias, usage_list_string, description_string)
    register Blue-eyes::Generators::AppGenerator, "new", "new APP_PATH", "Creates a new Sinatra application"
    register Blue-eyes::Generators::ModelGenerator, "model", "model NAME", "Generate a model"
    register Blue-eyes::Generators::ControllerGenerator, "controller", "controller NAME", "Generate a controller"
    register Blue-eyes::Generators::ScaffoldGenerator, "scaffold", "scaffold NAME", "Generate a model with its associated views and controllers"

    def self.exit_on_failure
      true
    end
  end
end
