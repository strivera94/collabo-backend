class RenameToCompleted < ActiveRecord::Migration[6.0]
  def change
    change_table :projects do |t|
      t.rename :completed?, :completed
    end
  end
end
