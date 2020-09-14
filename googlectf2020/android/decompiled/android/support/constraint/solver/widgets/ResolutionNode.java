package android.support.constraint.solver.widgets;
public class ResolutionNode {
    public static final int REMOVED = 2;
    public static final int RESOLVED = 1;
    public static final int UNRESOLVED;
    java.util.HashSet dependents;
    int state;

    public ResolutionNode()
    {
        this.dependents = new java.util.HashSet(2);
        this.state = 0;
        return;
    }

    public void addDependent(android.support.constraint.solver.widgets.ResolutionNode p2)
    {
        this.dependents.add(p2);
        return;
    }

    public void didResolve()
    {
        this.state = 1;
        java.util.Iterator v0_2 = this.dependents.iterator();
        while (v0_2.hasNext()) {
            ((android.support.constraint.solver.widgets.ResolutionNode) v0_2.next()).resolve();
        }
        return;
    }

    public void invalidate()
    {
        this.state = 0;
        java.util.Iterator v0_2 = this.dependents.iterator();
        while (v0_2.hasNext()) {
            ((android.support.constraint.solver.widgets.ResolutionNode) v0_2.next()).invalidate();
        }
        return;
    }

    public void invalidateAnchors()
    {
        if ((this instanceof android.support.constraint.solver.widgets.ResolutionAnchor)) {
            this.state = 0;
        }
        java.util.Iterator v0_3 = this.dependents.iterator();
        while (v0_3.hasNext()) {
            ((android.support.constraint.solver.widgets.ResolutionNode) v0_3.next()).invalidateAnchors();
        }
        return;
    }

    public boolean isResolved()
    {
        int v1 = 1;
        if (this.state != 1) {
            v1 = 0;
        }
        return v1;
    }

    public void remove(android.support.constraint.solver.widgets.ResolutionDimension p1)
    {
        return;
    }

    public void reset()
    {
        this.state = 0;
        this.dependents.clear();
        return;
    }

    public void resolve()
    {
        return;
    }
}
