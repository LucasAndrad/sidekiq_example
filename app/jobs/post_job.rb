class PostJob
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    sleep(8)
    Post.create(title: 'Post test', body: 'Nice post body here')
  end
end
