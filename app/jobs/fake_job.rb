class FakeJob < ApplicationJob
  queue_as :default

  def perform(user)
    p "Hello #{user.email}"
    sleep 8
    p "Great job you are done"
  end
end
