class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :name, unique: true, null: false, present: true
      t.text :password, minimum: 3, null: false

      t.timestamps
    end
  end
end
