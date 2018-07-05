class CreateSortStringModels < ActiveRecord::Migration[5.1]
  def change
    create_table :sort_string_models do |t|

      t.timestamps
    end
  end
end
