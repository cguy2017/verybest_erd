class BookmarkVenuesController < ApplicationController
  def index
    @q = BookmarkVenue.ransack(params[:q])
    @bookmark_venues = @q.result(:distinct => true).includes(:dishes, :user).page(params[:page]).per(10)

    render("bookmark_venues/index.html.erb")
  end

  def show
    @bookmark_venue = BookmarkVenue.find(params[:id])

    render("bookmark_venues/show.html.erb")
  end

  def new
    @bookmark_venue = BookmarkVenue.new

    render("bookmark_venues/new.html.erb")
  end

  def create
    @bookmark_venue = BookmarkVenue.new

    @bookmark_venue.dishes_id = params[:dishes_id]
    @bookmark_venue.user_id = params[:user_id]

    save_status = @bookmark_venue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookmark_venues/new", "/create_bookmark_venue"
        redirect_to("/bookmark_venues")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookmark venue created successfully.")
      end
    else
      render("bookmark_venues/new.html.erb")
    end
  end

  def edit
    @bookmark_venue = BookmarkVenue.find(params[:id])

    render("bookmark_venues/edit.html.erb")
  end

  def update
    @bookmark_venue = BookmarkVenue.find(params[:id])

    @bookmark_venue.dishes_id = params[:dishes_id]
    @bookmark_venue.user_id = params[:user_id]

    save_status = @bookmark_venue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookmark_venues/#{@bookmark_venue.id}/edit", "/update_bookmark_venue"
        redirect_to("/bookmark_venues/#{@bookmark_venue.id}", :notice => "Bookmark venue updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookmark venue updated successfully.")
      end
    else
      render("bookmark_venues/edit.html.erb")
    end
  end

  def destroy
    @bookmark_venue = BookmarkVenue.find(params[:id])

    @bookmark_venue.destroy

    if URI(request.referer).path == "/bookmark_venues/#{@bookmark_venue.id}"
      redirect_to("/", :notice => "Bookmark venue deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bookmark venue deleted.")
    end
  end
end
