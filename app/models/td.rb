class Td < ActiveRecord::Base

  belongs_to :issue

  def switch()
    if self.td_type == 'Requisitos'
      self.td_type = 'Testes'
    elsif self.td_type == 'Testes'
      self.td_type = 'Usabilidade'
    else
      self.td_type = 'Requisitos'
    end
  end
end
