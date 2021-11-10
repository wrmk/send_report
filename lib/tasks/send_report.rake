namespace :send_report do

  data = [
    { code: 'A-001', guest: 'guest@email.com', entity: 'reservation', type: 'confirmed', created_at: '2019-06-08 23:06:45'},
    { code: 'A-001', guest: 'guest@email.com', entity: 'reservation', type: 'modified', created_at: '2019-06-08 23:40:02'}
  ]

  task by_email: :environment do
    report = Report.generate(data)
    
    Mailer.deliver(
      from: 'system@email.com',
      to: 'host@email.com',
      subject: 'Report',
      body: report
    )    
  end

 
end