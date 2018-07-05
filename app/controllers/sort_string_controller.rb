class SortStringController < ApplicationController
  def index
    input_string = params[:text_string]
    type = params[:sort_type]
    @text = []
    if type == "bubble_sort"
      input_string.nil? ? "" :@text << {"sorted": SortStringModel.bubbleSort(input_string), "input_string": params[:text_string]}
    else
      input_string.nil? ? "" :@text << {"sorted": SortStringModel.quickSort(input_string, 0, nil), "input_string": params[:text_string]}
    end
  end

end
