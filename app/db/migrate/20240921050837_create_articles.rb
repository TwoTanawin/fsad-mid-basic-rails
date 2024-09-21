class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
