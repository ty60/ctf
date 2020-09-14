package android.support.constraint.solver;
public class ArrayLinkedVariables {
    private static final boolean DEBUG = False;
    private static final boolean FULL_NEW_CHECK = False;
    private static final int NONE = 255;
    private int ROW_SIZE;
    private android.support.constraint.solver.SolverVariable candidate;
    int currentSize;
    private int[] mArrayIndices;
    private int[] mArrayNextIndices;
    private float[] mArrayValues;
    private final android.support.constraint.solver.Cache mCache;
    private boolean mDidFillOnce;
    private int mHead;
    private int mLast;
    private final android.support.constraint.solver.ArrayRow mRow;

    ArrayLinkedVariables(android.support.constraint.solver.ArrayRow p3, android.support.constraint.solver.Cache p4)
    {
        this.currentSize = 0;
        this.ROW_SIZE = 8;
        this.candidate = 0;
        int v1_8 = new int[this.ROW_SIZE];
        this.mArrayIndices = v1_8;
        int v1_1 = new int[this.ROW_SIZE];
        this.mArrayNextIndices = v1_1;
        int v1_3 = new float[this.ROW_SIZE];
        this.mArrayValues = v1_3;
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = 0;
        this.mRow = p3;
        this.mCache = p4;
        return;
    }

    private boolean isNew(android.support.constraint.solver.SolverVariable p3, android.support.constraint.solver.LinearSystem p4)
    {
        int v1 = 1;
        if (p3.usageInRowCount > 1) {
            v1 = 0;
        }
        return v1;
    }

    final void add(android.support.constraint.solver.SolverVariable p11, float p12, boolean p13)
    {
        if (p12 != 0) {
            if (this.mHead != -1) {
                int v6 = -1;
                int v5_0 = this.mHead;
                int v1_1 = 0;
                while ((v5_0 != -1) && (v1_1 < this.currentSize)) {
                    if (this.mArrayIndices[v5_0] != p11.id) {
                        if (this.mArrayIndices[v5_0] < p11.id) {
                            v6 = v5_0;
                        }
                        v5_0 = this.mArrayNextIndices[v5_0];
                        v1_1++;
                    } else {
                        int v2_3 = this.mArrayValues;
                        v2_3[v5_0] = (v2_3[v5_0] + p12);
                        if (this.mArrayValues[v5_0] == 0) {
                            if (v5_0 != this.mHead) {
                                this.mArrayNextIndices[v6] = this.mArrayNextIndices[v5_0];
                            } else {
                                this.mHead = this.mArrayNextIndices[v5_0];
                            }
                            if (p13) {
                                p11.removeFromRow(this.mRow);
                            }
                            if (this.mDidFillOnce) {
                                this.mLast = v5_0;
                            }
                            p11.usageInRowCount = (p11.usageInRowCount - 1);
                            this.currentSize = (this.currentSize - 1);
                        }
                        return;
                    }
                }
                int v0_22 = (this.mLast + 1);
                if (this.mDidFillOnce) {
                    if (this.mArrayIndices[this.mLast] != -1) {
                        v0_22 = this.mArrayIndices.length;
                    } else {
                        v0_22 = this.mLast;
                    }
                }
                if ((v0_22 >= this.mArrayIndices.length) && (this.currentSize < this.mArrayIndices.length)) {
                    int v7_10 = 0;
                    while (v7_10 < this.mArrayIndices.length) {
                        if (this.mArrayIndices[v7_10] != -1) {
                            v7_10++;
                        } else {
                            v0_22 = v7_10;
                            break;
                        }
                    }
                }
                if (v0_22 >= this.mArrayIndices.length) {
                    v0_22 = this.mArrayIndices.length;
                    this.ROW_SIZE = (this.ROW_SIZE * 2);
                    this.mDidFillOnce = 0;
                    this.mLast = (v0_22 - 1);
                    this.mArrayValues = java.util.Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
                    this.mArrayIndices = java.util.Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                    this.mArrayNextIndices = java.util.Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
                }
                this.mArrayIndices[v0_22] = p11.id;
                this.mArrayValues[v0_22] = p12;
                if (v6 == -1) {
                    this.mArrayNextIndices[v0_22] = this.mHead;
                    this.mHead = v0_22;
                } else {
                    this.mArrayNextIndices[v0_22] = this.mArrayNextIndices[v6];
                    this.mArrayNextIndices[v6] = v0_22;
                }
                p11.usageInRowCount = (p11.usageInRowCount + 1);
                p11.addToRow(this.mRow);
                this.currentSize = (this.currentSize + 1);
                if (!this.mDidFillOnce) {
                    this.mLast = (this.mLast + 1);
                }
                if (this.mLast >= this.mArrayIndices.length) {
                    this.mDidFillOnce = 1;
                    this.mLast = (this.mArrayIndices.length - 1);
                }
                return;
            } else {
                this.mHead = 0;
                this.mArrayValues[this.mHead] = p12;
                this.mArrayIndices[this.mHead] = p11.id;
                this.mArrayNextIndices[this.mHead] = -1;
                p11.usageInRowCount = (p11.usageInRowCount + 1);
                p11.addToRow(this.mRow);
                this.currentSize = (this.currentSize + 1);
                if (!this.mDidFillOnce) {
                    this.mLast = (this.mLast + 1);
                    if (this.mLast >= this.mArrayIndices.length) {
                        this.mDidFillOnce = 1;
                        this.mLast = (this.mArrayIndices.length - 1);
                    }
                }
                return;
            }
        } else {
            return;
        }
    }

