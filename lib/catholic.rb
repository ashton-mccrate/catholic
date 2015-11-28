require "catholic/version"

module Catholic
  module ObjectExtensions

    attr_writer :sin

    def sin
      @sin = true if !defined?( @sin )
      return @sin
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
