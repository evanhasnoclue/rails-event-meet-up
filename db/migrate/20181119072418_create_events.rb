class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :time
      t.string :address
      t.integer :capacity
      t.string :photo
      t.date :deadline
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