    android.support.constraint.solver.SolverVariable chooseSubject(android.support.constraint.solver.LinearSystem p18)
    {
        android.support.constraint.solver.SolverVariable v3 = 0;
        int v8 = this.mHead;
        int v9 = 0;
        boolean v10_0 = 0;
        int v11 = 0;
        int v7_0 = 0;
        int v6_0 = 0;
        int v5_0 = 0;
        android.support.constraint.solver.SolverVariable v4_0 = 0;
        while ((v8 != -1) && (v9 < this.currentSize)) {
            int v12_3 = this.mArrayValues[v8];
            android.support.constraint.solver.SolverVariable v14_2 = this.mCache.mIndexedVariables[this.mArrayIndices[v8]];
            if (v12_3 >= v10_0) {
                if (v12_3 < 981668463) {
                    this.mArrayValues[v8] = v10_0;
                    v12_3 = 0;
                    v14_2.removeFromRow(this.mRow);
                }
            } else {
                if (v12_3 > (- 981668463)) {
                    this.mArrayValues[v8] = v10_0;
                    v12_3 = 0;
                    v14_2.removeFromRow(this.mRow);
                }
            }
            if (v12_3 != v10_0) {
                if (v14_2.mType != android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED) {
                    if (v3 == null) {
                        v10_0 = 0;
                        if (v12_3 >= 0) {
                            v8 = this.mArrayNextIndices[v8];
                            v9++;
                        } else {
                            if (v4_0 != null) {
                                if (v6_0 <= v12_3) {
                                    if ((v11 != 0) || (!this.isNew(v14_2, p18))) {
                                    } else {
                                        v4_0 = v14_2;
                                        v6_0 = v12_3;
                                        v11 = 1;
                                    }
                                } else {
                                    v4_0 = v14_2;
                                    v6_0 = v12_3;
                                    v11 = this.isNew(v14_2, p18);
                                }
                            } else {
                                v4_0 = v14_2;
                                v6_0 = v12_3;
                                v11 = this.isNew(v14_2, p18);
                            }
                        }
                    }
                } else {
                    if (v3 != null) {
                        if (v5_0 <= v12_3) {
                            if ((v7_0 == 0) && (this.isNew(v14_2, p18))) {
                                v3 = v14_2;
                                v5_0 = v12_3;
                                v7_0 = 1;
                            }
                        } else {
                            v3 = v14_2;
                            v5_0 = v12_3;
                            v7_0 = this.isNew(v14_2, p18);
                        }
                    } else {
                        v3 = v14_2;
                        v5_0 = v12_3;
                        v7_0 = this.isNew(v14_2, p18);
                    }
                }
                v10_0 = 0;
            }
        }
        if (v3 == null) {
            return v4_0;
        } else {
            return v3;
        }
    }

