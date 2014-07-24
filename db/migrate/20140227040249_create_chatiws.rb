class CreateChatiws < ActiveRecord::Migration
  def change
    create_table :chatiws do |t|
      t.text :content

      t.timestamps
    end
  end
end
