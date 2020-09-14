package android.support.constraint.solver.widgets;
public final enum class ConstraintAnchor$ConnectionType extends java.lang.Enum {
    private static final synthetic android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType[] $VALUES;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType RELAXED;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType STRICT;

    static ConstraintAnchor$ConnectionType()
    {
        android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType.RELAXED = new android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType("RELAXED", 0);
        android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType.STRICT = new android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType("STRICT", 1);
        android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType[] v0_2 = new android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType[2];
        v0_2[0] = android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType.RELAXED;
        v0_2[1] = android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType.STRICT;
        android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType.$VALUES = v0_2;
        return;
    }

    private ConstraintAnchor$ConnectionType(String p1, int p2)
    {
        super(p1, p2);
        return;
    }

    public static android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType valueOf(String p1)
    {
        return ((android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType) Enum.valueOf(android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType, p1));
    }

    public static android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType[] values()
    {
        return ((android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType[]) android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType.$VALUES.clone());
    }
}
