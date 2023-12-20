class AddImageToTurmas < ActiveRecord::Migration[7.0]
  def change
    add_column :turmas, :image, :string
  end
end
