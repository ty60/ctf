package android.support.constraint.solver.widgets;
public class ConstraintWidgetGroup {
    public java.util.List mConstrainedGroup;
    public final int[] mGroupDimensions;
    int mGroupHeight;
    int mGroupWidth;
    public boolean mSkipSolver;
    java.util.List mStartHorizontalWidgets;
    java.util.List mStartVerticalWidgets;
    java.util.List mUnresolvedWidgets;
    java.util.HashSet mWidgetsToSetHorizontal;
    java.util.HashSet mWidgetsToSetVertical;
    java.util.List mWidgetsToSolve;

    ConstraintWidgetGroup(java.util.List p4)
    {
        this.mGroupWidth = -1;
        this.mGroupHeight = -1;
        this.mSkipSolver = 0;
        int[] v1_1 = new int[2];
        v1_1[0] = this.mGroupWidth;
        v1_1[1] = this.mGroupHeight;
        this.mGroupDimensions = v1_1;
        this.mStartHorizontalWidgets = new java.util.ArrayList();
        this.mStartVerticalWidgets = new java.util.ArrayList();
        this.mWidgetsToSetHorizontal = new java.util.HashSet();
        this.mWidgetsToSetVertical = new java.util.HashSet();
        this.mWidgetsToSolve = new java.util.ArrayList();
        this.mUnresolvedWidgets = new java.util.ArrayList();
        this.mConstrainedGroup = p4;
        return;
    }

    ConstraintWidgetGroup(java.util.List p4, boolean p5)
    {
        this.mGroupWidth = -1;
        this.mGroupHeight = -1;
        this.mSkipSolver = 0;
        int[] v1_1 = new int[2];
        v1_1[0] = this.mGroupWidth;
        v1_1[1] = this.mGroupHeight;
        this.mGroupDimensions = v1_1;
        this.mStartHorizontalWidgets = new java.util.ArrayList();
        this.mStartVerticalWidgets = new java.util.ArrayList();
        this.mWidgetsToSetHorizontal = new java.util.HashSet();
        this.mWidgetsToSetVertical = new java.util.HashSet();
        this.mWidgetsToSolve = new java.util.ArrayList();
        this.mUnresolvedWidgets = new java.util.ArrayList();
        this.mConstrainedGroup = p4;
        this.mSkipSolver = p5;
        return;
    }

    private void getWidgetsToSolveTraversal(java.util.ArrayList p6, android.support.constraint.solver.widgets.ConstraintWidget p7)
    {
        if (!p7.mGroupsToSolver) {
            p6.add(p7);
            p7.mGroupsToSolver = 1;
            if (!p7.isFullyResolved()) {
                int v1 = 0;
                if ((p7 instanceof android.support.constraint.solver.widgets.Helper)) {
                    android.support.constraint.solver.widgets.ConstraintAnchor v2_0 = ((android.support.constraint.solver.widgets.Helper) p7).mWidgetsCount;
                    android.support.constraint.solver.widgets.ConstraintWidget v3_0 = 0;
                    while (v3_0 < v2_0) {
                        this.getWidgetsToSolveTraversal(p6, ((android.support.constraint.solver.widgets.Helper) p7).mWidgets[v3_0]);
                        v3_0++;
                    }
                }
                int v0_4 = p7.mListAnchors.length;
                while (v1 < v0_4) {
                    android.support.constraint.solver.widgets.ConstraintAnchor v2_3 = p7.mListAnchors[v1].mTarget;
                    if (v2_3 != null) {
                        android.support.constraint.solver.widgets.ConstraintWidget v3_1 = v2_3.mOwner;
                        if ((v2_3 != null) && (v3_1 != p7.getParent())) {
                            this.getWidgetsToSolveTraversal(p6, v3_1);
                        }
                    }
                    v1++;
                }
                return;
            } else {
                return;
            }
        } else {
            return;
        }
    }

