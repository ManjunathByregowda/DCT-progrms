# var array1 = [1, 2, 3]; 
# var array2 = [2, 30, 1]; 
# merge_array(array1, array2)
# output = [3, 2, 30, 1]

array1 = [1, 2, 3]; 
array2 = [2, 30, 1];

def merge_array(n1,n2)
	merge = n1 + n2;
	puts merge.uniq
end

merge_array(array1, array2)