class CreateUserMsgs < ActiveRecord::Migration
  def change
    create_table :user_msgs do |t|
      t.text :message
      t.references :Chatiw

      t.timestamps
    end
    add_index :user_msgs, :Chatiw_id
  end
end
