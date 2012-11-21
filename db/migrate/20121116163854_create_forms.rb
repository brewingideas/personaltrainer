class AddAvatarColumnsToUsers < ActiveRecord::Migration
  def self.up
    add_attachment :users, :avatar
  end

  def self.down
    remove_attachment :users, :avatar
  end
end

class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :first_name
      t.string :second_name
      t.integer :age
      t.string :training
      t.integer :time
      t.string :activity
      t.text :history
      t.text :goals

      t.timestamps
    end
  end
end
