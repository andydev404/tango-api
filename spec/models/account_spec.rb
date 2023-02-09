require "rails_helper"

RSpec.describe Account do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_many(:shops).dependent(:destroy) }
end
