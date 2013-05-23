require 'spec_helper'

module Fendhal
  describe Controller do

    class TestController < Controller

      class Index < Action

        def action
          "Here's the action!"
        end

      end

      defines :index

    end

    let (:controller) { TestController.new }

    it 'defines the specified actions' do
      controller.should respond_to :index
    end

    it 'delegates to the respective classes for each action' do
      controller.index.should eq "Here's the action!"
    end

  end
end
