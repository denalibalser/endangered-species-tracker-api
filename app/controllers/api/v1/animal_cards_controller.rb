class Api::V1::AnimalCardsController < ApplicationController

    def create
        @animal_card = AnimalCard.new(animal_card_params)

        if @animal_card.save
            # @animal_card.user_id = current_user.id
            render json: { status: 201, animal_card: @animal_card } 
        else 
            render json: { status: 401, animal_card: @animal_card, message: "Animal unable to be saved."}
        end
    end 

    def index 
        @animal_cards = AnimalCard.all

        render json: @animal_cards
        #{ status: 201, animal_cards: @animal_cards}
    end 

    def destroy 
        @animal_card = AnimalCard.find_by_id(params[:id])
        @animal_card.destroy

        render json: {animal_card: @animal_card}
    end 

    private 

    def animal_card_params
        params.require(:animal_card).permit(:common_name, :scientific_name, :endangered_level, :url, :user_id)

    end
end
