class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :university
      t.string :x_point
      t.string :y_point
      t.timestamps null: false

      
      
    end
  end
end
