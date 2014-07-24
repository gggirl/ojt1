class CreateChatRooms < ActiveRecord::Migration
  def change
    create_table :chat_rooms do |t|
      t.string :message
      t.text :content

      t.timestamps
    end
  end
end
