package android.support.constraint.solver;
public class GoalRow extends android.support.constraint.solver.ArrayRow {

    public GoalRow(android.support.constraint.solver.Cache p1)
    {
        super(p1);
        return;
    }

    public void addError(android.support.constraint.solver.SolverVariable p2)
    {
        super.addError(p2);
        p2.usageInRowCount = (p2.usageInRowCount - 1);
        return;
    }
}
