class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :time
      t.string :place
      t.integer :capacity
      t.string :photo
      t.string :deadline
      t.boolean :overdue
      t.boolean :full
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
