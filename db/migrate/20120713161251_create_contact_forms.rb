class CreateContactForms < ActiveRecord::Migration
  def change
    drop_table :contact_forms do |t|
      t.string :name
      t.string :email
      t.text :comments

      t.timestamps
    end
  end
end
