class CreateDocters < ActiveRecord::Migration[6.1]
  def change
    create_table :docters do |t|
      t.string :name
      t.string :email
      t.integer :contect_number

      t.timestamps
    end
  end
end
