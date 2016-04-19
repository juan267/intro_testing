class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.stringbody :title

      t.timestamps null: false
    end
  end
end
