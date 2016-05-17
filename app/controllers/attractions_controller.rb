class AttractionsController < ApplicationController
  def show
    @attraction = Attraction.find(params[:id])
    description_list = parse_description(@attraction.description)
    @description = description_list["description"]
    description_list.delete("description")
    @attraction_info = description_list
  end

  private
    def parse_description(description_string)
      description_list = description_string.split('</p>')
      description = Hash.new
      description["description"] = description_list[0].sub("<p>", "")
      attraction_info = description_list[1].sub("<p>", "")
      attraction_info = attraction_info.split '<b>'
      attraction_info.delete(" ")
      attraction_info.each do |item|
        items = item.split '</b>'
        if items.length > 1
          key = items[0]
          value = items[1].sub("<br />", "")
          description[key] = value
        end
      end
      description
    end
end
