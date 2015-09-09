class CreateRecipes < ActiveRecord::Migration
  def change
    drop_table :recipes
    create_table :recipes do |t|
      t.string :name
      t.text :summary
      t.text :description
      t.timestamps
    end
  end
end
