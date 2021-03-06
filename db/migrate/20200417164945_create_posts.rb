class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :title
      t.text :brief
      t.text :body

      t.timestamps
    end
  end
end
