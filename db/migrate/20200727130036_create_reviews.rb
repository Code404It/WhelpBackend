class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :kid_id
      t.string :date
      t.float :points
      t.integer :score
      t.string :title
      t.string :description
      t.string :agreeable

      t.timestamps
    end
  end
end
