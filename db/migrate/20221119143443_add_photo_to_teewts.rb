class AddPhotoToTeewts < ActiveRecord::Migration[7.0]
  def change
    add_column :teewts, :photo, :string
  end
end
