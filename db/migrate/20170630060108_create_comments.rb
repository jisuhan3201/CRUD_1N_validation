class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
      t.integer :community_id
      t.text :comment
        
      t.timestamps null: false
    end
  end
end
