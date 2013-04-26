# Copy your solution from conditional_exercise.rb
# Create an empty stories array. This will be used to hold all of our stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story, upvotes and category string along the way
# Break out the user input so the hash looks like the one below 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add this hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Through the stories array 
# Test your cat, bacon, and food upvote upgrades work.


stories = []


def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def show_new_story_notification(stories)
  show_message("New Story Added! #{stories[:story]}, Category: #{stories[:category].capitalize}, Current Upvotes: #{stories[:upvotes]}")
end

def calculate_upvotes(story_hash)
	story_hash[:upvotes] = 1

  if story_hash[:story].downcase.include? 'cat'
    story_hash[:upvotes] *= 5
  end
  if story_hash[:story].downcase.include? 'bacon'
    story_hash[:upvotes] *= 8
  end

  if story_hash[:category].downcase == "food"
    story_hash[:upvotes] *= 3
  end
  story_hash[:upvotes]
end



show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")


story_hash = {}
show_message("Please enter a News story:")
story_hash[:story] = get_input
show_message("Please give it a category:")
story_hash[:category] = get_input
story_hash[:upvotes] = calculate_upvotes(story_hash)

stories << story_hash

show_new_story_notification(stories[0])