    public final void clear()
    {
        int v2 = this.mHead;
        int v0_1 = 0;
        while ((v2 != -1) && (v0_1 < this.currentSize)) {
            android.support.constraint.solver.SolverVariable v3_2 = this.mCache.mIndexedVariables[this.mArrayIndices[v2]];
            if (v3_2 != null) {
                v3_2.removeFromRow(this.mRow);
            }
            v2 = this.mArrayNextIndices[v2];
            v0_1++;
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = 0;
        this.currentSize = 0;
        return;
    }

    final boolean containsKey(android.support.constraint.solver.SolverVariable p7)
    {
        if (this.mHead != -1) {
            int v3 = this.mHead;
            int v0_1 = 0;
            while ((v3 != -1) && (v0_1 < this.currentSize)) {
                if (this.mArrayIndices[v3] != p7.id) {
                    v3 = this.mArrayNextIndices[v3];
                    v0_1++;
                } else {
                    return 1;
                }
            }
            return 0;
        } else {
            return 0;
        }
    }

    public void display()
    {
        int v0 = this.currentSize;
        System.out.print("{ ");
        int v1_1 = 0;
        while (v1_1 < v0) {
            String v2_0 = this.getVariable(v1_1);
            if (v2_0 != null) {
                String v4_1 = new StringBuilder();
                v4_1.append(v2_0);
                v4_1.append(" = ");
                v4_1.append(this.getVariableValue(v1_1));
                v4_1.append(" ");
                System.out.print(v4_1.toString());
            }
            v1_1++;
        }
        System.out.println(" }");
        return;
    }

    void divideByAmount(float p5)
    {
        int v0 = this.mHead;
        int v1 = 0;
        while ((v0 != -1) && (v1 < this.currentSize)) {
            int[] v2_3 = this.mArrayValues;
            v2_3[v0] = (v2_3[v0] / p5);
            v0 = this.mArrayNextIndices[v0];
            v1++;
        }
        return;
    }

    public final float get(android.support.constraint.solver.SolverVariable p5)
    {
        int v0 = this.mHead;
        int v1 = 0;
        while ((v0 != -1) && (v1 < this.currentSize)) {
            if (this.mArrayIndices[v0] != p5.id) {
                v0 = this.mArrayNextIndices[v0];
                v1++;
            } else {
                return this.mArrayValues[v0];
            }
        }
        return 0;
    }

    android.support.constraint.solver.SolverVariable getPivotCandidate()
    {
        if (this.candidate != null) {
            return this.candidate;
        } else {
            int v0_2 = this.mHead;
            int v1 = 0;
            int[] v2 = 0;
            while ((v0_2 != -1) && (v1 < this.currentSize)) {
                if (this.mArrayValues[v0_2] < 0) {
                    int[] v3_5 = this.mCache.mIndexedVariables[this.mArrayIndices[v0_2]];
                    if ((v2 == null) || (v2.strength < v3_5.strength)) {
                        v2 = v3_5;
                    }
                }
                v0_2 = this.mArrayNextIndices[v0_2];
                v1++;
            }
            return v2;
        }
    }

    android.support.constraint.solver.SolverVariable getPivotCandidate(boolean[] p9, android.support.constraint.solver.SolverVariable p10)
    {
        int[] v4 = 0;
        int v2_1 = 0;
        int v1_1 = this.mHead;
        float v0_1 = 0;
        while ((v1_1 != -1) && (v2_1 < this.currentSize)) {
            if (this.mArrayValues[v1_1] < 0) {
                int[] v5_6 = this.mCache.mIndexedVariables[this.mArrayIndices[v1_1]];
                if (((p9 == null) || (!p9[v5_6.id])) && ((v5_6 != p10) && ((v5_6.mType == android.support.constraint.solver.SolverVariable$Type.SLACK) || (v5_6.mType == android.support.constraint.solver.SolverVariable$Type.ERROR)))) {
                    float v6_7 = this.mArrayValues[v1_1];
                    if (v6_7 < v0_1) {
                        v0_1 = v6_7;
                        v4 = v5_6;
                    }
                }
            }
            v1_1 = this.mArrayNextIndices[v1_1];
            v2_1++;
        }
        return v4;
    }

    final android.support.constraint.solver.SolverVariable getVariable(int p5)
    {
        int v0 = this.mHead;
        int v1 = 0;
        while ((v0 != -1) && (v1 < this.currentSize)) {
            if (v1 != p5) {
                v0 = this.mArrayNextIndices[v0];
                v1++;
            } else {
                return this.mCache.mIndexedVariables[this.mArrayIndices[v0]];
            }
        }
        return 0;
    }

    final float getVariableValue(int p4)
    {
        int v0 = this.mHead;
        int v1 = 0;
        while ((v0 != -1) && (v1 < this.currentSize)) {
            if (v1 != p4) {
                v0 = this.mArrayNextIndices[v0];
                v1++;
            } else {
                return this.mArrayValues[v0];
            }
        }
        return 0;
    }

    boolean hasAtLeastOnePositiveVariable()
    {
        int v2 = this.mHead;
        int v0_1 = 0;
        while ((v2 != -1) && (v0_1 < this.currentSize)) {
            if (this.mArrayValues[v2] <= 0) {
                v2 = this.mArrayNextIndices[v2];
                v0_1++;
            } else {
                return 1;
            }
        }
        return 0;
    }

    void invert()
    {
        int v0 = this.mHead;
        int v1 = 0;
        while ((v0 != -1) && (v1 < this.currentSize)) {
            int[] v2_3 = this.mArrayValues;
            v2_3[v0] = (v2_3[v0] * -1082130432);
            v0 = this.mArrayNextIndices[v0];
            v1++;
        }
        return;
    }

    public final void put(android.support.constraint.solver.SolverVariable p10, float p11)
    {
        if (p11 != 0) {
            if (this.mHead != -1) {
                int v5 = -1;
                int v4_0 = this.mHead;
                int v0_2 = 0;
                while ((v4_0 != -1) && (v0_2 < this.currentSize)) {
                    if (this.mArrayIndices[v4_0] != p10.id) {
                        if (this.mArrayIndices[v4_0] < p10.id) {
                            v5 = v4_0;
                        }
                        v4_0 = this.mArrayNextIndices[v4_0];
                        v0_2++;
                    } else {
                        this.mArrayValues[v4_0] = p11;
                        return;
                    }
                }
                int v6_7 = (this.mLast + 1);
                if (this.mDidFillOnce) {
                    if (this.mArrayIndices[this.mLast] != -1) {
                        v6_7 = this.mArrayIndices.length;
                    } else {
                        v6_7 = this.mLast;
                    }
                }
                if ((v6_7 >= this.mArrayIndices.length) && (this.currentSize < this.mArrayIndices.length)) {
                    int v7_9 = 0;
                    while (v7_9 < this.mArrayIndices.length) {
                        if (this.mArrayIndices[v7_9] != -1) {
                            v7_9++;
                        } else {
                            v6_7 = v7_9;
                            break;
                        }
                    }
                }
                if (v6_7 >= this.mArrayIndices.length) {
                    v6_7 = this.mArrayIndices.length;
                    this.ROW_SIZE = (this.ROW_SIZE * 2);
                    this.mDidFillOnce = 0;
                    this.mLast = (v6_7 - 1);
                    this.mArrayValues = java.util.Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
                    this.mArrayIndices = java.util.Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                    this.mArrayNextIndices = java.util.Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
                }
                this.mArrayIndices[v6_7] = p10.id;
                this.mArrayValues[v6_7] = p11;
                if (v5 == -1) {
                    this.mArrayNextIndices[v6_7] = this.mHead;
                    this.mHead = v6_7;
                } else {
                    this.mArrayNextIndices[v6_7] = this.mArrayNextIndices[v5];
                    this.mArrayNextIndices[v5] = v6_7;
                }
                p10.usageInRowCount = (p10.usageInRowCount + 1);
                p10.addToRow(this.mRow);
                this.currentSize = (this.currentSize + 1);
                if (!this.mDidFillOnce) {
                    this.mLast = (this.mLast + 1);
                }
                if (this.currentSize >= this.mArrayIndices.length) {
                    this.mDidFillOnce = 1;
                }
                if (this.mLast >= this.mArrayIndices.length) {
                    this.mDidFillOnce = 1;
                    this.mLast = (this.mArrayIndices.length - 1);
                }
                return;
            } else {
                this.mHead = 0;
                this.mArrayValues[this.mHead] = p11;
                this.mArrayIndices[this.mHead] = p10.id;
                this.mArrayNextIndices[this.mHead] = -1;
                p10.usageInRowCount = (p10.usageInRowCount + 1);
                p10.addToRow(this.mRow);
                this.currentSize = (this.currentSize + 1);
                if (!this.mDidFillOnce) {
                    this.mLast = (this.mLast + 1);
                    if (this.mLast >= this.mArrayIndices.length) {
                        this.mDidFillOnce = 1;
                        this.mLast = (this.mArrayIndices.length - 1);
                    }
                }
                return;
            }
        } else {
            this.remove(p10, 1);
            return;
        }
    }

    public final float remove(android.support.constraint.solver.SolverVariable p8, boolean p9)
    {
        if (this.candidate == p8) {
            this.candidate = 0;
        }
        if (this.mHead != -1) {
            int v0_2 = this.mHead;
            int v3 = -1;
            int v4 = 0;
            while ((v0_2 != -1) && (v4 < this.currentSize)) {
                if (this.mArrayIndices[v0_2] != p8.id) {
                    v3 = v0_2;
                    v0_2 = this.mArrayNextIndices[v0_2];
                    v4++;
                } else {
                    if (v0_2 != this.mHead) {
                        this.mArrayNextIndices[v3] = this.mArrayNextIndices[v0_2];
                    } else {
                        this.mHead = this.mArrayNextIndices[v0_2];
                    }
                    if (p9) {
                        p8.removeFromRow(this.mRow);
                    }
                    p8.usageInRowCount = (p8.usageInRowCount - 1);
                    this.currentSize = (this.currentSize - 1);
                    this.mArrayIndices[v0_2] = -1;
                    if (this.mDidFillOnce) {
                        this.mLast = v0_2;
                    }
                    return this.mArrayValues[v0_2];
                }
            }
            return 0;
        } else {
            return 0;
        }
    }

    int sizeInBytes()
    {
        return ((0 + ((this.mArrayIndices.length * 4) * 3)) + 36);
    }

    public String toString()
    {
        String v0_0 = "";
        int v1 = this.mHead;
        int v2 = 0;
        while ((v1 != -1) && (v2 < this.currentSize)) {
            int[] v3_8 = new StringBuilder();
            v3_8.append(v0_0);
            v3_8.append(" -> ");
            String v0_1 = v3_8.toString();
            int[] v3_1 = new StringBuilder();
            v3_1.append(v0_1);
            v3_1.append(this.mArrayValues[v1]);
            v3_1.append(" : ");
            String v0_2 = v3_1.toString();
            int[] v3_3 = new StringBuilder();
            v3_3.append(v0_2);
            v3_3.append(this.mCache.mIndexedVariables[this.mArrayIndices[v1]]);
            v0_0 = v3_3.toString();
            v1 = this.mArrayNextIndices[v1];
            v2++;
        }
        return v0_0;
    }

    final void updateFromRow(android.support.constraint.solver.ArrayRow p12, android.support.constraint.solver.ArrayRow p13, boolean p14)
    {
        int v2 = this.mHead;
        int v0_1 = 0;
        while ((v2 != -1) && (v0_1 < this.currentSize)) {
            if (this.mArrayIndices[v2] != p13.variable.id) {
                v2 = this.mArrayNextIndices[v2];
                v0_1++;
            } else {
                float v4_2 = this.mArrayValues[v2];
                this.remove(p13.variable, p14);
                android.support.constraint.solver.ArrayLinkedVariables v5_4 = ((android.support.constraint.solver.ArrayLinkedVariables) p13.variables);
                int v7 = v5_4.mHead;
                int v6_1 = 0;
                while ((v7 != -1) && (v6_1 < v5_4.currentSize)) {
                    this.add(this.mCache.mIndexedVariables[v5_4.mArrayIndices[v7]], (v5_4.mArrayValues[v7] * v4_2), p14);
                    v7 = v5_4.mArrayNextIndices[v7];
                    v6_1++;
                }
                p12.constantValue = (p12.constantValue + (p13.constantValue * v4_2));
                if (p14) {
                    p13.variable.removeFromRow(p12);
                }
                v2 = this.mHead;
                v0_1 = 0;
            }
        }
        return;
    }

    void updateFromSystem(android.support.constraint.solver.ArrayRow p17, android.support.constraint.solver.ArrayRow[] p18)
    {
        int v4 = this.mHead;
        int v2_0 = 0;
        while ((v4 != -1) && (v2_0 < this.currentSize)) {
            android.support.constraint.solver.SolverVariable v6_2 = this.mCache.mIndexedVariables[this.mArrayIndices[v4]];
            if (v6_2.definitionId == -1) {
                v4 = this.mArrayNextIndices[v4];
                v2_0++;
            } else {
                float v7_4 = this.mArrayValues[v4];
                this.remove(v6_2, 1);
                android.support.constraint.solver.ArrayRow v9_1 = p18[v6_2.definitionId];
                if (!v9_1.isSimpleDefinition) {
                    android.support.constraint.solver.ArrayLinkedVariables v10_2 = ((android.support.constraint.solver.ArrayLinkedVariables) v9_1.variables);
                    int v12 = v10_2.mHead;
                    int v11_1 = 0;
                    while ((v12 != -1) && (v11_1 < v10_2.currentSize)) {
                        this.add(this.mCache.mIndexedVariables[v10_2.mArrayIndices[v12]], (v10_2.mArrayValues[v12] * v7_4), 1);
                        v12 = v10_2.mArrayNextIndices[v12];
                        v11_1++;
                    }
                }
                p17.constantValue = (p17.constantValue + (v9_1.constantValue * v7_4));
                v9_1.variable.removeFromRow(p17);
                v4 = this.mHead;
                v2_0 = 0;
            }
        }
        return;
    }
}
