module ActiveRecord
  class Base
    def initialize(attributes = {})
      @attributes = attributes
    end

    def id
      @attributes[:id]
    end

    def title
      @attributes[:title]
    end

    def self.abstract_class=(value)
      # Not implemented
    end

    def self.find(id)
      # Not implemented
    end    
  end
end
