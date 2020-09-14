package android.support.constraint.solver.widgets;
public class WidgetContainer extends android.support.constraint.solver.widgets.ConstraintWidget {
    protected java.util.ArrayList mChildren;

    public WidgetContainer()
    {
        this.mChildren = new java.util.ArrayList();
        return;
    }

    public WidgetContainer(int p2, int p3)
    {
        super(p2, p3);
        super.mChildren = new java.util.ArrayList();
        return;
    }

    public WidgetContainer(int p2, int p3, int p4, int p5)
    {
        super(p2, p3, p4, p5);
        super.mChildren = new java.util.ArrayList();
        return;
    }

    public static android.support.constraint.solver.widgets.Rectangle getBounds(java.util.ArrayList p9)
    {
        android.support.constraint.solver.widgets.Rectangle v0_1 = new android.support.constraint.solver.widgets.Rectangle();
        if (p9.size() != 0) {
            int v1_0 = 2147483647;
            int v2 = 0;
            int v3 = 2147483647;
            int v4 = 0;
            int v5_1 = 0;
            int v6_0 = p9.size();
            while (v5_1 < v6_0) {
                android.support.constraint.solver.widgets.ConstraintWidget v7_1 = ((android.support.constraint.solver.widgets.ConstraintWidget) p9.get(v5_1));
                if (v7_1.getX() < v1_0) {
                    v1_0 = v7_1.getX();
                }
                if (v7_1.getY() < v3) {
                    v3 = v7_1.getY();
                }
                if (v7_1.getRight() > v2) {
                    v2 = v7_1.getRight();
                }
                if (v7_1.getBottom() > v4) {
                    v4 = v7_1.getBottom();
                }
                v5_1++;
            }
            v0_1.setBounds(v1_0, v3, (v2 - v1_0), (v4 - v3));
            return v0_1;
        } else {
            return v0_1;
        }
    }

    public void add(android.support.constraint.solver.widgets.ConstraintWidget p2)
    {
        this.mChildren.add(p2);
        if (p2.getParent() != null) {
            ((android.support.constraint.solver.widgets.WidgetContainer) p2.getParent()).remove(p2);
        }
        p2.setParent(this);
        return;
    }

