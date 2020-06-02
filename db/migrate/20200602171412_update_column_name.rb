class UpdateColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :zipcode, :zip
  end
end
