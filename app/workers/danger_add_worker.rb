class DangerAddWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  require 'csv'
  def perform(csv_path)
    CSV.foreach((csv_path), headers: true) do |dog|
      Danger.create(
        first: dog[0],
        last: dog[1],
        description: dog[4])
    end
  end
end
