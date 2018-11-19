class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :wechat_id
      t.string :phone

      t.timestamps
    end
  end
end
