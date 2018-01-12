class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :name, null: false
    	t.string :content, null: false
    	t.references :owner, foreign_key: true

      t.timestamps null: false
    end
  end
end
