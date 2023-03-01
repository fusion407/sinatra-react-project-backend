puts "🌱 Seeding spices..."

Fullset.create([
    {
        title: "Excision Lost Lands 2022 Detox Set",
        rating: 5,
        artist_id: 1,
        event_id: 1,
        video_link: "https://youtu.be/_XsLl8yLpq4"
    },
    {
        title: "Deadmau5 EDC Las Vegas 2021",
        rating: 4,
        artist_id: 2,
        event_id: 2,
        video_link: "https://youtu.be/AjiSzMFEDgo"
    }
])
Artist.create([
    {
        name: "Excision",
        genre_id: 1
    },
    {
        name: "Deadmau5",
        genre_id: 2
    }
])
Genre.create([
    {
        name: "Dubstep"
    },
    {
        name: "Progressive House"
    }
])
Event.create([
    {
        name: "Lost Lands 2022",
        location: "Thornville, OH"
    },
    {
        name: "EDC 2021",
        location: "Las Vegas, NV"
    }
])

puts "✅ Done seeding!"
