class AddTitleToActivities < ActiveRecord::Migration[5.0]
  def change
    change_table :activities do |t|
      t.string :title
    end
  end
end
