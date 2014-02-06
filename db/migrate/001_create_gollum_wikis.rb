class CreateGollumWikis < ActiveRecord::Migration
  def change
    create_table :gollum_wikis do |t|
      t.references :project
      t.string :git_path
    end
    add_index :gollum_wikis, :project_id
  end
end
