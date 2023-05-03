class CreateTds < ActiveRecord::Migration[6.1]
  def change
    create_table :tds do |t|
      t.references :issue, foreign_key:true, default: 1
      t.string :td_type, default: 'Requisitos'
    end
  end
end
