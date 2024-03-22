class Solution {
  func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var arr = nums1 + nums2
    arr.sort()

    return arr.count % 2 == 0
    ? Double(arr[arr.count / 2 - 1] + arr[arr.count / 2]) / 2
    : Double(arr[arr.count / 2])
  }
}