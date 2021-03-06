# == Schema Information
#
# Table name: campaign_levels
#
#  id          :integer          not null, primary key
#  campaign_id :integer
#  title       :string(255)      not null
#  cost        :decimal(8, 2)    not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class CampaignLevel < ActiveRecord::Base
  attr_accessible :campaign_id, :title, :cost
  belongs_to :campaign
  # attr_accessible :title, :body

  def price_to_cents
    (@cost.to_f * 100).to_i
  end

  def application_fee_cents
    application_fee = Selfstarter::Application::APPLICATION_FEE

    (@cost.to_f * application_fee * 100).to_i
  end
end
