ActiveAdmin.register Post do
  scope :unfound
  scope :found
  
  filter :album_title
  filter :place_title
  filter :created_at
  
  index do
    column :album_title
    column "Where the album is hidden", :hidden_place
    column "Vague place description", :place_title
    default_actions
  end
end
