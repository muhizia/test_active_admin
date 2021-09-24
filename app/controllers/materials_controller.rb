class MaterialsController < InheritedResources::Base

  private

    def material_params
      params.require(:material).permit(:item_name, :type)
    end

end
