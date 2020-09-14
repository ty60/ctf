package android.support.constraint.solver.widgets;
public class Helper extends android.support.constraint.solver.widgets.ConstraintWidget {
    protected android.support.constraint.solver.widgets.ConstraintWidget[] mWidgets;
    protected int mWidgetsCount;

    public Helper()
    {
        int v0_1 = new android.support.constraint.solver.widgets.ConstraintWidget[4];
        this.mWidgets = v0_1;
        this.mWidgetsCount = 0;
        return;
    }

    public void add(android.support.constraint.solver.widgets.ConstraintWidget p3)
    {
        if ((this.mWidgetsCount + 1) > this.mWidgets.length) {
            this.mWidgets = ((android.support.constraint.solver.widgets.ConstraintWidget[]) java.util.Arrays.copyOf(this.mWidgets, (this.mWidgets.length * 2)));
        }
        this.mWidgets[this.mWidgetsCount] = p3;
        this.mWidgetsCount = (this.mWidgetsCount + 1);
        return;
    }

    public void removeAllIds()
    {
        this.mWidgetsCount = 0;
        return;
    }
}
