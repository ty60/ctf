package android.support.constraint.solver.widgets;
public final enum class ConstraintAnchor$Type extends java.lang.Enum {
    private static final synthetic android.support.constraint.solver.widgets.ConstraintAnchor$Type[] $VALUES;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type BASELINE;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type BOTTOM;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type CENTER;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type CENTER_X;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type CENTER_Y;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type LEFT;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type NONE;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type RIGHT;
    public static final enum android.support.constraint.solver.widgets.ConstraintAnchor$Type TOP;

    static ConstraintAnchor$Type()
    {
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.NONE = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("NONE", 0);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("LEFT", 1);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("TOP", 2);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("RIGHT", 3);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("BOTTOM", 4);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("BASELINE", 5);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("CENTER", 6);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("CENTER_X", 7);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y = new android.support.constraint.solver.widgets.ConstraintAnchor$Type("CENTER_Y", 8);
        android.support.constraint.solver.widgets.ConstraintAnchor$Type[] v0_17 = new android.support.constraint.solver.widgets.ConstraintAnchor$Type[9];
        v0_17[0] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.NONE;
        v0_17[1] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT;
        v0_17[2] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP;
        v0_17[3] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT;
        v0_17[4] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM;
        v0_17[5] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE;
        v0_17[6] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER;
        v0_17[7] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X;
        v0_17[8] = android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y;
        android.support.constraint.solver.widgets.ConstraintAnchor$Type.$VALUES = v0_17;
        return;
    }

    private ConstraintAnchor$Type(String p1, int p2)
    {
        super(p1, p2);
        return;
    }

    public static android.support.constraint.solver.widgets.ConstraintAnchor$Type valueOf(String p1)
    {
        return ((android.support.constraint.solver.widgets.ConstraintAnchor$Type) Enum.valueOf(android.support.constraint.solver.widgets.ConstraintAnchor$Type, p1));
    }

    public static android.support.constraint.solver.widgets.ConstraintAnchor$Type[] values()
    {
        return ((android.support.constraint.solver.widgets.ConstraintAnchor$Type[]) android.support.constraint.solver.widgets.ConstraintAnchor$Type.$VALUES.clone());
    }
}
