# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative "../app/models/artist.rb"
require_relative "../app/models/bid.rb"
require_relative "../app/models/event.rb"
require_relative "../app/models/genre.rb"
require_relative "../app/models/location.rb"
require_relative "../app/models/user.rb"

Artist.destroy_all
Bid.destroy_all
Event.destroy_all
Genre.destroy_all
Location.destroy_all
User.destroy_all

[
  { 
    name: "Maroon 5", 
    description: "Maroon 5 is a pop band from Los Angeles, California, and has won several awards for their debut album Songs About Jane. Released in June 2002, the album enjoyed major chart success, going gold, platinum, and triple platinum in many countries around the world. Their follow-up acoustic album 1.22.03.Acoustic, which features live, unplugged versions of Songs About Jane, has also reached platinum status. The group won the Grammy Award for Best New Artist in 2005. In the fall of 2005 they released a live record called Live - Friday The 13th which was recorded on May 13, 2005 in Santa Barbara, California and has earned them another Grammy Award for Best Pop Performance by a Duo or Group with Vocal in 2006.", 
    country_of_origin: "USA",
    tier_1: 200,
    tier_2: 170,
    tier_3: 145
  },
  { 
    name: "Of Monsters And Men", 
    description: "Of Monsters And Men are an indie folk band which formed in 2010 in Reykjavík, Iceland. The band consists of Nanna BryndísHilmarsdóttir (vocals, guitar), Ragnar Þórhallsson (vocals, guitar), Brynjar Leifsson (guitar), Kristján Páll Kristjánsson (bass), Árni Guðjónsson (keyboards,accordion) and Arnar Rósenkranz Hilmarsson (drums). The band released their debut album “My Head is An Animal” in September 2011. The album’s single “Little Talks” peaked at #1 in Iceland, and became successful in the United States after extensive airplay on Philadelphia rockstation WRFF and subsequent word of mouth.", 
    country_of_origin: "Iceland",
    tier_1: 140,
    tier_2: 120,
    tier_3: 100
  },
  { 
    name: "James Morrison", 
    description: "James Morrison is an English singer-songwriter and guitarist from Derby. In 2006, his debut single 'You Give Me Something' became a hit in Europe, Australia, Japan and Iran peaking in the top five in the UK and claiming the number 1 spot in New Zealand. His debut album, Undiscovered, debuted at the top of the UK Albums Chart. In 2007 Morrison won the Brit Award for Best British Male.", 
    country_of_origin: "United Kingdom",
    tier_1: 150,
    tier_2: 125,
    tier_3: 90
  },
  { 
    name: "Craig David", 
    description: "Craig David is an English-born singer-songwriter who hit the big time when he was just 19 years of age with the release of his debut album 'Born To Do It' in the year 2000. Mixing contemporary R&B with Soul & Pop, the album spawned 4 U.K Top 10 singles and went on to sell over 8 million copies worldwide.", 
    country_of_origin: "United Kingdom",
    tier_1: 180,
    tier_2: 140,
    tier_3: 100
  },
  { 
    name: "Kelvin Fok", 
    description: "Armed with a guitar, his boyish good looks, and koala bear cap, Kelvin Fok burst onto the YouTube scene with his cover of McFly's All About You'. After stealing hearts in Singapore, he sought greater fortunes Down Under. Controversial at times, he was seen fighting with inanimate poles on public transportation. Since then, Kelvin has gone from strum to strum, winning back fans with belters like 'I'm Yours' and better quality video; all the better to see his pretty face. Last seen taking a hiatus at General Assembly.", 
    country_of_origin: "Singapore",
    tier_1: 2,
    tier_2: 1,
    tier_3: 0
  }
].each do |artist|
  Artist.create!(artist)
end

[
  {
    genre: "Alternative/Indie"
  },
  {
    genre: "Blues"
  },
  {
    genre: "Classical"
  },
  {
    genre: "Country"
  },
  {
    genre: "EDM/Dance"
  },
  {
    genre: "Hip Hop"
  },
  {
    genre: "Jazz"
  },
  {
    genre: "Party"
  },
  {
    genre: "Pop"
  },
  {
    genre: "Punk"
  },
  {
    genre: "RnB"
  },
  {
    genre: "Rock"
  }
].each do |genre|
  Genre.create!(genre)
end

