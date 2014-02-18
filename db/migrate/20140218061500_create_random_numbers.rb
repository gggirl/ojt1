class CreateRandomNumbers < ActiveRecord::Migration
  def change
    create_table :random_numbers do |t|
      t.string :Name

      t.timestamps
    end
  end
end
