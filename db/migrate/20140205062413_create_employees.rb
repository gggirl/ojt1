class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :empid
      t.string :empname
      t.integer :ordernumber
      t.integer :chatid

      t.timestamps
    end
  end
end
