require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '1m' do
  Show.transaction { Show.find_each { |s| s.update_attribute(:number, rand(100))} }
end
