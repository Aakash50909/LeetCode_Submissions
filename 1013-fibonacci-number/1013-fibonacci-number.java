
class Solution {
    ArrayList <Integer> array= new ArrayList<>();
    public int fib(int n)
    {
        array.addAll(Collections.nCopies(n+1, -1));
        return fibDP(n,array);
    }
    public int fibDP(int n, ArrayList <Integer> arr) 
    {
        if(n<=1)
        return n;
        if(arr.get(n)!=-1)
        {
            return arr.get(n);
        }
        arr.set(n,fibDP(n-1,arr)+fibDP(n-2,arr));
        return arr.get(n);
    }
}