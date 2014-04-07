ActiveAdmin.register_page "Dashboard" do
  
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "This week's albums" do
          table_for Post.order("created_at desc").limit(3) do
            column("Album title"){|post| link_to(post.album_title, admin_post_path(post)) } 
          end
        end
      end
    end
  end
end
