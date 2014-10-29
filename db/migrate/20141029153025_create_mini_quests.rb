class CreateMiniQuests < ActiveRecord::Migration
  def change
    create_table :mini_quests do |t|
      t.string :title
      t.text :description
      t.text :completed_text
      t.string :status

      t.timestamps
    end
  end
end
