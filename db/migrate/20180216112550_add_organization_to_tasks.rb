class AddOrganizationToTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :organization, foreign_key: true
  end
end
