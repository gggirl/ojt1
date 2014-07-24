class CreateChatcontents < ActiveRecord::Migration
  def change
    create_table :chatcontents do |t|
      t.text :content

      t.timestamps
    end
  end
end
