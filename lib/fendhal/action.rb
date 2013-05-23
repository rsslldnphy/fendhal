module Fendhal
  class Action < SimpleDelegator

    def action
    end

    def respond_to *formats
      super() { |format| formats.each { |f| format.send(f) { send f } } }
    end

    def all
    end

    def text
    end

    def html
    end

    def js
    end

    def ics
    end

    def csv
    end

    def xml
    end

    def yaml
    end

    def rss
    end

    def atom
    end

    def json
    end
  end
end

