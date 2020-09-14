package android.support.constraint.solver.widgets;
public final enum class ConstraintWidget$DimensionBehaviour extends java.lang.Enum {
    private static final synthetic android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] $VALUES;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour FIXED;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour MATCH_CONSTRAINT;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour MATCH_PARENT;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour WRAP_CONTENT;

    static ConstraintWidget$DimensionBehaviour()
    {
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED = new android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour("FIXED", 0);
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT = new android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour("WRAP_CONTENT", 1);
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT = new android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour("MATCH_CONSTRAINT", 2);
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_PARENT = new android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour("MATCH_PARENT", 3);
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v0_6 = new android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[4];
        v0_6[0] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        v0_6[1] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        v0_6[2] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        v0_6[3] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.$VALUES = v0_6;
        return;
    }

    private ConstraintWidget$DimensionBehaviour(String p1, int p2)
    {
        super(p1, p2);
        return;
    }

    public static android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour valueOf(String p1)
    {
        return ((android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour) Enum.valueOf(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour, p1));
    }

    public static android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] values()
    {
        return ((android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[]) android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.$VALUES.clone());
    }
}
