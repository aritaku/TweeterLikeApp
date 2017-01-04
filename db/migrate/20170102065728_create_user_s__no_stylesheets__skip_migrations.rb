class CreateUserSNoStylesheetsSkipMigrations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_s__no_stylesheets__skip_migrations do |t|

      t.timestamps
    end
  end
end
