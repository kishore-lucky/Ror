class TaskPdf < Prawn::Document
    def initialize(tasks)
        super()
        @tasks = Task.all
        user_no
    end
    def user_no
        table user_id_all 
            # row(0).font_style = :bold
            # coloumns(1..3).align = :right
            # self.row_colors = ["DDDDDD","FFFFFF"]
            # self.header = true 
        
    end
    def user_id_all
        [["Name","Due Date","Status"]] +
        @tasks.map do |task|
            arr = if task.Status == true
                    arr1 = "Completed"
                else
                    arr1 = "Pending"
                end
            [task.name,task.due_date,arr1]
        end
    end
end
