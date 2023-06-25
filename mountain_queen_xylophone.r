# FILE 1
# Create a fitness and running club

# Set up the club
set.seed(123)
club_name <- paste("The", sample(c("Fitness", "Running", "Sports", "Endurance"), 1), "Club")

print(paste("Welcome to", club_name))

# Create a membership roster
roster_size <- sample(c(25,50,75,100), 1)

membership_roster <- data.frame(member_id = seq(1:roster_size), 
                                name = sample(c("John", "Bob", "Marilyn", "Felicia", "Pamela", "Brooklyn"), roster_size, replace = TRUE),
                                running_expertise = sample(c("novice", "intermediate", "advanced"), roster_size, replace = TRUE))

# Create a membership fee schedule
membership_fees <- data.frame(duration = c("1 Month", "3 Months", "6 Months", "1 Year"),
                              fee = c(25, 75, 150, 300))

# Create a calendar of running events

running_events <- c("5K", "10K", "Half Marathon", "Marathon")

event_calendar <- data.frame(date = sample(seq(as.Date("2019-01-01"), as.Date("2019-12-31"), by="day"), length(running_events)),
                             event = running_events,
                             entry_fee = c(20, 30, 35, 40))

# Create a prizes and discounts table

prizes_discounts <- data.frame(prize = c("Free Membership Upgrade",
                                        "Discounted Merchandise",
                                        "Free Entry to Next Event"),
                               discount = c(20, 15, 10))

# FILE 2
# Set up the club (continued)

# Create a schedule for fitness classes

fitness_classes <- c("Yoga", "Strength Training", "Cardio", "Pilates", "Zumba")

class_schedule <- data.frame(day = sample(c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"), length(fitness_classes)),
                             class = fitness_classes,
                             time = sample(c("9am", "10am", "11am", "12pm", "1pm", "2pm", "3pm", "4pm", "5pm"), length(fitness_classes)),
                             fee = c(15, 20, 25, 20, 15))

# Create a membership application

application_form <- function(name, running_expertise){
  print(paste("Welcome ", name))
  print(paste("We understand your running expertise is", running_expertise))
  print("Please complete the following information to become a member of", club_name)
  age <- as.numeric(readline(prompt = "What is your age?: "))
  address <- readline(prompt = "What is your address?: ")
  emergency_contact <- readline(prompt = "Who is your emergency contact?: ")
  print("Thank you for your application. We look forward to having you as a member of the club!")
  return(list(age = age, address = address, emergency_contact = emergency_contact))
}

# FILE 3
# Set up the club (continued)

# Create a rewards program 

reward_points_frame <- data.frame(action = c("Sign Up", "Refer a Friend", "Attend a Class", "Participate in an Event"),
                                  reward_points = c(10, 5, 2, 5))

# Create a fitness tracker

fitness_tracker <- function(member_id, name, running_expertise){
  print(paste("Welcome", name, "!"))
  
  days_since_signup <- 0
  
  fitness_data <- data.frame(member_id = member_id,
                             name = name,
                             running_expertise = running_expertise,
                             days_since_signup = days_since_signup,
                             num_classes_attended = NA,
                             num_events_participated = NA, 
                             total_reward_points = 0)
  
  print("Let's track your fitness progress!")
  return(fitness_data)
}

# FILE 4
# Set up the club (continued)

# Create a leaderboard
leaderboard <- data.frame(member_id = NA, name = NA, running_expertise = NA, total_reward_points = NA)

# Create a store for merchandise

merchandise <- c("T-shirts", "Hoodies", "Hats", "Water Bottles") 

merchandise_store <- data.frame(merchandise = merchandise,
                                price = c(15, 30, 25, 10))

# FILE 5
# Set up the club (continued)

# Create a contact form 
contact_form <- function(){
  name <- readline(prompt = "What is your name?: ")
  email <- readline(prompt = "What is your email address?: ")
  comment <- readline(prompt = "Please enter your comment or question: ")
  print("Thank you for your inquiry. We will be in touch soon!")
  return(list(name = name, email = email, comment = comment))
}

# Create a feedback form

feedback_form <- function(name, running_expertise){
  print(paste("Welcome", name, "!"))
  print("Please fill out the following feedback form to help us improve the club.")
  experience <- readline(prompt = "How would you rate your overall experience with the club?: ")
  classes <- readline(prompt = "How would you rate the fitness classes?: ")
  events <- readline(prompt = "How would you rate the running events?: ")
  challenge <- readline(prompt = "Did you feel sufficiently challenged?: ")
  print("Thank you for your feedback. We appreciate your input!")
  return(list(running_expertise = running_expertise, experience = experience, classes = classes, events = events, challenge = challenge))
}