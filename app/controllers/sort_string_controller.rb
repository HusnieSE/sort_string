class SortStringController < ApplicationController
  def index
    input_string = params[:text_string]
    if params[:sort_type] == "bubble_sort"
      input_string.nil? ? "" : @text = SortStringModel.bubbleSort(input_string)
    else
      input_string.nil? ? "" : @text = SortStringModel.quickSort(input_string, 0, nil)
    end
  end

end
