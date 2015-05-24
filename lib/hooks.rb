module AcceptPlugin
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      stylesheet_link_tag 'style', :plugin => :accept
     end

    def view_issues_form_details_bottom(context={})
	  return AcceptHelper.generate_accept_button context[:issue]
    end
  end
end

