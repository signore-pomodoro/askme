module ApplicationHelper
  
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def inclination (count, one = 'вопрос', few = 'вопроса', many = 'вопросов')
    last_digit = count % 10
  
    return many if (11..14).include?(count % 100)
    return one if last_digit == 1
    return few if last_digit.between?(2, 4)
    return many    
  end

end
