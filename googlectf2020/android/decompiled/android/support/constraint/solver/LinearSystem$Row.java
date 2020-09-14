package android.support.constraint.solver;
interface LinearSystem$Row {

    public abstract void addError();

    public abstract void clear();

    public abstract android.support.constraint.solver.SolverVariable getKey();

    public abstract android.support.constraint.solver.SolverVariable getPivotCandidate();

    public abstract void initFromRow();

    public abstract boolean isEmpty();
}