    private void updateResolvedDimension(android.support.constraint.solver.widgets.ConstraintWidget p9)
    {
        int v1_0 = 0;
        if (p9.mOptimizerMeasurable) {
            if (!p9.isFullyResolved()) {
                int v2_0;
                int v3_2 = 0;
                if (p9.mRight.mTarget == null) {
                    v2_0 = 0;
                } else {
                    v2_0 = 1;
                }
                android.support.constraint.solver.widgets.ConstraintAnchor v5_8;
                if (v2_0 == 0) {
                    v5_8 = p9.mLeft.mTarget;
                } else {
                    v5_8 = p9.mRight.mTarget;
                }
                if (v5_8 != null) {
                    if (!v5_8.mOwner.mOptimizerMeasured) {
                        this.updateResolvedDimension(v5_8.mOwner);
                    }
                    if (v5_8.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT) {
                        if (v5_8.mType == android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT) {
                            v1_0 = v5_8.mOwner.mX;
                        }
                    } else {
                        v1_0 = (v5_8.mOwner.mX + v5_8.mOwner.getWidth());
                    }
                }
                int v1_1;
                if (v2_0 == 0) {
                    v1_1 = (v1_0 + (p9.mLeft.getMargin() + p9.getWidth()));
                } else {
                    v1_1 = (v1_0 - p9.mRight.getMargin());
                }
                p9.setHorizontalDimension((v1_1 - p9.getWidth()), v1_1);
                if (p9.mBaseline.mTarget == null) {
                    if (p9.mBottom.mTarget != null) {
                        v3_2 = 1;
                    }
                    android.support.constraint.solver.widgets.ConstraintAnchor v5_10;
                    if (v3_2 == 0) {
                        v5_10 = p9.mTop.mTarget;
                    } else {
                        v5_10 = p9.mBottom.mTarget;
                    }
                    if (v5_10 != null) {
                        if (!v5_10.mOwner.mOptimizerMeasured) {
                            this.updateResolvedDimension(v5_10.mOwner);
                        }
                        if (v5_10.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM) {
                            if (v5_10.mType == android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP) {
                                v1_1 = v5_10.mOwner.mY;
                            }
                        } else {
                            v1_1 = (v5_10.mOwner.mY + v5_10.mOwner.getHeight());
                        }
                    }
                    int v1_2;
                    if (v3_2 == 0) {
                        v1_2 = (v1_1 + (p9.mTop.getMargin() + p9.getHeight()));
                    } else {
                        v1_2 = (v1_1 - p9.mBottom.getMargin());
                    }
                    p9.setVerticalDimension((v1_2 - p9.getHeight()), v1_2);
                    p9.mOptimizerMeasured = 1;
                } else {
                    int v3_1 = p9.mBaseline.mTarget;
                    if (!v3_1.mOwner.mOptimizerMeasured) {
                        this.updateResolvedDimension(v3_1.mOwner);
                    }
                    android.support.constraint.solver.widgets.ConstraintAnchor v5_6 = ((v3_1.mOwner.mY + v3_1.mOwner.mBaselineDistance) - p9.mBaselineDistance);
                    p9.setVerticalDimension(v5_6, (p9.mHeight + v5_6));
                    p9.mOptimizerMeasured = 1;
                    return;
                }
            } else {
                return;
            }
        }
        return;
    }

    void addWidgetsToSet(android.support.constraint.solver.widgets.ConstraintWidget p2, int p3)
    {
        if (p3 != 0) {
            if (p3 == 1) {
                this.mWidgetsToSetVertical.add(p2);
            }
        } else {
            this.mWidgetsToSetHorizontal.add(p2);
        }
        return;
    }

    public java.util.List getStartWidgets(int p2)
    {
        if (p2 != 0) {
            if (p2 != 1) {
                return 0;
            } else {
                return this.mStartVerticalWidgets;
            }
        } else {
            return this.mStartHorizontalWidgets;
        }
    }

    java.util.Set getWidgetsToSet(int p2)
    {
        if (p2 != 0) {
            if (p2 != 1) {
                return 0;
            } else {
                return this.mWidgetsToSetVertical;
            }
        } else {
            return this.mWidgetsToSetHorizontal;
        }
    }

    java.util.List getWidgetsToSolve()
    {
        if (this.mWidgetsToSolve.isEmpty()) {
            int v0_4 = this.mConstrainedGroup.size();
            int v1_3 = 0;
            while (v1_3 < v0_4) {
                java.util.List v2_4 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mConstrainedGroup.get(v1_3));
                if (!v2_4.mOptimizerMeasurable) {
                    this.getWidgetsToSolveTraversal(((java.util.ArrayList) this.mWidgetsToSolve), v2_4);
                }
                v1_3++;
            }
            this.mUnresolvedWidgets.clear();
            this.mUnresolvedWidgets.addAll(this.mConstrainedGroup);
            this.mUnresolvedWidgets.removeAll(this.mWidgetsToSolve);
            return this.mWidgetsToSolve;
        } else {
            return this.mWidgetsToSolve;
        }
    }

    void updateUnresolvedWidgets()
    {
        int v0_1 = this.mUnresolvedWidgets.size();
        int v1 = 0;
        while (v1 < v0_1) {
            this.updateResolvedDimension(((android.support.constraint.solver.widgets.ConstraintWidget) this.mUnresolvedWidgets.get(v1)));
            v1++;
        }
        return;
    }
}
