class Artist < ActiveRecord::Base
  has_many :projects
  has_many :engineers, through: :projects

  # def create_project(title_ins, engineer)
  #   Project.create(artist: self, title: title_inst, engineer: engineer)
  # end

  def remove_engineer(project)
    if project == project
      project.engineer = nil
      "Current Mastering Engineer Removed."
    else
      "Please Enter a VALID project."
    end
  end

  def project_release(project, r_date)
    if project == project
      if project.submitted == true
        project.release_date = r_date
      else
        "Engineer must submit project first."
      end
    end
  end

  def delete_project(project)
    if project == project
      project.destroy
      "Project Deleted."
    else
      "Please Enter a VALID project."
    end
  end


end
