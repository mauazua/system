require 'rails_helper'

describe PersonField do
  it { is_expected.to belong_to(:field) }
  it { is_expected.to belong_to(:fieldable) }

  it { is_expected.to validate_presence_of(:field) }
  xit { is_expected.to validate_uniqueness_of(:field).scoped_to(:fieldable) }

end
