class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :languages do |t|
      t.index [:user_id, :user_id]
      t.index [:language_id, :language_id]
      t.integer :level
    end
  end
end
