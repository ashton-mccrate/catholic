module Catholic
  module ObjectExtensions

    attr_writer :sin

    def sin
      @sin = 1 if !defined?( @sin )
      return @sin
    end

    def has_sin?
      return self.sin >= 1 ? true : false
    end

    def repent
      self.sin = 0
    end

  end

  ::Object.send(:include, ObjectExtensions)
end
