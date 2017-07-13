class CreateGazooys < ActiveRecord::Migration[5.1]
  def change
    create_table :gazooys do |t|
      t.integer :user_id
      t.text :text
      t.timestamps
    end
  end
end
