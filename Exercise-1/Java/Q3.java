class Q3 {
    public static void main(String[] args) {
        int arr[] = { 99, 45, 87, 23, 12, 3, 71, 64 };
        for (int i = 0; i < arr.length; i++) {
            for (int j = i + 1; j < arr.length; j++) {
                if (arr[i] > arr[j]) {
                    int temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }
        System.out.println("Second Largest Number: " + arr[arr.length - 2]);
    }
}
