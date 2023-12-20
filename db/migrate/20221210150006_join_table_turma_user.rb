class JoinTableTurmaUser < ActiveRecord::Migration[7.0]
  def change
    create_join_table :turmas, :users do |t|
      t.index [:turma_id, :user_id]
      t.index [:user_id, :turma_id]
    end
  end
end
