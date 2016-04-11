ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
       column do
         panel "Recent Leads" do
           ul do
             Lead.last(5).map do |lead|
               li link_to(lead.name, admin_lead_path(lead))
             end
           end
         end
       end

       column do
         panel "Info" do
           para "Welcome to your admin screen Andy!"
         end
       end
     end
  end # content
end
