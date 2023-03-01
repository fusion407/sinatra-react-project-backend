class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # Fullsets
  # ========================
  # GET
  get "/fullsets" do
    fullsets = Fullset.all.order(:created_at)
    fullsets.to_json
  end
  get "/fullsets/:id" do
    fullset = Fullset.find(params[:id])
    fullset.to_json
  end
  # ----------
  # POST
  post "/fullsets" do
    fullset = Fullset.create(
      title: params[:title],
      rating: params[:rating],
      video_link: params[:video_link],
      artist_id: params[:artist_id],
      event_id: params[:event_id]
    )
    fullset.to_json
  end
  # ----------
  # PATCH
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
    # ----------
  # DELETE
  delete "/fullsets/:id" do
    fullset = Fullset.find(params[:id])
    fullset.destroy
    fullset.to_json
  end
  # ========================


  # Artists
  # ========================
  # GET
  get "/artists" do
    artists = Artist.all.order(:id)
    artists.to_json
  end
  get "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.to_json
  end
  # ========================


  # Genres
  # ========================
  get "/genres" do
    genres = Genre.all.order(:id)
    genres.to_json
  end
  get "/genres/:id" do
    genre = Genre.find(params[:id])
    genre.to_json
  end
  # ========================


  # Events
  # ========================
  get "/events" do
    events = Event.all.order(:id)
    events.to_json
  end
  get "/events/:id" do
    event = Event.find(params[:id])
    event.to_json
  end
  # ========================

end
