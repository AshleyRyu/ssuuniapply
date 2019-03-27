class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :university
      t.string :subject
      t.string :close
      t.string :first_result
      t.string :interview
      t.string :finale_rusult
      t.string :x_point
      t.string :y_point
      


      t.timestamps null: false
    end
  end
end
