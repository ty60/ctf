package android.support.constraint.solver.widgets;
public final enum class ConstraintWidget$ContentAlignment extends java.lang.Enum {
    private static final synthetic android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment[] $VALUES;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment BEGIN;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment BOTTOM;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment END;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment LEFT;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment MIDDLE;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment RIGHT;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment TOP;
    public static final enum android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment VERTICAL_MIDDLE;

    static ConstraintWidget$ContentAlignment()
    {
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.BEGIN = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment("BEGIN", 0);
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.MIDDLE = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment("MIDDLE", 1);
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.END = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment("END", 2);
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.TOP = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment("TOP", 3);
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.VERTICAL_MIDDLE = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment("VERTICAL_MIDDLE", 4);
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.BOTTOM = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment("BOTTOM", 5);
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.LEFT = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment("LEFT", 6);
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.RIGHT = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment("RIGHT", 7);
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment[] v0_15 = new android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment[8];
        v0_15[0] = android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.BEGIN;
        v0_15[1] = android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.MIDDLE;
        v0_15[2] = android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.END;
        v0_15[3] = android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.TOP;
        v0_15[4] = android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.VERTICAL_MIDDLE;
        v0_15[5] = android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.BOTTOM;
        v0_15[6] = android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.LEFT;
        v0_15[7] = android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.RIGHT;
        android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.$VALUES = v0_15;
        return;
    }

    private ConstraintWidget$ContentAlignment(String p1, int p2)
    {
        super(p1, p2);
        return;
    }

    public static android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment valueOf(String p1)
    {
        return ((android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment) Enum.valueOf(android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment, p1));
    }

    public static android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment[] values()
    {
        return ((android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment[]) android.support.constraint.solver.widgets.ConstraintWidget$ContentAlignment.$VALUES.clone());
    }
}
