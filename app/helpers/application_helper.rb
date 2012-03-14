module ApplicationHelper

  def flash_message(type, message)
    content_tag(:div, message, class: "alert alert-#{class_for_flash_type(type)}")
  end

  private

  def class_for_flash_type(type)
    case type
      when :notice then 'success'
      else type.to_s
    end
  end
end
