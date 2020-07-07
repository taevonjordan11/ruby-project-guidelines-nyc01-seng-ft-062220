class Engineer < ActiveRecord::Base
  has_many :projects
  has_many :artists, through: :projects

    def submit_project(project)
    if project == project
      project.submitted = true
    else
      "Please enter valid project"
    end
  end

  
end