[
  {
  	venue_name: "Resorts World Theatre",
  	description: "Designed by Michael Graves, the 1,599-seat theatre is an ideal live entertainment venue to accommodate a broad spectrum of events, ranging from Seminars to large-scale Musicals. Located at Resorts World Sentosa, Asia’s ultimate destination resort, the theatre location offers Event-goers a wide range of pre and post show activities and dining options within the same complex. ",
  	address: "Resorts World Sentosa, 8 Sentosa Gateway, Sentosa Island, Singapore, 098269", 
    city: "Singapore", 
    country: "Singapore",
    capacity: 1599
  },
  {
  	venue_name: "Victoria Concert Hall",
  	description: "Situated along Empress Place, Victoria Theatre & Victoria Concert Hall reopened in July 2014, after a four-year renovation to restore the building's original 1905 structure and to create new commercial and civic spaces. With a new lease of life, Victoria Theatre & Victoria Concert Hall is now equipped to support Singapore's growing arts industry. Its venues and spaces are managed by The Esplanade Co Ltd.",
  	address: "9 Empress Place, Singapore 179556", 
    city: "Singapore", 
    country: "Singapore"
  },
  {
  	venue_name: "SOTA Concert Hall",
  	description: "Designed with a box-in-box construction and crafted using minimal applied interior finishes, the Concert Hall offers exceptional acoustics for classical recitals and choral works.The enclosing upper walls of the Concert Hall are formed out of rhythmic rows of precisely shaped mustard coloured precast concrete pillows, complemented by the warm solid white oak of the splayed inner lower walls that are detailed with finesse to achieve fine acoustics.The auditorium is equipped with comprehensive audio-visual infrastructure and also hosts a dedicated recording room.",
  	address: "School Of The Arts, 1 Zubir Said Drive, Singapore 227968", 
    city: "Singapore", 
    country: "Singapore"
  },
  {
  	venue_name: "Esplanade Concert Hall",
  	description: "The Concert Hall is Esplanade's crown jewel, which seats 1,630 and another 197 in the gallery. Chosen by Hamburg-based building data company Emporis in 2014 as one of the 15 most beautiful concert halls in the world, the hall boasts superb acoustics. It is one of only five such halls in the world with similar state-of-the-art features, which include reverberation chambers and an acoustic canopy that adapts the hall for different musical performances, producing optimum sound at every concert.",
  	address: "1 Esplanade Drive, Singapore 038981", 
    city: "Singapore", 
    country: "Singapore",
    capacity: 1827
  },
  {
  	venue_name: "The Star Theatre",
  	description: "The key venue of The Star Performing Arts Centre, The Star Theatre is fitted with high-end audio, video and production lighting systems for an exceptional audio-visual experience. It heightens your enjoyment of a wide range of amplified music and speech events, as well as large-scale musical theatre and dance performances.",
  	address: "1 Vista Exchange Green, #04-01, Singapore 138617", 
    city: "Singapore", 
    country: "Singapore",
    capacity: 5000
  },
  {
  	venue_name: "University Cultural Centre",
  	description: "Equipped with acoustic shelling, the Hall comprises a series of convex surfaces to scatter the acoustic energy and avoid concentrated focal points of sound within the room in order to achieve optimum acoustic performance. It is also equipped with a fly tower consisting of 65 units of manual counter-weight fly sets. It is a modified horse-shoe design with stalls parterre and two circle levels.",
  	address: "50 Kent Ridge Crescent, National University of Singapore, Singapore 119279", 
    city: "Singapore", 
    country: "Singapore",
    capacity: 1714
  },
  {
  	venue_name: "The Grand Theatre @ Marina Bay Sands",
  	description: "With a seating capacity of up to 2,155 over three levels, the stunning, majestic theater features state-of-the-art technology and spectacular interior design in a traditional proscenium style venue furnished with elegant facilities. Enjoy sensational performances in luxury and be thoroughly entertained by the world-class acts that grace the stage.",
  	address: "10 Bayfront Avenue, Singapore 018956", 
    city: "Singapore", 
    country: "Singapore",
    capacity: 2155
  },
  {
  	venue_name: "Fort Gate @ Canning Park",
  	description: "With a capacity of around 10,000, Fort Canning Park forms a perfectly sloped bowl for large outdoor concerts and has recently hosted Singfest, WOMAD, Muse and The Beastie Boys.",
  	address: "Fort Canning Road, Singapore 179618", 
    city: "Singapore", 
    country: "Singapore",
    capacity: 10000
  }
].each do |location|
  Location.create!(location)
end