class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.date :payment_date

      t.timestamps null: false
    end
  end
end