    public varargs void add(android.support.constraint.solver.widgets.ConstraintWidget[] p4)
    {
        int v0 = p4.length;
        int v1 = 0;
        while (v1 < v0) {
            this.add(p4[v1]);
            v1++;
        }
        return;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget findWidget(float p10, float p11)
    {
        android.support.constraint.solver.widgets.ConstraintWidget v0 = 0;
        int v1_0 = this.getDrawX();
        int v2_1 = this.getDrawY();
        int v3_3 = (this.getWidth() + v1_0);
        float v4_9 = this.getHeight();
        if ((p10 >= ((float) v1_0)) && ((p10 <= ((float) v3_3)) && ((p11 >= ((float) v2_1)) && (p11 <= ((float) (v4_9 + v2_1)))))) {
            v0 = this;
        }
        int v5_8 = 0;
        int v6_1 = this.mChildren.size();
        while (v5_8 < v6_1) {
            android.support.constraint.solver.widgets.ConstraintWidget v7_2 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v5_8));
            if (!(v7_2 instanceof android.support.constraint.solver.widgets.WidgetContainer)) {
                int v1_1 = v7_2.getDrawX();
                int v2_0 = v7_2.getDrawY();
                int v8_2 = (v7_2.getWidth() + v1_1);
                int v3_0 = v7_2.getHeight();
                if ((p10 >= ((float) v1_1)) && ((p10 <= ((float) v8_2)) && ((p11 >= ((float) v2_0)) && (p11 <= ((float) (v3_0 + v2_0)))))) {
                    v0 = v7_2;
                }
                int v3 = v8_2;
            } else {
                int v8_5 = ((android.support.constraint.solver.widgets.WidgetContainer) v7_2).findWidget(p10, p11);
                if (v8_5 != 0) {
                    v0 = v8_5;
                }
            }
            v5_8++;
        }
        return v0;
    }

    public java.util.ArrayList findWidgets(int p11, int p12, int p13, int p14)
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        android.support.constraint.solver.widgets.Rectangle v1_1 = new android.support.constraint.solver.widgets.Rectangle();
        v1_1.setBounds(p11, p12, p13, p14);
        int v2 = 0;
        int v3_1 = this.mChildren.size();
        while (v2 < v3_1) {
            android.support.constraint.solver.widgets.ConstraintWidget v4_2 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v2));
            android.support.constraint.solver.widgets.Rectangle v5_1 = new android.support.constraint.solver.widgets.Rectangle();
            v5_1.setBounds(v4_2.getDrawX(), v4_2.getDrawY(), v4_2.getWidth(), v4_2.getHeight());
            if (v1_1.intersects(v5_1)) {
                v0_1.add(v4_2);
            }
            v2++;
        }
        return v0_1;
    }

    public java.util.ArrayList getChildren()
    {
        return this.mChildren;
    }

    public android.support.constraint.solver.widgets.ConstraintWidgetContainer getRootConstraintContainer()
    {
        android.support.constraint.solver.widgets.ConstraintWidget v1 = this.getParent();
        android.support.constraint.solver.widgets.ConstraintWidgetContainer v2_1 = 0;
        if ((this instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) {
            v2_1 = ((android.support.constraint.solver.widgets.ConstraintWidgetContainer) this);
        }
        while (v1 != null) {
            android.support.constraint.solver.widgets.ConstraintWidget v0_1 = v1;
            v1 = v0_1.getParent();
            if ((v0_1 instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) {
                v2_1 = ((android.support.constraint.solver.widgets.ConstraintWidgetContainer) v0_1);
            }
        }
        return v2_1;
    }

    public void layout()
    {
        this.updateDrawPosition();
        if (this.mChildren != null) {
            int v0_2 = this.mChildren.size();
            int v1 = 0;
            while (v1 < v0_2) {
                android.support.constraint.solver.widgets.ConstraintWidget v2_1 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1));
                if ((v2_1 instanceof android.support.constraint.solver.widgets.WidgetContainer)) {
                    ((android.support.constraint.solver.widgets.WidgetContainer) v2_1).layout();
                }
                v1++;
            }
            return;
        } else {
            return;
        }
    }

    public void remove(android.support.constraint.solver.widgets.ConstraintWidget p2)
    {
        this.mChildren.remove(p2);
        p2.setParent(0);
        return;
    }

    public void removeAllChildren()
    {
        this.mChildren.clear();
        return;
    }

    public void reset()
    {
        this.mChildren.clear();
        super.reset();
        return;
    }

    public void resetSolverVariables(android.support.constraint.solver.Cache p4)
    {
        super.resetSolverVariables(p4);
        int v0_1 = this.mChildren.size();
        int v1 = 0;
        while (v1 < v0_1) {
            ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1)).resetSolverVariables(p4);
            v1++;
        }
        return;
    }

    public void setOffset(int p6, int p7)
    {
        super.setOffset(p6, p7);
        int v0_1 = this.mChildren.size();
        int v1 = 0;
        while (v1 < v0_1) {
            ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1)).setOffset(this.getRootX(), this.getRootY());
            v1++;
        }
        return;
    }

    public void updateDrawPosition()
    {
        super.updateDrawPosition();
        if (this.mChildren != null) {
            int v0_2 = this.mChildren.size();
            int v1 = 0;
            while (v1 < v0_2) {
                android.support.constraint.solver.widgets.ConstraintWidget v2_1 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1));
                v2_1.setOffset(this.getDrawX(), this.getDrawY());
                if (!(v2_1 instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) {
                    v2_1.updateDrawPosition();
                }
                v1++;
            }
            return;
        } else {
            return;
        }
    }
}
