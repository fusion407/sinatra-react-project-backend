puts "🌱 Seeding spices..."

Fullset.create([
    {
        title: "Excision Lost Lands 2022 Detox Set",
        rating: 5,
        video_link: "https://www.youtube.com/watch?v=_XsLl8yLpq4",
        artist_id: 1,
        event_id: 1,
        location_id: 1,
    },
    {
        title: "Deadmau5 EDC Las Vegas 2021",
        rating: 4,
        video_link: "https://www.youtube.com/watch?v=AjiSzMFEDgo",
        artist_id: 2,
        event_id: 2,
        location_id: 2,

    },
    {
        title: "ATLiens Lost Lands 2022",
        rating: 4,
        video_link: "https://youtu.be/IkKCv2auOpw",
        artist_id: 4,
        event_id: 1,
        location_id: 1,
    },
    {
        title: "Herobust Lost Lands 2022",
        rating: 4,
        video_link: "https://youtu.be/IkKCv2auOpw",
        artist_id: 3,
        event_id: 1,
        location_id: 1,
    },
])
Artist.create([
    {
        name: "Excision",
    },
    {
        name: "Deadmau5",
    },
    {
        name: "Herobust",
    },
    {
        name: "ATLiens",
    }
])

Event.create([
    {
        name: "Lost Lands",
    },
    {
        name: "EDC Las Vegas",
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
