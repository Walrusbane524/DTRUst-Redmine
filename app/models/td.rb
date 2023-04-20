class Td < ActiveRecord::Base

  belongs_to :issue

  def switch()
    if self.istd == true
      self.istd = false
    else
      self.istd = true
    end
  end
end
