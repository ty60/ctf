package com.google.ctf.sandbox;
 class ő$1 implements android.view.View$OnClickListener {
    final synthetic com.google.ctf.sandbox.ő this$0;
    final synthetic android.widget.EditText val$editText;
    final synthetic android.widget.TextView val$textView;

    ő$1(com.google.ctf.sandbox.ő p1, android.widget.EditText p2, android.widget.TextView p3)
    {
        this.this$0 = p1;
        this.val$editText = p2;
        this.val$textView = p3;
        return;
    }

    public void onClick(android.view.View p19)
    {
        com.google.ctf.sandbox.ő$1 v1 = this;
        this.this$0.ő = 0;
        int v2_1 = new Object[49];
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
        String v3_6 = new StringBuilder();
        int v5_20 = v2_1.length;
        long[] v6_23 = 0;
        while (v6_23 < v5_20) {
            v3_6.append(((Character) v2_1[v6_23]).charValue());
            v6_23++;
        }
        if (!this.val$editText.getText().toString().equals(v3_6.toString())) {
            this.val$textView.setText("\u274c");
        } else {
            this.val$textView.setText("\u1f6a9");
        }
        return;
    }
}