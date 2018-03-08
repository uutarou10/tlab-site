class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.belongs_to :user, foreign_key: true
      t.date :published_at, null: true

      t.timestamps
    end
  end
end
