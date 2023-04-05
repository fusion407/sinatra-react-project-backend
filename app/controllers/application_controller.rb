class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # Fullsets

  get "/fullsets" do
    fullsets = Fullset.all.order(:created_at)
    fullsets.to_json(include: [:artist, event: {include: :location}])
  end
  get "/fullsets/:id" do
    fullset = Fullset.find(params[:id])
    fullset.to_json(include: [:artist, :event])
  end


  post "/fullsets" do
    fullset = Fullset.create(
      title: params[:title],
      rating: params[:rating],
      video_link: params[:video_link],
      artist_id: params[:artist_id],
      event_id: params[:event_id],
    )
    fullset.to_json
  end


  patch "/fullsets/:id" do
    fullset = Fullset.find(params[:id])
    fullset.update(
      id: params[:id],
      title: params[:title],
      rating: params[:rating],
      video_link: params[:video_link],
      artist_id: params[:artist_id],
      event_id: params[:event_id]
    )
    fullset.to_json
  end


  delete "/fullsets/:id" do
    fullset = Fullset.find(params[:id])
    fullset.destroy
    fullset.to_json
  end



  # ========================


  # Artists

  get "/artists" do
    artists = Artist.all.order(:id)
    artists.to_json(include: [:genre])
  end
  get "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.to_json(include: [:genre])
  end

  post "/artists" do
    artist = Artist.create(
      name: params[:name],
      genre_id: params[:genre_id]
    )
    artist.to_json
  end




  # ========================


  # Events

  get "/events" do
    events = Event.all.order(:id)
    events.to_json(include: [:location])
  end
  get "/events/:id" do
    event = Event.find(params[:id])
    event.to_json(include: [:location])
  end


  post "/events" do
    event = Event.create(
      name: params[:name],
      location: params[:location]
    )
    event.to_json
  end


  # ========================


  # Locations 
  
  get "/locations" do
    locations = Location.all.order(:id)
    locations.to_json
  end

end
