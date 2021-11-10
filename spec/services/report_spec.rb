require 'rails_helper'

data = [
  { code: 'A-001', guest: 'guest@email.com', entity: 'reservation', type: 'confirmed', created_at: '2019-06-08 23:06:45'},
  { code: 'A-001', guest: 'guest@email.com', entity: 'reservation', type: 'modified', created_at: '2019-06-08 23:40:02'}
]

report = <<here 
A-001. Guest: guest@email.com. Confirmed reservation at '2019-06-08 23:06:45'
A-001. Guest: guest@email.com. Modified reservation at '2019-06-08 23:40:02'
here

RSpec.describe Report, type: :model do
  it "create report from data" do
    expect(Report.generate(data)).to eql(report)
  end
end
