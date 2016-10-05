class CreateReviews < ActiveRecord::Migration[5.0]
  def up
    create_table :reviews do |t|
      t.string :title, :limit => 50, :default => ""
      t.integer :rating
      t.text :body
      t.references :reviewable, :polymorphic => true
      t.references :reviewer, :polymorphic => true
      t.string :role, :default => "reviews"
      t.timestamps
    end

    add_index :reviews, :reviewable_type
    add_index :reviews, :reviewable_id
    add_index :reviews, :reviewer_id
    add_index :reviews, :reviewer_type
  end

  def down
    drop_table :reviews
  end
end

