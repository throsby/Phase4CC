class VendorsController < ApplicationController

    def index
        vendors = Vendor.all
        render json: vendors.to_json(except: [:vendor_sweets, :created_at, :updated_at]), status: 200
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        if vendor
            render json: vendor, status: 200
        else
            render json: {error: "Vendor not found"}, status: 404
        end
    end
end
