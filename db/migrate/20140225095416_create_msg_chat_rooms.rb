class CreateMsgChatRooms < ActiveRecord::Migration
  def change
    create_table :msg_chat_rooms do |t|
      t.string :content

      t.timestamps
    end
  end
end
