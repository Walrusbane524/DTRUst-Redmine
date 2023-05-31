class Td < ActiveRecord::Base

  belongs_to :issue

  def set_type(type)
    self.td_type = type
  end
end
