module Devise
  module Models
    module Subscriber
      # Method will come here
      
      extend ActiveSupport::Concern
      
      included do
        after_create :add_into_subscriber 
      end

      def add_into_subscriber
      end

      def subscribe
      end

      def unsubscribe
      end
    end
  end
end
