package android.support.constraint.solver;
 class Pools$SimplePool implements android.support.constraint.solver.Pools$Pool {
    private final Object[] mPool;
    private int mPoolSize;

    Pools$SimplePool(int p3)
    {
        if (p3 > 0) {
            Object[] v0_0 = new Object[p3];
            this.mPool = v0_0;
            return;
        } else {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
    }

    private boolean isInPool(Object p4)
    {
        int v1 = 0;
        while (v1 < this.mPoolSize) {
            if (this.mPool[v1] != p4) {
                v1++;
            } else {
                return 1;
            }
        }
        return 0;
    }

    public Object acquire()
    {
        if (this.mPoolSize <= 0) {
            return 0;
        } else {
            int v0_2 = (this.mPoolSize - 1);
            Object v2_1 = this.mPool[v0_2];
            this.mPool[v0_2] = 0;
            this.mPoolSize = (this.mPoolSize - 1);
            return v2_1;
        }
    }

    public boolean release(Object p3)
    {
        if (this.mPoolSize >= this.mPool.length) {
            return 0;
        } else {
            this.mPool[this.mPoolSize] = p3;
            this.mPoolSize = (this.mPoolSize + 1);
            return 1;
        }
    }

    public void releaseAll(Object[] p5, int p6)
    {
        if (p6 > p5.length) {
            p6 = p5.length;
        }
        int v0_1 = 0;
        while (v0_1 < p6) {
            if (this.mPoolSize < this.mPool.length) {
                this.mPool[this.mPoolSize] = p5[v0_1];
                this.mPoolSize = (this.mPoolSize + 1);
            }
            v0_1++;
        }
        return;
    }
}
