class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :feed_url
      t.string :url
      t.string :site_title
      t.string :abbreviation

      t.timestamps
    end
  end
end
