class NewbuttonsController < ApplicationController

  def index
    @newbuttons = Newbutton.all
    @newbutton = Newbutton.first
  end

  def update(params)
    newbutton = Newbutton.first
    newbutton.update!(params)
  end

  def toggle(active)
    newbutton = Newbutton.first
    newbutton.update!(:active => (active == 1 ? 1 : 0))
  end

  def rename(name)
    newbutton = Newbutton.first
    newbutton.update!(:name => name)
  end

  def setaction(action) #0 - comment. 1+ - set status
    newbutton = Newbutton.first
    newbutton.update!(:action => action)
  end

end
