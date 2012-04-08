class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  
    before_filter :find_parents
    
  
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html  { redirect_to forum_topic_path(@forum, @topic) }
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = current_user.reply @topic, params[:post][:body]
    respond_to do |format|
      if @post.new_record?
        format.html { redirect_to forum_topic_path(@forum, @topic) }
        format.xml { render :xml => @post.errors, :status => :unprocessable_entity }
      else
        logger.debug ("successfully created")
        flash[:notice] = 'Post was successfully created.'
        format.html { redirect_to(forum_topic_post_path(@forum, @topic, @post, :anchor => dom_id(@post))) }
        format.xml { render :xml => @post, :status => :created, :location => forum_topic_post_url(@forum, @topic, @post) }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
  
   def find_parents
      if params[:user_id]
        @parent = @user = User.find(params[:user_id])
      elsif params[:forum_id]
        @parent = @forum = Forum.find(params[:forum_id])
        @parent = @topic = @forum.topics.find(params[:topic_id]) if params[:topic_id]
      end
    end
    
    
end
