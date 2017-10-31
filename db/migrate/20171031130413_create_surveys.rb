class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :token
      t.string :title
      t.string :url

      t.timestamps null: false
    end
  end
end
