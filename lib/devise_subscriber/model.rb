module Devise
  module Models
    module Subscriber
      # Method will come here
      
      extend ActiveSupport::Concern
      
      included do
        #after_create :add_into_subscriber
        after_save :process_subscription

        has_one :subscriber, as: :subscrible 

        attr_accessor :subscribe_value
      end

      def subscribe
        if self.subscribe_value.nil?
          self.subscriber.subscribe if self.subscriber
        else
          self.subscribe_value
        end
      end

      def subscribe=(value)
        self.subscribe_value = value
      end

      def process_subscription
        if self.subscribe_value
          self.subscribe!
        else
          self.unsubscribe!
        end
      end

      def subscribe!
        self.set_subscription(true)
      end

      def unsubscribe!
        self.set_subscription(false)
      end

      def set_subscription value
        if self.subscriber
          self.subscriber.update_attributes({subscribe: value, email: self.email})
        else
          self.create_subscriber({subscribe: value, email: self.email })
        end 
      end
    end
  end
end
