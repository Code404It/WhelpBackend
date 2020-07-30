class CreateKids < ActiveRecord::Migration[6.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.string :image_url
      t.float :discipline_level

      t.timestamps
    end
  end
end
