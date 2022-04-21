class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.date :date
      t.text :body

      t.timestamps
    end
  end
end
