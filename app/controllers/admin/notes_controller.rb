class Admin::NotesController < AdminController
  def index
    @notes = Note.order('updated_at DESC')
  end
  
  def new
    @note = Note.new
  end
  
  def create
    @note = Note.new(params[:note])
    
    respond_to do |format|
      if @note.save
        format.html {
          flash[:success] = "Saved note #{@note}"
          redirect_to admin_notes_path
        }
      else
        format.html {
          render :new
        }
      end
    end
  end
  
  def edit
    @note = Note.find(params[:id])
  end
  
  def update
    @note = Note.find(params[:id])
    
    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html {
          flash[:success] = "Saved note #{@note}"
          redirect_to admin_notes_path
        }
      else
        format.html {
          render :edit
        }
      end
    end
  end
end
