require 'rails_helper'

describe Field do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to belongs_to(:parent) }
end
