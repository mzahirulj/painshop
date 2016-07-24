class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :fName
      t.string :nName
      t.string :email
      t.string :paymentMethod
      t.decimal :cardNumber
      t.string :password
      t.string :pasword2

      t.timestamps
    end
  end
end
