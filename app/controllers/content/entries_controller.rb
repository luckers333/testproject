class Content::EntriesController < Content::BaseController
  before_action :set_content_entry, only: [:show, :edit, :update, :destroy]

  # GET /content/entries
  # GET /content/entries.json
  def index
    # @content_entries = Content::Entry.all    
    @content_entries = Content::Entry.order("title DESC").page params[:page]    
  end

  # GET /content/entries/1
  # GET /content/entries/1.json
  def show
    redirect_to edit_content_entry_path(@content_entry)    
  end

  # GET /content/entries/new
  def new
    @content_entry = Content::Entry.new
  end

  # GET /content/entries/1/edit
  def edit
  end

  # POST /content/entries
  # POST /content/entries.json
  def create
    @content_entry = Content::Entry.new(content_entry_params)

    respond_to do |format|
      if @content_entry.save
        format.html { redirect_to @content_entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @content_entry }
      else
        format.html { render :new }
        format.json { render json: @content_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content/entries/1
  # PATCH/PUT /content/entries/1.json
  def update
    respond_to do |format|
      if @content_entry.update(content_entry_params)
        format.html { redirect_to @content_entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @content_entry }
      else
        format.html { render :edit }
        format.json { render json: @content_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content/entries/1
  # DELETE /content/entries/1.json
  def destroy
    @content_entry.destroy
    respond_to do |format|
      format.html { redirect_to content_entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_entry
      @content_entry = Content::Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_entry_params
      params.require(:content_entry).permit(:title, :slug, :content)
    end
end
