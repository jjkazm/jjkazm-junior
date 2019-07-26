class DangerRemoveWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  def perform
    Danger.destroy_all
  end
end
