ActiveAdmin.register Micropost do
  actions :all, except: [:edit, :update]
  # Отображаем все поля Micropost
  index do
    selectable_column
    id_column
    column :content
    column :user
    column :created_at
    actions
  end

  # Добавляем фильтры
  filter :user
  filter :created_at

  # Формы для создания/редактирования (если нужно)
  form do |f|
    f.inputs do
      f.input :content
      f.input :user
    end
    f.actions
  end

  # Разрешение удаления микропостов
  controller do
    def destroy
      micropost = Micropost.find(params[:id])
      micropost.destroy
      redirect_to admin_microposts_path, notice: "Micropost was successfully deleted."
    end
  end
end
