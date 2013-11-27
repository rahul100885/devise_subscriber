require 'rails/generators/migration'

class DeviseSubscriberGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  desc "Generate subscriber model with devise"
  
  def create_model_file
    if model_exists?
      say "Model already exists"
    else
      generate "model", "subscriber subscrible:references{polymorphic} email:string subscribe:boolean"
    end
  end

#  def run_other_generators
#    if model_exists?
#      say "Model already exists"
#    else
#      invoke "model", "subscriber subscrible:references{polymorphic} email:string subscribe:boolean"
#    end
#  end
#
  protected
  def model_exists?
    File.exists?(File.join(destination_root, model_path))
  end

  def model_path
    @model_path ||= File.join("app", "models", "subscriber.rb")
  end


#  def self.source_root
#    @_devise_source_root ||= File.expand_path("../templates", __FILE__)
#  end
#
#  def self.orm_has_migration?
#    Rails::Generators.options[:rails][:orm] == :active_record
#  end
#
#  def self.next_migration_number(dirname)
#    if ActiveRecord::Base.timestamped_migrations
#      Time.now.utc.strftime("%Y%m%d%H%M%S")
#    else
#      "%.3d" % (current_migration_number(dirname) + 1)
#    end
#  end
#
#  class_option :orm
#  class_option :migration, :type => :boolean, :default => orm_has_migration?
#
#  def invoke_orm_model
#    if model_exists?
#      say "* Model already exists."
#    elsif options[:orm].present?
#      invoke "model", ["Subscriber"], :migration => false, :orm => options[:orm]
#
#      unless model_exists?
#        abort "Tried to invoke the model generator for '#{options[:orm]}' but could not find it.\n" <<
#          "Please create your model by hand before calling `rails g devise_subscriber`."
#      end
#    else
#      abort "Cannot create a devise model because config.generators.orm is blank.\n" <<
#        "Please create your model by hand or configure your generators orm before calling `rails g devise_subscriber`."
#    end
#  end
#
#  def create_migration_file
#    migration_template 'migration.rb', "db/migrate/create_devise_subscriber.rb"
#  end
#
#  protected
#
#  def model_exists?
#    File.exists?(File.join(destination_root, model_path))
#  end
#
#  def model_path
#    @model_path ||= File.join("app", "models", "#{file_path}.rb")
#  end
end
