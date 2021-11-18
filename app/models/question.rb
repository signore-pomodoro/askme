class Question < ApplicationRecord
  
  belongs_to :user

  # валидируем сразу и связь, теперь нельзя создать вопрос, у которого нет юзера
  validates :user, :text, presence: true
  validates :text, length: { maximum: 255 }

  # Ошибки валидаций можно посмотреть методом errors.

  # Демонтрация жизненного цикла объекта навесили на все популярные коллбэки
  # вои методы.


end
