require "rails_helper"

RSpec.describe Shop do
  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to validate_presence_of(:slug) }
  it { is_expected.to validate_length_of(:slug).is_at_most(50) }

  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_length_of(:description).is_at_most(200) }

  it { is_expected.to validate_presence_of(:address) }

  it { is_expected.to validate_presence_of(:whatsapp) }

  it { is_expected.to belong_to(:account) }
end
