class Blog
	@@posts = []

	def initialize
		@@posts.push self
	end

	def self.total_posts
		@@posts.length
	end

	def self.publish

		puts "\nTotal Posts: #{@@posts.length}\n\n"
		@@posts.each do |post|
			puts post
			puts "\n"
		end
	end
end

class BlogPost < Blog

	def initialize(title,content,publish_date)
		@title, @content, @publish_date = title, content, publish_date
		super()
	end


	def set_title=(title)
		@title = title
	end

	def get_title
		return @title
	end

	def set_content=(content)
		@content = content
	end

	def get_content
		return @content
	end

	def set_publish_date=(publish_date)
		@publish_date = publish_date
	end

	def get_publish_date
		return @publish_date
	end

	def to_s
		"Title: #{@title}\nContent: #{@content}\n"
	end
end



blog_script = ["Please enter the title:", "Please enter blog content:"]

begin 
	puts blog_script[0]
	title = gets.chomp
	puts blog_script[1]
	content = gets.chomp

	blog_post = BlogPost.new title, content, Time.new
	puts "\n"
	puts blog_post

	puts "Do you want to create a blog post? Y/N"
	answer = gets.chomp.downcase
end while answer == "y"



Blog.publish


