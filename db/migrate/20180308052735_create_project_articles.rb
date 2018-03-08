class CreateProjectArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :project_articles do |t|
      t.string :title
      t.string :body
      t.date :published_at
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
