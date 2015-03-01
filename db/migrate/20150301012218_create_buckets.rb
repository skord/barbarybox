class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps null: false
    end
    add_index :buckets, :parent_id
  end
end
