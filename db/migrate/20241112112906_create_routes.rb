class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :type
      t.float :distance
      t.integer :difficulty
      t.timestamps
    end
  end
end
