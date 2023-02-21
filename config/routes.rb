Rails.application.routes.draw do
  # verb "/path", to: "controller#action"

  # See all tasks
  get 'tasks', to: 'tasks#index'

  # Creates a new task
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  # See details about one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
