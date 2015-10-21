module Catholic
  module ObjectExtensions

    def has_sin?
      return true
    end

  end

  ::Object.send(:include, ObjectExtensions)
end
