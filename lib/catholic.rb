module Catholic
  module ObjectExtensions

    def self.included(receiver)
      receiver.send :include, CripplingGuilt
    end

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

  module CripplingGuilt
  end

  ::Object.send(:include, ObjectExtensions)
end
