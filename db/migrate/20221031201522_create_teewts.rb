class CreateTeewts < ActiveRecord::Migration[7.0]
  def change
    create_table :teewts do |t|
      t.references :user, null: false, foreign_key: true
      t.text :conteudo

      t.timestamps
    end
  end
end
