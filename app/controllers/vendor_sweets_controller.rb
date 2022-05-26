class VendorSweetsController < ApplicationController

    def create
        vendorSweet = VendorSweet.create(vs_params)
        if vendorSweet.valid?
            # Serializing is hard, the id is supposed to be from Sweet, like the Name. But composed. And done correctly :(
            render json: vendorSweet.as_json(only: [:id , :price, :name]), status: 201
        else
            render json: { "errors": vendorSweet.errors.full_messages }, status: 422
        end
    end

    def destroy
        vendorSweet = VendorSweet.find_by(id: params[:id])
        if vendorSweet
            vendorSweet.delete
            render json: {}, status: 200
        else
            render json: { "error": "VendorSweet not found"}, status: 404
        end
    end


    private

    def vs_params
        params.permit [:vendor_id, :sweet_id, :price]
    end
end
