class CreateLearners < ActiveRecord::Migration[5.2]
  def change
    create_table :learners do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :nationality
      t.string :native_language
      t.string :interested_language1
      t.string :language1_level
      t.string :interested_language2
      t.string :language2_level
      t.string :introduction
      t.timestamps null: false
    end
  end
end
