
json.extract! @user, :id, :name, :wechat_id, :phone
# json.events @user.events do |event|
#   json.extract! event, :id, :content, :name, :image
#   json.date event.created_at.strftime("%m/%d/%y")
# end
