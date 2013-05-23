require 'spec_helper'

module Fendhal

  class TestAction < Action

    def action
      respond_to :html, :csv
    end

  end

  class MockController

    def respond_to &block
      block.call format
    end

    class Format
      def method_missing name, *args, &block
        self
      end
    end

    def format
      @format ||= Format.new
    end

  end

  describe Action do

    let (:action)     { Action.new(controller) }
    let (:controller) { MockController.new     }
    let (:format)     { controller.format      }

    it 'responds to formats by calling the respective methods' do
      format.should_receive(:html)
      format.should_receive(:csv)
      action.respond_to(:html, :csv)
    end

  end
end
