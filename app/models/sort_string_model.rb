class SortStringModel < ApplicationRecord

    def self.bubbleSort(text)
        counter = 0
        notSorted = true
        while notSorted
            notSorted = false
            text.to_s.chars.each_with_index do |t, index|
                if index != text.size - 1
                    if text[index].downcase > text[index + 1].downcase
                        temp = text[index]
                        text[index] = text[index + 1]
                        text[index + 1] = temp
                        notSorted = true
                    end
                end
            end
            puts text
        end
        text
    end

    def self.quickSort(array, from, to)
        if to == nil
            to = array.size - 1
        end
    
        if from >= to
            return array
        end
    
        pivot = array[from]
    
        min = from
        max = to
        free = min
    
        while min < max
            if free == min
                if array[max].downcase <= pivot.downcase
                    array[free] = array[max]
                    min += 1
                    free = max
                else
                    max -= 1
                end
            elsif free == max
                if array[min].downcase >= pivot.downcase
                    array[free] = array[min]
                    max -= 1
                    free = min
                else
                    min += 1
                end
            else
                raise "Inconsistent state"
            end
        end
    
        array[free] = pivot
        quickSort array, from, free - 1
        quickSort array, free + 1, to
    end
end
