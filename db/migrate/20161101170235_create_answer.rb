class CreateAnswer < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question, index: true 
      t.belongs_to :user, index: true
      t.string :answer
      t.integer :likes
    end
  end
end
