class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :body
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
