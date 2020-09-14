package android.support.constraint.solver.widgets;
public class Barrier extends android.support.constraint.solver.widgets.Helper {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private boolean mAllowsGoneWidget;
    private int mBarrierType;
    private java.util.ArrayList mNodes;

    public Barrier()
    {
        this.mBarrierType = 0;
        this.mNodes = new java.util.ArrayList(4);
        this.mAllowsGoneWidget = 1;
        return;
    }

    public void addToSolver(android.support.constraint.solver.LinearSystem p12)
    {
        this.mListAnchors[0] = this.mLeft;
        this.mListAnchors[2] = this.mTop;
        this.mListAnchors[1] = this.mRight;
        this.mListAnchors[3] = this.mBottom;
        android.support.constraint.solver.widgets.ConstraintAnchor v0_2 = 0;
        while (v0_2 < this.mListAnchors.length) {
            this.mListAnchors[v0_2].mSolverVariable = p12.createObjectVariable(this.mListAnchors[v0_2]);
            v0_2++;
        }
        if ((this.mBarrierType < 0) || (this.mBarrierType >= 4)) {
            return;
        } else {
            android.support.constraint.solver.widgets.ConstraintAnchor v0_6 = this.mListAnchors[this.mBarrierType];
            int v1_8 = 0;
            int v6_1 = 0;
            while (v6_1 < this.mWidgetsCount) {
                int v7_4 = this.mWidgets[v6_1];
                if ((this.mAllowsGoneWidget) || (v7_4.allowedInBarrier())) {
                    if (((this.mBarrierType != 0) && (this.mBarrierType != 1)) || (v7_4.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT)) {
                        if (((this.mBarrierType == 2) || (this.mBarrierType == 3)) && (v7_4.getVerticalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT)) {
                            v1_8 = 1;
                            break;
                        }
                    } else {
                        v1_8 = 1;
                        break;
                    }
                }
                v6_1++;
            }
            if ((this.mBarrierType != 0) && (this.mBarrierType != 1)) {
                if (this.getParent().getVerticalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                    v1_8 = 0;
                }
            } else {
                if (this.getParent().getHorizontalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                    v1_8 = 0;
                }
            }
            int v6_0 = 0;
            while (v6_0 < this.mWidgetsCount) {
                int v7_1 = this.mWidgets[v6_0];
                if ((this.mAllowsGoneWidget) || (v7_1.allowedInBarrier())) {
                    android.support.constraint.solver.SolverVariable v8_4 = p12.createObjectVariable(v7_1.mListAnchors[this.mBarrierType]);
                    v7_1.mListAnchors[this.mBarrierType].mSolverVariable = v8_4;
                    if ((this.mBarrierType != 0) && (this.mBarrierType != 2)) {
                        p12.addGreaterBarrier(v0_6.mSolverVariable, v8_4, v1_8);
                    } else {
                        p12.addLowerBarrier(v0_6.mSolverVariable, v8_4, v1_8);
                    }
                }
                v6_0++;
            }
            if (this.mBarrierType != 0) {
                if (this.mBarrierType != 1) {
                    if (this.mBarrierType != 2) {
                        if (this.mBarrierType == 3) {
                            p12.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 6);
                            if (v1_8 == 0) {
                                p12.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 5);
                            }
                        }
                    } else {
                        p12.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 6);
                        if (v1_8 == 0) {
                            p12.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 5);
                        }
                    }
                } else {
                    p12.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 6);
                    if (v1_8 == 0) {
                        p12.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 5);
                    }
                }
            } else {
                p12.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 6);
                if (v1_8 == 0) {
                    p12.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 5);
                }
            }
            return;
        }
    }

    public boolean allowedInBarrier()
    {
        return 1;
    }

    public boolean allowsGoneWidget()
    {
        return this.mAllowsGoneWidget;
    }

    public void analyze(int p6)
    {
        if (this.mParent != null) {
            if (((android.support.constraint.solver.widgets.ConstraintWidgetContainer) this.mParent).optimizeFor(2)) {
                android.support.constraint.solver.widgets.ResolutionAnchor v0_2;
                switch (this.mBarrierType) {
                    case 0:
                        v0_2 = this.mLeft.getResolutionNode();
                        break;
                    case 1:
                        v0_2 = this.mRight.getResolutionNode();
                        break;
                    case 2:
                        v0_2 = this.mTop.getResolutionNode();
                        break;
                    case 3:
                        v0_2 = this.mBottom.getResolutionNode();
                        break;
                    default:
                        return;
                }
                v0_2.setType(5);
                if ((this.mBarrierType != 0) && (this.mBarrierType != 1)) {
                    this.mLeft.getResolutionNode().resolve(0, 0);
                    this.mRight.getResolutionNode().resolve(0, 0);
                } else {
                    this.mTop.getResolutionNode().resolve(0, 0);
                    this.mBottom.getResolutionNode().resolve(0, 0);
                }
                this.mNodes.clear();
                int v1_13 = 0;
                while (v1_13 < this.mWidgetsCount) {
                    android.support.constraint.solver.widgets.ConstraintWidget v2_3 = this.mWidgets[v1_13];
                    if ((this.mAllowsGoneWidget) || (v2_3.allowedInBarrier())) {
                        android.support.constraint.solver.widgets.ResolutionAnchor v3_3 = 0;
                        switch (this.mBarrierType) {
                            case 0:
                                v3_3 = v2_3.mLeft.getResolutionNode();
                            case 1:
                                v3_3 = v2_3.mRight.getResolutionNode();
                                break;
                            case 2:
                                v3_3 = v2_3.mTop.getResolutionNode();
                                break;
                            case 3:
                                v3_3 = v2_3.mBottom.getResolutionNode();
                                break;
                            default:
                        }
                        if (v3_3 != null) {
                            this.mNodes.add(v3_3);
                            v3_3.addDependent(v0_2);
                        }
                    }
                    v1_13++;
                }
                return;
            } else {
                return;
            }
        } else {
            return;
        }
    }

    public void resetResolutionNodes()
    {
        super.resetResolutionNodes();
        this.mNodes.clear();
        return;
    }

    public void resolve()
    {
        android.support.constraint.solver.widgets.ResolutionAnchor v0;
        float v1 = 0;
        switch (this.mBarrierType) {
            case 0:
                v0 = this.mLeft.getResolutionNode();
                v1 = 2139095039;
                break;
            case 1:
                v0 = this.mRight.getResolutionNode();
                break;
            case 2:
                v0 = this.mTop.getResolutionNode();
                v1 = 2139095039;
                break;
            case 3:
                v0 = this.mBottom.getResolutionNode();
                break;
            default:
                return;
        }
        int v2_4 = this.mNodes.size();
        android.support.constraint.solver.widgets.ResolutionAnchor v3 = 0;
        int v4_0 = 0;
        while (v4_0 < v2_4) {
            long v5_4 = ((android.support.constraint.solver.widgets.ResolutionAnchor) this.mNodes.get(v4_0));
            if (v5_4.state == 1) {
                if ((this.mBarrierType != 0) && (this.mBarrierType != 2)) {
                    if (v5_4.resolvedOffset > v1) {
                        v1 = v5_4.resolvedOffset;
                        v3 = v5_4.resolvedTarget;
                    }
                } else {
                    if (v5_4.resolvedOffset < v1) {
                        v1 = v5_4.resolvedOffset;
                        v3 = v5_4.resolvedTarget;
                    }
                }
                v4_0++;
            } else {
                return;
            }
        }
        if (android.support.constraint.solver.LinearSystem.getMetrics() != null) {
            int v4_2 = android.support.constraint.solver.LinearSystem.getMetrics();
            v4_2.barrierConnectionResolved = (v4_2.barrierConnectionResolved + 1);
        }
        v0.resolvedTarget = v3;
        v0.resolvedOffset = v1;
        v0.didResolve();
        switch (this.mBarrierType) {
            case 0:
                this.mRight.getResolutionNode().resolve(v3, v1);
            case 1:
                this.mLeft.getResolutionNode().resolve(v3, v1);
                break;
            case 2:
                this.mBottom.getResolutionNode().resolve(v3, v1);
                break;
            case 3:
                this.mTop.getResolutionNode().resolve(v3, v1);
                break;
            default:
                return;
        }
        return;
    }

    public void setAllowsGoneWidget(boolean p1)
    {
        this.mAllowsGoneWidget = p1;
        return;
    }

    public void setBarrierType(int p1)
    {
        this.mBarrierType = p1;
        return;
    }
}
