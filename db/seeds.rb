puts "🌱 Seeding spices..."

Fullset.create([
    {
        title: "Excision Lost Lands 2022 Detox Set",
        rating: 5,
        video_link: "https://www.youtube.com/watch?v=_XsLl8yLpq4",
        artist_id: 1,
        event_id: 1,
    },
    {
        title: "Deadmau5 EDC Las Vegas 2021",
        rating: 4,
        video_link: "https://www.youtube.com/watch?v=AjiSzMFEDgo",
        artist_id: 2,
        event_id: 2,

    },
    {
        title: "ATLiens Lost Lands 2022",
        rating: 4,
        video_link: "https://youtu.be/IkKCv2auOpw",
        artist_id: 7,
        event_id: 1,
    },
    {
        title: "Herobust Lost Lands 2022",
        rating: 4,
        video_link: "https://youtu.be/IkKCv2auOpw",
        artist_id: 3,
        event_id: 1,
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
        name: "Illenium",
    },
    {
        name: "Ray Volpe",
    },
    {
        name: "Rezz",
    },
    {
        name: "ATLiens",
    },
    {
        name: "Madeon",
    },
    {
        name: "Sullivan King",
    },
    {
        name: "Slander",
    },
    {
        name: "Nghtmare",
    },
    {
        name: "Excision b2b Sullivan King",
    },
    {
        name: "Barely Alive",
    },
    {
        name: "Porter Robinson",
    },
    {
        name: "Jauz",
    },
    {
        name: "Svdden Death",
    },
    {
        name: "Subtronics",
    },
])

Event.create([
    {
        name: "Lost Lands 2022",
        location_id: 1,
    },
    {
        name: "EDC Las Vegas 2021",
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
