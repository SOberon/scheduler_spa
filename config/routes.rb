Rails.application.routes.draw do
  get 'home/index'

  root :to => "home#index"

  devise_for :users
  resources :students do
    get :autocomplete_student_name, on: :collection
    collection do
      get 'search'
    end
  end

  resources :courses do
    get :autocomplete_course_name, on: :collection
    collection do
      get 'search'
    end
  end

  resources :sections do
    get :autocomplete_section_number, on: :collection
    collection do
      get 'search'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
