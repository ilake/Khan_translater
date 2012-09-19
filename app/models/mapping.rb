# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: mappings
#
#  id         :integer          not null, primary key
#  before     :string(255)
#  after      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mapping < ActiveRecord::Base
  attr_accessible :before, :after
end
