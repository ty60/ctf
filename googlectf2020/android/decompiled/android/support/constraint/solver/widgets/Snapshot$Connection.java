package android.support.constraint.solver.widgets;
 class Snapshot$Connection {
    private android.support.constraint.solver.widgets.ConstraintAnchor mAnchor;
    private int mCreator;
    private int mMargin;
    private android.support.constraint.solver.widgets.ConstraintAnchor$Strength mStrengh;
    private android.support.constraint.solver.widgets.ConstraintAnchor mTarget;

    public Snapshot$Connection(android.support.constraint.solver.widgets.ConstraintAnchor p2)
    {
        this.mAnchor = p2;
        this.mTarget = p2.getTarget();
        this.mMargin = p2.getMargin();
        this.mStrengh = p2.getStrength();
        this.mCreator = p2.getConnectionCreator();
        return;
    }

    public void applyTo(android.support.constraint.solver.widgets.ConstraintWidget p6)
    {
        p6.getAnchor(this.mAnchor.getType()).connect(this.mTarget, this.mMargin, this.mStrengh, this.mCreator);
        return;
    }

    public void updateFrom(android.support.constraint.solver.widgets.ConstraintWidget p3)
    {
        this.mAnchor = p3.getAnchor(this.mAnchor.getType());
        if (this.mAnchor == null) {
            this.mTarget = 0;
            this.mMargin = 0;
            this.mStrengh = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG;
            this.mCreator = 0;
        } else {
            this.mTarget = this.mAnchor.getTarget();
            this.mMargin = this.mAnchor.getMargin();
            this.mStrengh = this.mAnchor.getStrength();
            this.mCreator = this.mAnchor.getConnectionCreator();
        }
        return;
    }
}
