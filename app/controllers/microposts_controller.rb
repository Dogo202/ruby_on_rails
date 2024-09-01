class MicropostsController < InheritedResources::Base

  private

    def micropost_params
      params.require(:micropost).permit(:content, :user_id)
    end

end
