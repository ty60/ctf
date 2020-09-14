package android.support.constraint.solver;
public class ArrayRow implements android.support.constraint.solver.LinearSystem$Row {
    private static final boolean DEBUG = False;
    private static final float epsilon = 981668463;
    float constantValue;
    boolean isSimpleDefinition;
    boolean used;
    android.support.constraint.solver.SolverVariable variable;
    public final android.support.constraint.solver.ArrayLinkedVariables variables;

    public ArrayRow(android.support.constraint.solver.Cache p2)
    {
        this.variable = 0;
        this.constantValue = 0;
        this.used = 0;
        this.isSimpleDefinition = 0;
        this.variables = new android.support.constraint.solver.ArrayLinkedVariables(this, p2);
        return;
    }

    public android.support.constraint.solver.ArrayRow addError(android.support.constraint.solver.LinearSystem p4, int p5)
    {
        this.variables.put(p4.createErrorVariable(p5, "ep"), 1065353216);
        this.variables.put(p4.createErrorVariable(p5, "em"), -1082130432);
        return this;
    }

    public void addError(android.support.constraint.solver.SolverVariable p4)
    {
        int v0 = 1065353216;
        if (p4.strength != 1) {
            if (p4.strength != 2) {
                if (p4.strength != 3) {
                    if (p4.strength != 4) {
                        if (p4.strength == 5) {
                            v0 = 1399379109;
                        }
                    } else {
                        v0 = 1315859240;
                    }
                } else {
                    v0 = 1232348160;
                }
            } else {
                v0 = 1148846080;
            }
        } else {
            v0 = 1065353216;
        }
        this.variables.put(p4, v0);
        return;
    }

    android.support.constraint.solver.ArrayRow addSingleError(android.support.constraint.solver.SolverVariable p3, int p4)
    {
        this.variables.put(p3, ((float) p4));
        return this;
    }

    boolean chooseSubject(android.support.constraint.solver.LinearSystem p4)
    {
        int v0 = 0;
        android.support.constraint.solver.SolverVariable v1_1 = this.variables.chooseSubject(p4);
        if (v1_1 != null) {
            this.pivot(v1_1);
        } else {
            v0 = 1;
        }
        if (this.variables.currentSize == 0) {
            this.isSimpleDefinition = 1;
        }
        return v0;
    }

    public void clear()
    {
        this.variables.clear();
        this.variable = 0;
        this.constantValue = 0;
        return;
    }

    android.support.constraint.solver.ArrayRow createRowCentering(android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, int p7, float p8, android.support.constraint.solver.SolverVariable p9, android.support.constraint.solver.SolverVariable p10, int p11)
    {
        if (p6 != p9) {
            if (p8 != 1056964608) {
                if (p8 > 0) {
                    if (p8 < 1065353216) {
                        this.variables.put(p5, ((1065353216 - p8) * 1065353216));
                        this.variables.put(p6, ((1065353216 - p8) * -1082130432));
                        this.variables.put(p9, (-1082130432 * p8));
                        this.variables.put(p10, (p8 * 1065353216));
                        if ((p7 > 0) || (p11 > 0)) {
                            this.constantValue = ((((float) (- p7)) * (1065353216 - p8)) + (((float) p11) * p8));
                        }
                    } else {
                        this.variables.put(p9, -1082130432);
                        this.variables.put(p10, 1065353216);
                        this.constantValue = ((float) p11);
                    }
                } else {
                    this.variables.put(p5, -1082130432);
                    this.variables.put(p6, 1065353216);
                    this.constantValue = ((float) p7);
                }
            } else {
                this.variables.put(p5, 1065353216);
                this.variables.put(p6, -1082130432);
                this.variables.put(p9, -1082130432);
                this.variables.put(p10, 1065353216);
                if ((p7 > 0) || (p11 > 0)) {
                    this.constantValue = ((float) ((- p7) + p11));
                }
            }
            return this;
        } else {
            this.variables.put(p5, 1065353216);
            this.variables.put(p10, 1065353216);
            this.variables.put(p6, -1073741824);
            return this;
        }
    }

