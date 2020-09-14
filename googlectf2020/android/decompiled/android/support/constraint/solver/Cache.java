package android.support.constraint.solver;
public class Cache {
    android.support.constraint.solver.Pools$Pool arrayRowPool;
    android.support.constraint.solver.SolverVariable[] mIndexedVariables;
    android.support.constraint.solver.Pools$Pool solverVariablePool;

    public Cache()
    {
        this.arrayRowPool = new android.support.constraint.solver.Pools$SimplePool(256);
        this.solverVariablePool = new android.support.constraint.solver.Pools$SimplePool(256);
        android.support.constraint.solver.SolverVariable[] v0_5 = new android.support.constraint.solver.SolverVariable[32];
        this.mIndexedVariables = v0_5;
        return;
    }
}
