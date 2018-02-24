require 'rails_helper'

RSpec.describe Show, type: :model do
  it { should have_many :reviews }
  it { should validate_presence_of :title }
end
