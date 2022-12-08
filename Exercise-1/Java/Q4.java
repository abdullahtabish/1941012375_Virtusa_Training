public class Q4 {
    public static void main(String[] args) {
        int arr[] = { 2, 5, 8, 9, 0, 1, 7, 10 };
        for (int i = 0; i < arr.length; i++) {
            for (int j = i + 1; j < arr.length; j++) {
                for (int k = 0; k < arr.length; k++) {
                    if (arr[i] + arr[j] == arr[k]) {
                        System.out.println("(" + arr[i] + " " + arr[j] + ")");
                    }
                }
            }
        }
    }
}
