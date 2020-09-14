package android.support.constraint.solver;
public class SolverVariable {
    private static final boolean INTERNAL_DEBUG = False;
    static final int MAX_STRENGTH = 7;
    public static final int STRENGTH_BARRIER = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 6;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE;
    private static int uniqueConstantId;
    private static int uniqueErrorId;
    private static int uniqueId;
    private static int uniqueSlackId;
    private static int uniqueUnrestrictedId;
    public float computedValue;
    int definitionId;
    public int id;
    android.support.constraint.solver.ArrayRow[] mClientEquations;
    int mClientEquationsCount;
    private String mName;
    android.support.constraint.solver.SolverVariable$Type mType;
    public int strength;
    float[] strengthVector;
    public int usageInRowCount;

    static SolverVariable()
    {
        android.support.constraint.solver.SolverVariable.uniqueSlackId = 1;
        android.support.constraint.solver.SolverVariable.uniqueErrorId = 1;
        android.support.constraint.solver.SolverVariable.uniqueUnrestrictedId = 1;
        android.support.constraint.solver.SolverVariable.uniqueConstantId = 1;
        android.support.constraint.solver.SolverVariable.uniqueId = 1;
        return;
    }

    public SolverVariable(android.support.constraint.solver.SolverVariable$Type p3, String p4)
    {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        android.support.constraint.solver.ArrayRow[] v1_2 = new float[7];
        this.strengthVector = v1_2;
        android.support.constraint.solver.ArrayRow[] v1_0 = new android.support.constraint.solver.ArrayRow[8];
        this.mClientEquations = v1_0;
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mType = p3;
        return;
    }

    public SolverVariable(String p3, android.support.constraint.solver.SolverVariable$Type p4)
    {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        android.support.constraint.solver.ArrayRow[] v1_2 = new float[7];
        this.strengthVector = v1_2;
        android.support.constraint.solver.ArrayRow[] v1_0 = new android.support.constraint.solver.ArrayRow[8];
        this.mClientEquations = v1_0;
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mName = p3;
        this.mType = p4;
        return;
    }

    private static String getUniqueName(android.support.constraint.solver.SolverVariable$Type p2, String p3)
    {
        if (p3 == null) {
            switch (android.support.constraint.solver.SolverVariable$1.$SwitchMap$android$support$constraint$solver$SolverVariable$Type[p2.ordinal()]) {
                case 1:
                    String v0_13 = new StringBuilder();
                    v0_13.append("U");
                    int v1_14 = (android.support.constraint.solver.SolverVariable.uniqueUnrestrictedId + 1);
                    android.support.constraint.solver.SolverVariable.uniqueUnrestrictedId = v1_14;
                    v0_13.append(v1_14);
                    return v0_13.toString();
                case 2:
                    String v0_10 = new StringBuilder();
                    v0_10.append("C");
                    int v1_11 = (android.support.constraint.solver.SolverVariable.uniqueConstantId + 1);
                    android.support.constraint.solver.SolverVariable.uniqueConstantId = v1_11;
                    v0_10.append(v1_11);
                    return v0_10.toString();
                case 3:
                    String v0_6 = new StringBuilder();
                    v0_6.append("S");
                    int v1_8 = (android.support.constraint.solver.SolverVariable.uniqueSlackId + 1);
                    android.support.constraint.solver.SolverVariable.uniqueSlackId = v1_8;
                    v0_6.append(v1_8);
                    return v0_6.toString();
                case 4:
                    String v0_3 = new StringBuilder();
                    v0_3.append("e");
                    int v1_4 = (android.support.constraint.solver.SolverVariable.uniqueErrorId + 1);
                    android.support.constraint.solver.SolverVariable.uniqueErrorId = v1_4;
                    v0_3.append(v1_4);
                    return v0_3.toString();
                case 5:
                    String v0_20 = new StringBuilder();
                    v0_20.append("V");
                    int v1_1 = (android.support.constraint.solver.SolverVariable.uniqueId + 1);
                    android.support.constraint.solver.SolverVariable.uniqueId = v1_1;
                    v0_20.append(v1_1);
                    return v0_20.toString();
                default:
                    throw new AssertionError(p2.name());
            }
        } else {
            String v0_19 = new StringBuilder();
            v0_19.append(p3);
            v0_19.append(android.support.constraint.solver.SolverVariable.uniqueErrorId);
            return v0_19.toString();
        }
    }

