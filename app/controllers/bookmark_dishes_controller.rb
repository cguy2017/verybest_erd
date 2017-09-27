class BookmarkDishesController < ApplicationController
  def index
    @bookmark_dishes = BookmarkDish.all

    render("bookmark_dishes/index.html.erb")
  end

  def show
    @bookmark_dish = BookmarkDish.find(params[:id])

    render("bookmark_dishes/show.html.erb")
  end

  def new
    @bookmark_dish = BookmarkDish.new

    render("bookmark_dishes/new.html.erb")
  end

  def create
    @bookmark_dish = BookmarkDish.new

    @bookmark_dish.venues_id = params[:venues_id]
    @bookmark_dish.user_id = params[:user_id]

    save_status = @bookmark_dish.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookmark_dishes/new", "/create_bookmark_dish"
        redirect_to("/bookmark_dishes")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookmark dish created successfully.")
      end
    else
      render("bookmark_dishes/new.html.erb")
    end
  end

  def edit
    @bookmark_dish = BookmarkDish.find(params[:id])

    render("bookmark_dishes/edit.html.erb")
  end

  def update
    @bookmark_dish = BookmarkDish.find(params[:id])

    @bookmark_dish.venues_id = params[:venues_id]
    @bookmark_dish.user_id = params[:user_id]

    save_status = @bookmark_dish.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookmark_dishes/#{@bookmark_dish.id}/edit", "/update_bookmark_dish"
        redirect_to("/bookmark_dishes/#{@bookmark_dish.id}", :notice => "Bookmark dish updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookmark dish updated successfully.")
      end
    else
      render("bookmark_dishes/edit.html.erb")
    end
  end

  def destroy
    @bookmark_dish = BookmarkDish.find(params[:id])

    @bookmark_dish.destroy

    if URI(request.referer).path == "/bookmark_dishes/#{@bookmark_dish.id}"
      redirect_to("/", :notice => "Bookmark dish deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bookmark dish deleted.")
    end
  end
end
