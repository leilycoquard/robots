class CreateRobots < ActiveRecord::Migration[6.1]
  def change
    create_table :robots do |t|
      t.string :image
      t.string :name
      t.string :intro
      t.text :description

      t.timestamps
    end
  end
end
