class CreateAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :appearances do |t|
      t.integer :guest_key
      t.integer :episode_key
      t.integer :rating

      t.timestamps
    end
  end
end
