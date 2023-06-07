class CreateTds < ActiveRecord::Migration[6.1]
  def change
    create_table :tds do |t|
      t.string :td_type, default: 'Requisitos'
    end
  end
end
