class DeviseCreateEmployees < ActiveRecord::Migration
  def self.up
    create_table(:employees) do |t|
      t.database_authenticatable :null => false
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      t.timestamps
    end

    add_index :employees, :email,                :unique => true
    add_index :employees, :confirmation_token,   :unique => true
    add_index :employees, :reset_password_token, :unique => true
    # add_index :employees, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :employees
  end
end
