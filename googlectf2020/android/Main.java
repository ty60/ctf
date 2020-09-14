class Main {
    public static void main(String args[])
    {
        Integer v2_1[] = new Integer[49];
        v2_1[0] = Integer.valueOf(65);
        v2_1[1] = Integer.valueOf(112);
        v2_1[2] = Integer.valueOf(112);
        v2_1[3] = Integer.valueOf(97);
        v2_1[4] = Integer.valueOf(114);
        v2_1[5] = Integer.valueOf(101);
        v2_1[6] = Integer.valueOf(110);
        v2_1[7] = Integer.valueOf(116);
        v2_1[8] = Integer.valueOf(108);
        v2_1[9] = Integer.valueOf(121);
        v2_1[10] = Integer.valueOf(32);
        v2_1[11] = Integer.valueOf(116);
        v2_1[12] = Integer.valueOf(104);
        v2_1[13] = Integer.valueOf(105);
        v2_1[14] = Integer.valueOf(115);
        v2_1[15] = Integer.valueOf(32);
        v2_1[16] = Integer.valueOf(105);
        v2_1[17] = Integer.valueOf(115);
        v2_1[18] = Integer.valueOf(32);
        v2_1[19] = Integer.valueOf(110);
        v2_1[20] = Integer.valueOf(111);
        v2_1[21] = Integer.valueOf(116);
        v2_1[22] = Integer.valueOf(32);
        v2_1[23] = Integer.valueOf(116);
        v2_1[24] = Integer.valueOf(104);
        v2_1[25] = Integer.valueOf(101);
        v2_1[26] = Integer.valueOf(32);
        v2_1[27] = Integer.valueOf(102);
        v2_1[28] = Integer.valueOf(108);
        v2_1[29] = Integer.valueOf(97);
        v2_1[30] = Integer.valueOf(103);
        v2_1[31] = Integer.valueOf(46);
        v2_1[32] = Integer.valueOf(32);
        v2_1[33] = Integer.valueOf(87);
        v2_1[34] = Integer.valueOf(104);
        v2_1[35] = Integer.valueOf(97);
        v2_1[36] = Integer.valueOf(116);
        v2_1[37] = Integer.valueOf(39);
        v2_1[38] = Integer.valueOf(115);
        v2_1[39] = Integer.valueOf(32);
        v2_1[40] = Integer.valueOf(103);
        v2_1[41] = Integer.valueOf(111);
        v2_1[42] = Integer.valueOf(105);
        v2_1[43] = Integer.valueOf(110);
        v2_1[44] = Integer.valueOf(103);
        v2_1[45] = Integer.valueOf(32);
        v2_1[46] = Integer.valueOf(111);
        v2_1[47] = Integer.valueOf(110);
        v2_1[48] = Integer.valueOf(63);
        StringBuilder v3_6 = new StringBuilder();
        int v5_20 = v2_1.length;
        int v6_23 = 0;
        while (v6_23 < v5_20) {
            // v3_6.append(((Character) v2_1[v6_23]).charValue());
            v3_6.append((v2_1[v6_23]).toString());
            v6_23++;
        }
        System.out.println(v3_6.toString());
        return;
    }
}

