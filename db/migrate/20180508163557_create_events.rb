class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.decimal :cost
      t.text :description
      t.string :email
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
