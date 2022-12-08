import java.util.*;

class Q1 {
    public static void main(String[] args) {
        String[] strArray = { "abc", "def", "ABZ", "ASD", "AbC" };
        int n = strArray.length;
        List<String> storedItem = new ArrayList<String>();

        for (int i = 0; i < n; i++) {
            int flag = 0;
            for (int j = 0; j < i; j++) {
                if (strArray[i].equalsIgnoreCase(strArray[j])) {
                    flag = 1;
                    break;
                }
            }
            if (flag == 0) {
                storedItem.add(strArray[i]);
            }
        }

        System.out.println(storedItem);
    }
}