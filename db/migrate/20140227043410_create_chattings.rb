class CreateChattings < ActiveRecord::Migration
  def change
    create_table :chattings do |t|
      t.string :message
      t.datetime :created_at, :null => false

      t.timestamps
    end
  end
end

