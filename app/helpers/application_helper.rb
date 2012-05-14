module ApplicationHelper
  # Logo for header
  def logo
    @logo = image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
  # Return a title on a per-page basis.
  def title
    base_title = "Squirrel by JoJoKitty"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  #method for countdown
  def countdown_field(field_id,update_id,max,options = {})
      function = "$('#{update_id}').innerHTML = (#{max} - $F('#{field_id}').length);"
      count_field_tag(field_id,function,options)
  end

  def count_field(field_id,update_id,options = {})
    function = "$('#{update_id}').innerHTML = $F('#{field_id}').length;"
    count_field_tag(field_id,function,options)
  end

  def count_field_tag(field_id,function,options = {})  
    out = javascript_tag (function)
    out += observe_field(field_id, options.merge(:function => function))
    return out
  end
end
#