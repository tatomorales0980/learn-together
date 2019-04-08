class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nativelanguage_id, :integer
    add_column :users, :nativelevel, :integer
    add_column :users, :learnlanguage_id, :integer
    add_column :users, :learninglevel, :integer
    add_column :users, :speaklanguage_id, :integer
    add_column :users, :speaklevel, :integer
  end
end
