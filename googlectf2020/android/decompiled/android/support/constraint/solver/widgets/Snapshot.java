package android.support.constraint.solver.widgets;
public class Snapshot {
    private java.util.ArrayList mConnections;
    private int mHeight;
    private int mWidth;
    private int mX;
    private int mY;

    public Snapshot(android.support.constraint.solver.widgets.ConstraintWidget p7)
    {
        this.mConnections = new java.util.ArrayList();
        this.mX = p7.getX();
        this.mY = p7.getY();
        this.mWidth = p7.getWidth();
        this.mHeight = p7.getHeight();
        java.util.ArrayList v0_3 = p7.getAnchors();
        int v1 = 0;
        int v2 = v0_3.size();
        while (v1 < v2) {
            this.mConnections.add(new android.support.constraint.solver.widgets.Snapshot$Connection(((android.support.constraint.solver.widgets.ConstraintAnchor) v0_3.get(v1))));
            v1++;
        }
        return;
    }

    public void applyTo(android.support.constraint.solver.widgets.ConstraintWidget p4)
    {
        p4.setX(this.mX);
        p4.setY(this.mY);
        p4.setWidth(this.mWidth);
        p4.setHeight(this.mHeight);
        int v0_1 = 0;
        int v1_0 = this.mConnections.size();
        while (v0_1 < v1_0) {
            ((android.support.constraint.solver.widgets.Snapshot$Connection) this.mConnections.get(v0_1)).applyTo(p4);
            v0_1++;
        }
        return;
    }

    public void updateFrom(android.support.constraint.solver.widgets.ConstraintWidget p4)
    {
        this.mX = p4.getX();
        this.mY = p4.getY();
        this.mWidth = p4.getWidth();
        this.mHeight = p4.getHeight();
        int v0_3 = this.mConnections.size();
        int v1 = 0;
        while (v1 < v0_3) {
            ((android.support.constraint.solver.widgets.Snapshot$Connection) this.mConnections.get(v1)).updateFrom(p4);
            v1++;
        }
        return;
    }
}
