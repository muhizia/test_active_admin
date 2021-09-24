class TypesController < InheritedResources::Base

  private

    def type_params
      params.require(:type).permit(:type)
    end

end
