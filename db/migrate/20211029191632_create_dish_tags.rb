class CreateDishTags < ActiveRecord::Migration[6.1]
  def change
    create_table :dish_tags do |t|
      t.belongs_to :dish, null: false, foreign_key: true
      t.belongs_to :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
