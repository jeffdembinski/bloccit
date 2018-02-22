require 'random_data'

# Create Posts

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

uniquep = Post.find_or_create_by!(title: "Jeff Dembinski's Post", body: "My unique post")
Comment.find_or_create_by!(body: 'Comment Body', post: uniquep)

posts = Post.all

# Create comments

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end



puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