    static void increaseErrorId()
    {
        android.support.constraint.solver.SolverVariable.uniqueErrorId = (android.support.constraint.solver.SolverVariable.uniqueErrorId + 1);
        return;
    }

    public final void addToRow(android.support.constraint.solver.ArrayRow p3)
    {
        int v0_0 = 0;
        while (v0_0 < this.mClientEquationsCount) {
            if (this.mClientEquations[v0_0] != p3) {
                v0_0++;
            } else {
                return;
            }
        }
        if (this.mClientEquationsCount >= this.mClientEquations.length) {
            this.mClientEquations = ((android.support.constraint.solver.ArrayRow[]) java.util.Arrays.copyOf(this.mClientEquations, (this.mClientEquations.length * 2)));
        }
        this.mClientEquations[this.mClientEquationsCount] = p3;
        this.mClientEquationsCount = (this.mClientEquationsCount + 1);
        return;
    }

    void clearStrengths()
    {
        int v0 = 0;
        while (v0 < 7) {
            this.strengthVector[v0] = 0;
            v0++;
        }
        return;
    }

    public String getName()
    {
        return this.mName;
    }

    public final void removeFromRow(android.support.constraint.solver.ArrayRow p8)
    {
        int v0 = this.mClientEquationsCount;
        int v1_0 = 0;
        int v2 = 0;
        while (v2 < v0) {
            if (this.mClientEquations[v2] != p8) {
                v2++;
            } else {
                while (v1_0 < ((v0 - v2) - 1)) {
                    this.mClientEquations[(v2 + v1_0)] = this.mClientEquations[((v2 + v1_0) + 1)];
                    v1_0++;
                }
                this.mClientEquationsCount = (this.mClientEquationsCount - 1);
                return;
            }
        }
        return;
    }

    public void reset()
    {
        this.mName = 0;
        this.mType = android.support.constraint.solver.SolverVariable$Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.definitionId = -1;
        this.computedValue = 0;
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        return;
    }

    public void setName(String p1)
    {
        this.mName = p1;
        return;
    }

    public void setType(android.support.constraint.solver.SolverVariable$Type p1, String p2)
    {
        this.mType = p1;
        return;
    }

    String strengthsToString()
    {
        String v0_1 = new StringBuilder();
        v0_1.append(this);
        v0_1.append("[");
        String v0_2 = v0_1.toString();
        int v1_1 = 0;
        int v2 = 1;
        int v3_4 = 0;
        while (v3_4 < this.strengthVector.length) {
            StringBuilder v4_5 = new StringBuilder();
            v4_5.append(v0_2);
            v4_5.append(this.strengthVector[v3_4]);
            String v0_3 = v4_5.toString();
            if (this.strengthVector[v3_4] <= 0) {
                if (this.strengthVector[v3_4] < 0) {
                    v1_1 = 1;
                }
            } else {
                v1_1 = 0;
            }
            if (this.strengthVector[v3_4] != 0) {
                v2 = 0;
            }
            if (v3_4 >= (this.strengthVector.length - 1)) {
                StringBuilder v4_19 = new StringBuilder();
                v4_19.append(v0_3);
                v4_19.append("] ");
                v0_2 = v4_19.toString();
            } else {
                StringBuilder v4_21 = new StringBuilder();
                v4_21.append(v0_3);
                v4_21.append(", ");
                v0_2 = v4_21.toString();
            }
            v3_4++;
        }
        if (v1_1 != 0) {
            int v3_1 = new StringBuilder();
            v3_1.append(v0_2);
            v3_1.append(" (-)");
            v0_2 = v3_1.toString();
        }
        if (v2 != 0) {
            int v3_3 = new StringBuilder();
            v3_3.append(v0_2);
            v3_3.append(" (*)");
            v0_2 = v3_3.toString();
        }
        return v0_2;
    }

    public String toString()
    {
        StringBuilder v1_1 = new StringBuilder();
        v1_1.append("");
        v1_1.append(this.mName);
        return v1_1.toString();
    }

    public final void updateReferencesWithNewDefinition(android.support.constraint.solver.ArrayRow p6)
    {
        int v0 = this.mClientEquationsCount;
        int v2 = 0;
        while (v2 < v0) {
            this.mClientEquations[v2].variables.updateFromRow(this.mClientEquations[v2], p6, 0);
            v2++;
        }
        this.mClientEquationsCount = 0;
        return;
    }
}
