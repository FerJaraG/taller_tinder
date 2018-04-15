class AddBioAndImagenToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bio, :string
    add_column :users, :imagen, :string
  end
end
