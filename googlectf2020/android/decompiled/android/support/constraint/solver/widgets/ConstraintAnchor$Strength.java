package android.support.constraint.solver.widgets;
public final enum class ConstraintAnchor$Strength extends java.lang.Enum {
    private static final synthetic android.support.constraint.solver.widgets.ConstraintAnchor$Strength[] $VALUES;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Strength NONE;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Strength STRONG;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Strength WEAK;

    static ConstraintAnchor$Strength()
    {
        android.support.constraint.solver.widgets.ConstraintAnchor$Strength.NONE = new android.support.constraint.solver.widgets.ConstraintAnchor$Strength("NONE", 0);
        android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG = new android.support.constraint.solver.widgets.ConstraintAnchor$Strength("STRONG", 1);
        android.support.constraint.solver.widgets.ConstraintAnchor$Strength.WEAK = new android.support.constraint.solver.widgets.ConstraintAnchor$Strength("WEAK", 2);
        android.support.constraint.solver.widgets.ConstraintAnchor$Strength[] v0_4 = new android.support.constraint.solver.widgets.ConstraintAnchor$Strength[3];
        v0_4[0] = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.NONE;
        v0_4[1] = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG;
        v0_4[2] = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.WEAK;
        android.support.constraint.solver.widgets.ConstraintAnchor$Strength.$VALUES = v0_4;
        return;
    }

    private ConstraintAnchor$Strength(String p1, int p2)
    {
        super(p1, p2);
        return;
    }

    public static android.support.constraint.solver.widgets.ConstraintAnchor$Strength valueOf(String p1)
    {
        return ((android.support.constraint.solver.widgets.ConstraintAnchor$Strength) Enum.valueOf(android.support.constraint.solver.widgets.ConstraintAnchor$Strength, p1));
    }

    public static android.support.constraint.solver.widgets.ConstraintAnchor$Strength[] values()
    {
        return ((android.support.constraint.solver.widgets.ConstraintAnchor$Strength[]) android.support.constraint.solver.widgets.ConstraintAnchor$Strength.$VALUES.clone());
    }
}
