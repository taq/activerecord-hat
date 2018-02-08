require "activerecord/hat/version"

module ActiveRecord
  module Attributes
    def hat(attr)
      self.class.human_attribute_name(attr)
    end
  end
end
