
public int[] rotate(int d, int[] l ) {
   int[] rl = int[l.length];
   d = (d % l.length);
   if (d < 0) {
      d = l.length + d + 1
   }
   for (int i=d; i< l.length; i++) {
       rl[i] = l[i-d];
   }
   for (int i=0; i < d; i++) {
      rl[i] = l[l.length-d + i - 1];
       }
   }
   return rl;
}








