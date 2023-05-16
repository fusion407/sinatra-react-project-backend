class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get "/fullsets" do
    fullsets = Fullset.all.order(:title)
    fullsets.to_json(:include => [:artist, :event, :location])
  end

  get "/fullsets/:id" do
    fullset = Fullset.find(params[:id])
    fullset.to_json
  end

  post "/fullsets" do
    fullset = Fullset.create(
      title: params[:title],
      rating: params[:rating],
      video_link: params[:video_link],
      artist_id: params[:artist_id],
      event_id: params[:event_id],
      location_id: params[:location_id]
    )
    fullset.to_json(:include => [:artist, :event, :location])
  end

  patch "/fullsets/:id" do
    fullset = Fullset.find(params[:id])
    fullset.update(
      id: params[:id],
      title: params[:title],
      rating: params[:rating],
      video_link: params[:video_link],
      artist_id: params[:artist_id],
      event_id: params[:event_id],
      location_id: params[:location_id]
    )
    fullset.to_json(:include => [:artist, :event, :location])
  end


  delete "/fullsets/:id" do
    fullset = Fullset.find(params[:id])
    fullset.destroy
    fullset.to_json
  end






  get "/artists" do
    artists = Artist.all.order(:name)
    artists.to_json
  end

  get "/artists/:name" do
    name = params['name']
    artist = Artist.find_by(name: name)
    if artist.nil?
      artist = Artist.create(
        name: name
      )
    end
    artist.to_json
  end

  post "/artists" do
    artist = Artist.create(
      name: params[:name],
    )
    artist.to_json
  end





  get "/events" do
    events = Event.all.order(:name)
    events.to_json
  end

  post "/events" do
    event = Event.create(
      name: params[:name]
    )
    event.to_json
  end

  delete "/events/:id" do
    event = Event.find(params[:id])
    event.destroy
    event.to_json
  end



  
  get "/locations" do
    locations = Location.all.order(:name)
    locations.to_json
  end


  post "/locations" do
    location = Location.create(
      name: params[:name]
    )
    location.to_json
  end

  delete "/locations/:id" do
    location = Location.find(params[:id])
    location.destroy
    location.to_json
  end

  
end
