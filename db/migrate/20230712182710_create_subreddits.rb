class CreateSubreddits < ActiveRecord::Migration[7.0]
  def change
    create_table :subreddits do |t|
      t.string :title
      t.text :sidebar

      t.timestamps
    end
  end
end
