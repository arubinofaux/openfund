# == Schema Information
#
# Table name: campaign_sections
#
#  id                 :integer          not null, primary key
#  campaign_id        :integer
#  title              :string(255)      not null
#  text               :text             not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  sort_order         :integer          default(0)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CampaignSection < ActiveRecord::Base
  # attr_accessible :title, :body
end
