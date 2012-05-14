# == Schema Information
# Schema version: 20110529043955
#
# Table name: usages
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  nuts       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Usage < ActiveRecord::Base
  attr_accessible :name, :email, :nuts
end
