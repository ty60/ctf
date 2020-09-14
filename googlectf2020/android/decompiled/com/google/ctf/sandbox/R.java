package com.google.ctf.sandbox;
public final class R {

    public R()
    {
        return;
    }

    public static long[] ő(long p11, long p13)
    {
        if (p11 != 0) {
            long[] v0_3 = com.google.ctf.sandbox.R.ő((p13 % p11), p11);
            long[] v1_1 = new long[2];
            v1_1[0] = (v0_3[1] - ((p13 / p11) * v0_3[0]));
            v1_1[1] = v0_3[0];
            return v1_1;
        } else {
            long[] v0_2 = new long[2];
            v0_2 = {0.0, 5e-324};
            return v0_2;
        }
    }
}
