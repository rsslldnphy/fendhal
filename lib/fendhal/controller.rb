module Fendhal
  module Controller

    def defines *actions
      actions.each do |action|
        define_method(action) { self.class.class_for(action).new(self).action }
      end
    end

    def class_for(action)
      const_get(action.to_s.camelcase)
    end

  end
end
