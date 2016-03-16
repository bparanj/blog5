desc 'Counter cache for project has many tasks'

task task_counter: :environment do
  Project.reset_column_information
  Project.pluck(:id).find_each do |p|
    Project.reset_counters p.id, :tasks
  end
end