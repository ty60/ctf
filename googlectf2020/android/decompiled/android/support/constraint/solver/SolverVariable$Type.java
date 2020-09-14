package android.support.constraint.solver;
public final enum class SolverVariable$Type extends java.lang.Enum {
    private static final synthetic android.support.constraint.solver.SolverVariable$Type[] $VALUES;
    public static final enum android.support.constraint.solver.SolverVariable$Type CONSTANT;
    public static final enum android.support.constraint.solver.SolverVariable$Type ERROR;
    public static final enum android.support.constraint.solver.SolverVariable$Type SLACK;
    public static final enum android.support.constraint.solver.SolverVariable$Type UNKNOWN;
    public static final enum android.support.constraint.solver.SolverVariable$Type UNRESTRICTED;

    static SolverVariable$Type()
    {
        android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED = new android.support.constraint.solver.SolverVariable$Type("UNRESTRICTED", 0);
        android.support.constraint.solver.SolverVariable$Type.CONSTANT = new android.support.constraint.solver.SolverVariable$Type("CONSTANT", 1);
        android.support.constraint.solver.SolverVariable$Type.SLACK = new android.support.constraint.solver.SolverVariable$Type("SLACK", 2);
        android.support.constraint.solver.SolverVariable$Type.ERROR = new android.support.constraint.solver.SolverVariable$Type("ERROR", 3);
        android.support.constraint.solver.SolverVariable$Type.UNKNOWN = new android.support.constraint.solver.SolverVariable$Type("UNKNOWN", 4);
        android.support.constraint.solver.SolverVariable$Type[] v0_8 = new android.support.constraint.solver.SolverVariable$Type[5];
        v0_8[0] = android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED;
        v0_8[1] = android.support.constraint.solver.SolverVariable$Type.CONSTANT;
        v0_8[2] = android.support.constraint.solver.SolverVariable$Type.SLACK;
        v0_8[3] = android.support.constraint.solver.SolverVariable$Type.ERROR;
        v0_8[4] = android.support.constraint.solver.SolverVariable$Type.UNKNOWN;
        android.support.constraint.solver.SolverVariable$Type.$VALUES = v0_8;
        return;
    }

    private SolverVariable$Type(String p1, int p2)
    {
        super(p1, p2);
        return;
    }

    public static android.support.constraint.solver.SolverVariable$Type valueOf(String p1)
    {
        return ((android.support.constraint.solver.SolverVariable$Type) Enum.valueOf(android.support.constraint.solver.SolverVariable$Type, p1));
    }

    public static android.support.constraint.solver.SolverVariable$Type[] values()
    {
        return ((android.support.constraint.solver.SolverVariable$Type[]) android.support.constraint.solver.SolverVariable$Type.$VALUES.clone());
    }
}
