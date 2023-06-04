class Member < ApplicationRecord
  before_validation :set_default_pen_name

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # attribute :pen_name, :string, default: 'Ingooz'

   def set_default_pen_name
    if self.pen_name.blank?
      max_id = Member.maximum(:id) || 0
      num = max_id + 1
      defalut ='Ingooz'
      self.pen_name = "#{defalut}"+ "#{num}"

    end

   end
end
