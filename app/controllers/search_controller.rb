class SearchController < Wheelhouse::BaseController
  use_wheelhouse_templates!

  def search
    if request.xhr?
      # AJAX Request
      @results = "AJAX search results for #{params[:q]}..."
      render :json => { :results => @results }
    else
      # Regular page request
      @results = "Search results..."
      render :template => "search"
    end
  end
end
