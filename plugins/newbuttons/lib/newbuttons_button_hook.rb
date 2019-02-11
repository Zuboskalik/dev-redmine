class NewbuttonsButtonHook  < Redmine::Hook::ViewListener

    render_on :view_issues_edit_notes_bottom, :partial => 'issues/newbutton',  locals: { test: 'test' } 

end
