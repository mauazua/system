require 'rails_helper'

describe User do
  it { is_expected.to have_many(:person_fields) }
  it { is_expected.to have_many(:fields) }
end
