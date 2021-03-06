# encoding: utf-8

module ApplicationHelper
  
  # Muestra el titulo o un mensaje que no hay titulo
  def display_project_title(project)
    if project.title.blank?
      "Sin Título"      
    else
      project.title
    end
  end
  
  # Muestra el sumario o un mensaje que no hay sumario
  def display_project_summary(project)
    if project.summary.blank?
      "Sin Sumario"      
    else
      exp_number = project.summary_link
      if exp_number == "#"
        "Sin Sumario"
      else
        link_to "Ver Sumario", "http://www1.hcdn.gov.ar/proyxml/expediente.asp?fundamentos=si&numexp=#{exp_number}"        
      end
    end
  end
  
  # AFIRMATIVE
  # ABSENT
  # NEGATIVE
  # ABSTENTION
  def display_vote_type(type)
    case type.to_sym
      when :AFIRMATIVE
        "Positivo"
      when :ABSENT
        "Ausente"
      when :NEGATIVE
        "Negativo"
      when :ABSTENTION
        "Abstención"
      else
        type
    end
    
  end

end
