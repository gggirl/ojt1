class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :commenter
      t.text :body
      t.references :forum

      t.timestamps
    end
    add_index :replies, :forum_id
  end
end
