package android.support.constraint.solver;
interface Pools$Pool {

    public abstract Object acquire();

    public abstract boolean release();

    public abstract void releaseAll();
}
