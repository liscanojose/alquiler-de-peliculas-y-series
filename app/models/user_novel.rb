class UserNovel < ActiveRecord::Base
  belongs_to :user
  belongs_to :novel
end
