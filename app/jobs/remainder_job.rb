class RemainderJob < ApplicationJob
  queue_as :default

  # def perform(task)
  #   @user = User.find_by_id(@task.user_no)
  #   if task.due_date<Time.now
  #     UserMailer.with(user,task).task_remainder.deliver_now
  #   end
  # end
end
