class Api::V1::AnimalCardsController < ApplicationController

    def create
        @species_card = AnimalCard.new(species_card_params)
        if @species_card.save
            render json: { status: 201, species_card: @species_card } 
        else 
            render json: { status: 401, message: "Species unable to be saved."}  
        end
    end 

    def index 
        @species_cards = AnimalCard.all
        render json: @species_cards
    end 

    def destroy 
        @species_card = AnimalCard.find_by_id(params[:id])
        @species_card.destroy
        render json: {species_card: @species_card}
    end 

    private 

    def species_card_params
        params.require(:animal_card).permit(:common_name, :scientific_name, :endangered_level, :url, :user_id)
    end
end
