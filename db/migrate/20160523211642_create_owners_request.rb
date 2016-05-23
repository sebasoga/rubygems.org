class CreateOwnersRequest < ActiveRecord::Migration
  def change
    create_table :owners_requests do |t|
      t.integer :rubygem_id, null: false
      t.text :description
      t.string :contact_email, null: false
      t.boolean :closed, null: false, default: false
      t.timestamps
    end

    add_index :owners_requests, :rubygem_id
  end
end
