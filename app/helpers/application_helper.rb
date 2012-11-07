module ApplicationHelper

	def flash_class(type)
		case type
		when :alert
			"alert-error"
		when :notice
			"alert-success"
		else
			""
		end
	end

	def link_icon(icon, text)
		"<i class='icon-#{icon} icon-white'></i> #{text}".html_safe
	end

end
