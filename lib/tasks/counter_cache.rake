desc 'Counter cache for project has many tasks'

task task_counter: :environment do
  Project.reset_column_information
  Project.all.each do	|p|
    p.update_attribute :tasks_count, p.tasks.length
  end
end