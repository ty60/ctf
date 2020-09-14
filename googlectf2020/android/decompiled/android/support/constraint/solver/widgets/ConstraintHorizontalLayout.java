package android.support.constraint.solver.widgets;
public class ConstraintHorizontalLayout extends android.support.constraint.solver.widgets.ConstraintWidgetContainer {
    private android.support.constraint.solver.widgets.ConstraintHorizontalLayout$ContentAlignment mAlignment;

    public ConstraintHorizontalLayout()
    {
        this.mAlignment = android.support.constraint.solver.widgets.ConstraintHorizontalLayout$ContentAlignment.MIDDLE;
        return;
    }

    public ConstraintHorizontalLayout(int p2, int p3)
    {
        super(p2, p3);
        super.mAlignment = android.support.constraint.solver.widgets.ConstraintHorizontalLayout$ContentAlignment.MIDDLE;
        return;
    }

    public ConstraintHorizontalLayout(int p2, int p3, int p4, int p5)
    {
        super(p2, p3, p4, p5);
        super.mAlignment = android.support.constraint.solver.widgets.ConstraintHorizontalLayout$ContentAlignment.MIDDLE;
        return;
    }

    public void addToSolver(android.support.constraint.solver.LinearSystem p12)
    {
        if (this.mChildren.size() != 0) {
            android.support.constraint.solver.widgets.ConstraintWidget v0_2 = this;
            android.support.constraint.solver.widgets.ConstraintAnchor$Strength v1_1 = 0;
            android.support.constraint.solver.widgets.ConstraintHorizontalLayout$ContentAlignment v2_2 = this.mChildren.size();
            while (v1_1 < v2_2) {
                android.support.constraint.solver.widgets.ConstraintWidget v9_1 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1_1));
                if (v0_2 == this) {
                    android.support.constraint.solver.widgets.ConstraintWidget v3_4 = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG;
                    if (this.mAlignment == android.support.constraint.solver.widgets.ConstraintHorizontalLayout$ContentAlignment.END) {
                        v3_4 = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.WEAK;
                    }
                    v9_1.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, v0_2, android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, 0, v3_4);
                } else {
                    v9_1.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, v0_2, android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT);
                    v0_2.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, v9_1, android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT);
                }
                v9_1.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP, this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP);
                v9_1.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM, this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM);
                v0_2 = v9_1;
                v1_1++;
            }
            if (v0_2 != this) {
                android.support.constraint.solver.widgets.ConstraintAnchor$Strength v1_0 = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG;
                if (this.mAlignment == android.support.constraint.solver.widgets.ConstraintHorizontalLayout$ContentAlignment.BEGIN) {
                    v1_0 = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.WEAK;
                }
                v0_2.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, 0, v1_0);
            }
        }
        super.addToSolver(p12);
        return;
    }
}