    android.support.constraint.solver.ArrayRow createRowDefinition(android.support.constraint.solver.SolverVariable p2, int p3)
    {
        this.variable = p2;
        p2.computedValue = ((float) p3);
        this.constantValue = ((float) p3);
        this.isSimpleDefinition = 1;
        return this;
    }

    android.support.constraint.solver.ArrayRow createRowDimensionPercent(android.support.constraint.solver.SolverVariable p3, android.support.constraint.solver.SolverVariable p4, android.support.constraint.solver.SolverVariable p5, float p6)
    {
        this.variables.put(p3, -1082130432);
        this.variables.put(p4, (1065353216 - p6));
        this.variables.put(p5, p6);
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowDimensionRatio(android.support.constraint.solver.SolverVariable p3, android.support.constraint.solver.SolverVariable p4, android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, float p7)
    {
        this.variables.put(p3, -1082130432);
        this.variables.put(p4, 1065353216);
        this.variables.put(p5, p7);
        this.variables.put(p6, (- p7));
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowEqualDimension(float p15, float p16, float p17, android.support.constraint.solver.SolverVariable p18, int p19, android.support.constraint.solver.SolverVariable p20, int p21, android.support.constraint.solver.SolverVariable p22, int p23, android.support.constraint.solver.SolverVariable p24, int p25)
    {
        if ((p16 != 0) && (p15 != p17)) {
            float v10_0 = ((p15 / p16) / (p17 / p16));
            this.constantValue = ((((float) ((- p19) - p21)) + (((float) p23) * v10_0)) + (((float) p25) * v10_0));
            this.variables.put(p18, 1065353216);
            this.variables.put(p20, -1082130432);
            this.variables.put(p24, v10_0);
            this.variables.put(p22, (- v10_0));
        } else {
            this.constantValue = ((float) ((((- p19) - p21) + p23) + p25));
            this.variables.put(p18, 1065353216);
            this.variables.put(p20, -1082130432);
            this.variables.put(p24, 1065353216);
            this.variables.put(p22, -1082130432);
        }
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowEqualMatchDimensions(float p7, float p8, float p9, android.support.constraint.solver.SolverVariable p10, android.support.constraint.solver.SolverVariable p11, android.support.constraint.solver.SolverVariable p12, android.support.constraint.solver.SolverVariable p13)
    {
        this.constantValue = 0;
        if ((p8 != 0) && (p7 != p9)) {
            if (p7 != 0) {
                if (p9 != 0) {
                    float v4 = ((p7 / p8) / (p9 / p8));
                    this.variables.put(p10, 1065353216);
                    this.variables.put(p11, -1082130432);
                    this.variables.put(p13, v4);
                    this.variables.put(p12, (- v4));
                } else {
                    this.variables.put(p12, 1065353216);
                    this.variables.put(p13, -1082130432);
                }
            } else {
                this.variables.put(p10, 1065353216);
                this.variables.put(p11, -1082130432);
            }
        } else {
            this.variables.put(p10, 1065353216);
            this.variables.put(p11, -1082130432);
            this.variables.put(p13, 1065353216);
            this.variables.put(p12, -1082130432);
        }
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowEquals(android.support.constraint.solver.SolverVariable p3, int p4)
    {
        if (p4 >= 0) {
            this.constantValue = ((float) p4);
            this.variables.put(p3, -1082130432);
        } else {
            this.constantValue = ((float) (p4 * -1));
            this.variables.put(p3, 1065353216);
        }
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowEquals(android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, int p7)
    {
        int v0 = 0;
        if (p7 != 0) {
            android.support.constraint.solver.ArrayLinkedVariables v1_1 = p7;
            if (p7 < 0) {
                v1_1 = (p7 * -1);
                v0 = 1;
            }
            this.constantValue = ((float) v1_1);
        }
        if (v0 != 0) {
            this.variables.put(p5, 1065353216);
            this.variables.put(p6, -1082130432);
        } else {
            this.variables.put(p5, -1082130432);
            this.variables.put(p6, 1065353216);
        }
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowGreaterThan(android.support.constraint.solver.SolverVariable p3, int p4, android.support.constraint.solver.SolverVariable p5)
    {
        this.constantValue = ((float) p4);
        this.variables.put(p3, -1082130432);
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowGreaterThan(android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, android.support.constraint.solver.SolverVariable p7, int p8)
    {
        int v0 = 0;
        if (p8 != 0) {
            android.support.constraint.solver.ArrayLinkedVariables v1_2 = p8;
            if (p8 < 0) {
                v1_2 = (p8 * -1);
                v0 = 1;
            }
            this.constantValue = ((float) v1_2);
        }
        if (v0 != 0) {
            this.variables.put(p5, 1065353216);
            this.variables.put(p6, -1082130432);
            this.variables.put(p7, -1082130432);
        } else {
            this.variables.put(p5, -1082130432);
            this.variables.put(p6, 1065353216);
            this.variables.put(p7, 1065353216);
        }
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowLowerThan(android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, android.support.constraint.solver.SolverVariable p7, int p8)
    {
        int v0 = 0;
        if (p8 != 0) {
            android.support.constraint.solver.ArrayLinkedVariables v1_0 = p8;
            if (p8 < 0) {
                v1_0 = (p8 * -1);
                v0 = 1;
            }
            this.constantValue = ((float) v1_0);
        }
        if (v0 != 0) {
            this.variables.put(p5, 1065353216);
            this.variables.put(p6, -1082130432);
            this.variables.put(p7, 1065353216);
        } else {
            this.variables.put(p5, -1082130432);
            this.variables.put(p6, 1065353216);
            this.variables.put(p7, -1082130432);
        }
        return this;
    }

    public android.support.constraint.solver.ArrayRow createRowWithAngle(android.support.constraint.solver.SolverVariable p3, android.support.constraint.solver.SolverVariable p4, android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, float p7)
    {
        this.variables.put(p5, 1056964608);
        this.variables.put(p6, 1056964608);
        this.variables.put(p3, -1090519040);
        this.variables.put(p4, -1090519040);
        this.constantValue = (- p7);
        return this;
    }

    void ensurePositiveConstant()
    {
        if (this.constantValue < 0) {
            this.constantValue = (this.constantValue * -1082130432);
            this.variables.invert();
        }
        return;
    }

    public android.support.constraint.solver.SolverVariable getKey()
    {
        return this.variable;
    }

    public android.support.constraint.solver.SolverVariable getPivotCandidate(android.support.constraint.solver.LinearSystem p3, boolean[] p4)
    {
        return this.variables.getPivotCandidate(p4, 0);
    }

    boolean hasKeyVariable()
    {
        if ((this.variable == null) || ((this.variable.mType != android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED) && (this.constantValue < 0))) {
            int v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    boolean hasVariable(android.support.constraint.solver.SolverVariable p2)
    {
        return this.variables.containsKey(p2);
    }

    public void initFromRow(android.support.constraint.solver.LinearSystem$Row p7)
    {
        if ((p7 instanceof android.support.constraint.solver.ArrayRow)) {
            this.variable = 0;
            this.variables.clear();
            int v1_0 = 0;
            while (v1_0 < ((android.support.constraint.solver.ArrayRow) p7).variables.currentSize) {
                this.variables.add(((android.support.constraint.solver.ArrayRow) p7).variables.getVariable(v1_0), ((android.support.constraint.solver.ArrayRow) p7).variables.getVariableValue(v1_0), 1);
                v1_0++;
            }
        }
        return;
    }

    public boolean isEmpty()
    {
        if ((this.variable != null) || ((this.constantValue != 0) || (this.variables.currentSize != 0))) {
            int v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    android.support.constraint.solver.SolverVariable pickPivot(android.support.constraint.solver.SolverVariable p3)
    {
        return this.variables.getPivotCandidate(0, p3);
    }

    void pivot(android.support.constraint.solver.SolverVariable p4)
    {
        if (this.variable != null) {
            this.variables.put(this.variable, -1082130432);
            this.variable = 0;
        }
        float v0_2 = (this.variables.remove(p4, 1) * -1082130432);
        this.variable = p4;
        if (v0_2 != 1065353216) {
            this.constantValue = (this.constantValue / v0_2);
            this.variables.divideByAmount(v0_2);
            return;
        } else {
            return;
        }
    }

    public void reset()
    {
        this.variable = 0;
        this.variables.clear();
        this.constantValue = 0;
        this.isSimpleDefinition = 0;
        return;
    }

    int sizeInBytes()
    {
        int v0_0 = 0;
        if (this.variable != null) {
            v0_0 = (0 + 4);
        }
        return (((v0_0 + 4) + 4) + this.variables.sizeInBytes());
    }

    String toReadableString()
    {
        String v0_2;
        if (this.variable != null) {
            int v1_7 = new StringBuilder();
            v1_7.append("");
            v1_7.append(this.variable);
            v0_2 = v1_7.toString();
        } else {
            int v1_3 = new StringBuilder();
            v1_3.append("");
            v1_3.append("0");
            v0_2 = v1_3.toString();
        }
        int v1_5 = new StringBuilder();
        v1_5.append(v0_2);
        v1_5.append(" = ");
        String v0_1 = v1_5.toString();
        int v1_2 = 0;
        if (this.constantValue != 0) {
            int v2_5 = new StringBuilder();
            v2_5.append(v0_1);
            v2_5.append(this.constantValue);
            v0_1 = v2_5.toString();
            v1_2 = 1;
        }
        int v2_7 = this.variables.currentSize;
        int v4_0 = 0;
        while (v4_0 < v2_7) {
            android.support.constraint.solver.SolverVariable v5_1 = this.variables.getVariable(v4_0);
            if (v5_1 != null) {
                float v6_1 = this.variables.getVariableValue(v4_0);
                if (v6_1 != 0) {
                    String v7_1 = v5_1.toString();
                    if (v1_2 != 0) {
                        if (v6_1 <= 0) {
                            String v9_2 = new StringBuilder();
                            v9_2.append(v0_1);
                            v9_2.append(" - ");
                            v0_1 = v9_2.toString();
                            v6_1 *= -1082130432;
                        } else {
                            StringBuilder v8_4 = new StringBuilder();
                            v8_4.append(v0_1);
                            v8_4.append(" + ");
                            v0_1 = v8_4.toString();
                        }
                    } else {
                        if (v6_1 < 0) {
                            String v9_6 = new StringBuilder();
                            v9_6.append(v0_1);
                            v9_6.append("- ");
                            v0_1 = v9_6.toString();
                            v6_1 *= -1082130432;
                        }
                    }
                    if (v6_1 != 1065353216) {
                        StringBuilder v8_8 = new StringBuilder();
                        v8_8.append(v0_1);
                        v8_8.append(v6_1);
                        v8_8.append(" ");
                        v8_8.append(v7_1);
                        v0_1 = v8_8.toString();
                    } else {
                        StringBuilder v8_1 = new StringBuilder();
                        v8_1.append(v0_1);
                        v8_1.append(v7_1);
                        v0_1 = v8_1.toString();
                    }
                    v1_2 = 1;
                }
            }
            v4_0++;
        }
        if (v1_2 == 0) {
            StringBuilder v3_2 = new StringBuilder();
            v3_2.append(v0_1);
            v3_2.append("0.0");
            v0_1 = v3_2.toString();
        }
        return v0_1;
    }

    public String toString()
    {
        return this.toReadableString();
    }
}
