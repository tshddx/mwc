class AddChurchToUser < ActiveRecord::Migration
  def change
    add_column :users, :church, :string
  end
end
