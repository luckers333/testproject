class CreateContentEntries < ActiveRecord::Migration
  def change
    create_table :content_entries do |t|      
      t.string :title, limit: 100
      t.string :slug, limit: 100
      t.text :content
      t.string :image_url, limit: 100
      t.boolean :featured
      t.integer :order
      t.boolean :display_statesite

      t.timestamps
    end    
   end
end