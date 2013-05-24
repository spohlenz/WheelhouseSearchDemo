WheelhouseSearchDemo::Application.routes.draw do
  get "search" => "search#search", :as => :search
end
