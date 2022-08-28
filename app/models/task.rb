class Task < ApplicationRecord
    belongs_to :user ,  :optional => true

# after_save_commit do
#     if due_date_previously_changed?
#         RemainderJob.set(wait_until: due_date.to_s).perform_later(self)
#     end
# end

end
