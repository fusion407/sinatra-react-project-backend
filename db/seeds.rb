puts "🌱 Seeding spices..."

Fullset.create([
    {
        title: "Excision Lost Lands 2022 Detox Set",
        rating: 5,
        video_link: "https://youtu.be/_XsLl8yLpq4",
        artist_id: 1,
        event_id: 1,
        genre_id: 1,
        location_id: 1,
    },
    {
        title: "Deadmau5 EDC Las Vegas 2021",
        rating: 4,
        video_link: "https://youtu.be/AjiSzMFEDgo",
        artist_id: 2,
        event_id: 2,
        genre_id: 2,
        location_id: 2,

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
    },
    {
        name: "Herobust",
        genre_id: 1
    }
])
Genre.create([
    {
        name: "Dubstep",
    },
    {
        name: "Progressive House",
    }
])
Event.create([
    {
        name: "Lost Lands 2022",
        location_id: 1,
    },
    {
        name: "EDC 2021",
        location_id: 2,
    }
])
Location.create([
    {
        name: "Thornville, OH",
    },
    {
        name: "Las Vegas, NV",
    }
])


puts "✅ Done seeding!"
