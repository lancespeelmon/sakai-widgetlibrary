class WidgetController < ApplicationController
  def show
    widget_title = params[:widget_title]
    @widget = Widget.first( :conditions => { :url_title => widget_title } )
    if !(@widget.state_id.eql?(State.accepted) && @widget.user != current_user) || (!@widget.state_id.eql?(State.accepted) && can_view_admin_area?)
      redirect_to :root
    end
    @related = Widget.order("random()").limit(5)
  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def create

  end
end
