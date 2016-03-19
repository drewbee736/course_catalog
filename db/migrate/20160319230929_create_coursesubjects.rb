class CreateCoursesubjects < ActiveRecord::Migration
  def change
    create_table :coursesubjects do |t|

      t.timestamps
    end
  end
end
