module Fendhal
  class Controller < ActionController::Base

    def self.defines *actions
      actions.each do |action|
        define_method(action) { class_for(action).new(self).action }
      end
    end

    private

    def class_for(action)
      self.class.const_get(action.to_s.camelcase)
    end

  end
end
