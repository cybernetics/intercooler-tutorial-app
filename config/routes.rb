IntercoolerTutorialApp::Application.routes.draw do

  resources :contacts do
    collection do
      get 'contact_rows'
      get 'contacts_table'
      post 'contacts_table'
      post 'email'
    end
    member do
      post 'email'
    end
  end

  get "flash_content" => "contacts#flash_content"

end
