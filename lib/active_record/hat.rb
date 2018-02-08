require "active_record/hat/version"

module ActiveRecord
  module Attributes
    def hat(attr)
      self.class.human_attribute_name(attr)
    end
  end
end
