class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.text :completed_text
      t.string :status

      t.timestamps
    end
  end
end
