namespace :db do
  desc 'Drop and Recreate DB Warning: Full Data Erase. Only in Development!'
  task :wipe do
    if(Rails.env.development?)
      p 'Dropping DB...'
      Rake::Task['db:drop'].invoke

      p 'Creating DB...'
      Rake::Task['db:create'].invoke

      p 'Running Migrations...'
      Rake::Task['db:migrate'].invoke
    end
  end
end
