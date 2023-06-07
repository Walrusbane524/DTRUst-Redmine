class AddForeignKeyToTds < ActiveRecord::Migration[6.1]
  def up
    remove_foreign_key :tds, :issues
    add_foreign_key :tds, :issues, on_delete: :cascade
  end

  def down
    remove_foreign_key :tds, :issues
    add_foreign_key :tds, :issues
  end
end

