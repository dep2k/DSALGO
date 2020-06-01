import UIKit

var array = [3,4,5,6,7,8,9,1,2]
var target = 0
func search( nums : [Int], target : Int) -> Int {
    return binarySearch(nums:array, left:0, right: nums.count-1, target: target);
}

func  binarySearch(nums : [Int], left: Int , right: Int,target: Int) -> Int{
    if(left>right) {
        return -1;
    }
    let mid = left + (right-left)/2;
    
    if(target == nums[mid]) {
        return mid;
    }
    
    if(nums[left] <= nums[mid]){
        if(nums[left]<=target && target<nums[mid]){
            return binarySearch(nums: array,left: left, right: mid-1, target:target);
        }else{
            return  binarySearch(nums: array,left: mid + 1, right: right, target:target);
        }
    }else {
        if(nums[mid]<target && target<=nums[right]){
            return  binarySearch(nums: array,left: mid + 1, right: right, target: target);
        }else{
            return  binarySearch(nums: array,left: left, right: mid-1, target: target);
        }
    }
}

search (nums: array, target: 9)

