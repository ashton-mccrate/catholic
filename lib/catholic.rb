require "catholic/version"

module Catholic
  module ObjectExtensions

    attr_accessor :sin

    def initialize
      self.sin = true
      super()
    end

    def has_sin?
      return self.sin ? true : false
    end

    def repent
      self.sin = false
    end

  end

  ::Object.send(:include, ObjectExtensions)
end
