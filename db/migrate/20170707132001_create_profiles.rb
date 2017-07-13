class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :avatar
      t.text :background
      t.text :name
      t.text :place
      t.text :website
      t.text :bio
      t.timestamps
    end

    remove_column  :users, :avatar

  end
end
