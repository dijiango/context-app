puts "Destroying old seed data"
User.destroy_all
Flashcard.destroy_all
Deck.destroy_all

puts "Seeding..."

User.create!([
    {
        username: "Lisa",
        password: "user1",
        email: "lisa@email.com",
        image: "https://images.unsplash.com/photo-1614644147798-f8c0fc9da7f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80"
    },
    {
        username: "Thomas",
        password: "user2",
        email: "thomas@email.com",
        image: "https://images.unsplash.com/photo-1595211877493-41a4e5f236b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80"
    },
    {
        username: "Lee",
        password: "user3",
        email: "lee@email.com",
        image: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
    } 
])

Deck.create!([
    {
        subject: "Spanish verbs", 
        summary: ""
    },
    {
        subject: "Biology 1000", 
        summary: "bio terms from Oct 24th lecture"
    },
    {
        subject: "Greek Philosophers", 
        summary: ""
    },
    {
        subject: "Trivia", 
        summary: "questions for game night"
    }
])

5.times do
    Flashcard.create!(term: Faker::Placeholdit.image(size: '20x20', format: 'jpg'), meaning: Faker::Lorem.sentence, interval: rand(1..5), user_id: rand(1..3), deck_id: rand(1..4))
end

5.times do
    Flashcard.create!(term: Faker::Hacker.noun, meaning: Faker::Hacker.say_something_smart, interval: rand(1..5), user_id: rand(1..3), deck_id: rand(1..4))
end


puts "Done seeding"