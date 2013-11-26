unless defined?(Devise)
  require 'devise'
end

require "devise_subscriber"

Devise.add_module :subscriber, :model => "devise_subscriber/model"

module DeviseSubscriber
  # Your code goes here...
end

require "devise_subscriber/rails"
