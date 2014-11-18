Rails.application.routes.draw do
  get 'home/index'
  get 'home/contact'
  post 'home/send_contact_email'
  get 'home/faculty'
  get 'home/awards'
  get 'home/locate'
  get 'home/faq'

  get 'laparoscopy/index'
  get 'laparoscopy/hysteroscopy'
  get 'laparoscopy/fertility_enhancement'
  get 'laparoscopy/appendicitis'
  get 'laparoscopy/hernia'
  get 'laparoscopy/cyst'
  get 'laparoscopy/tuboplasty'
  get 'laparoscopy/myomectomy'
  get 'laparoscopy/cholecystectomy'
  get 'laparoscopy/endometriosis'
  get 'laparoscopy/cardiomyotomy'
  get 'laparoscopy/tubal_cannulation'

  get 'pregnancy/week_by_week'
  get 'pregnancy/prenatal'
  get 'pregnancy/infertility'
  get 'pregnancy/natural_birth'
  get 'pregnancy/caesarean'
  get 'pregnancy/exercise'
  get 'pregnancy/newborn'
  get 'pregnancy/postnatal'
  get 'pregnancy/contraception'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
