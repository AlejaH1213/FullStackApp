class BlogController < ApplicationController
def index 
    @blogs = Blog.all 
end 
    
def show 
    @blog = Blog.find(params[:id])
end
    
def new 
    @blog = Blog.new
end

def edit
    @blog = Blog.find(params[:id])
end
    
def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to root_path 
    else
      render :edit
    end
  end

def create 
  @blog = Blog.create(blog_params)
    if @blog.save
        redirect_to root_path
    else
        render :new
    end
end



def destroy 
    @blog = Blog.find(params[:id])
        if @blog.destroy
          redirect_to root_path
        else
          redirect_to root_path
        end
end
      
    
private 
def blog_params 
    params.require(:blog).permit(:title, :content)
end 

end
