
require 'rufus-scheduler'
s = Rufus::Scheduler.singleton
s.every '1d' do
  task = Task.where("due_date <= ?",Time.now)
  # task = Task.where("due_date <= #{Time.now}" & "Status == #{false}")  
  if task.present?
    task.each do |task|
        UserMailer.with(user:  User.find_by_id(task.user_no),task: task).task_remainder.deliver_now
    end
  end
end
