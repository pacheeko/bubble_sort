def bubble_sort(array)
  array.length-1.times do
    array.each_with_index do |i,index|
    	unless i == array[-1]
  	  		item_2 = array[index + 1]
    		if i > item_2
      			array[index + 1] = i
      			array[index] = item_2
      		end
      	end
    end
  end
  print array
end

#bubble_sort([5,7,3,8,1,9,3])

def bubble_sort_by(array)
  array.length-1.times do
    array.each_with_index do |i,index|
      unless i == array[-1]
        item = array[index+1]
        if yield(i,array[index+1]) > 0
          array[index+1] = i
          array[index] = item
        end
      end
    end
  end
  print array
end


#bubble_sort_by(["Greetings","hi","Salutations","hello","hey"]) do |left,right|
#  left.length - right.length
#end