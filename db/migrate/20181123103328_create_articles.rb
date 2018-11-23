class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles, primary_key: "article_id" do |t|
      t.text :title, null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
