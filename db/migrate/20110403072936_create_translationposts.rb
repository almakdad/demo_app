class CreateTranslationposts < ActiveRecord::Migration
  def self.up
    create_table :translationposts do |t|
      t.string :text
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :translationposts
  end
end
