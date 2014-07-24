class CreateRoomMessages < ActiveRecord::Migration
  def change
    create_table :room_messages do |t|
      t.string :message
      t.references :chatcontent
      t.timestamps

    end
  end
end
