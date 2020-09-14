package android.support.constraint.solver.widgets;
public class Analyzer {

    private Analyzer()
    {
        return;
    }

    public static void determineGroups(android.support.constraint.solver.widgets.ConstraintWidgetContainer p12)
    {
        if ((p12.getOptimizationLevel() & 32) == 32) {
            int v4_1;
            p12.mSkipSolver = 1;
            p12.mGroupsWrapOptimized = 0;
            p12.mHorizontalWrapOptimized = 0;
            p12.mVerticalWrapOptimized = 0;
            java.util.ArrayList v2 = p12.mChildren;
            java.util.List v3 = p12.mWidgetGroups;
            if (p12.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                v4_1 = 0;
            } else {
                v4_1 = 1;
            }
            int v5_2;
            if (p12.getVerticalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                v5_2 = 0;
            } else {
                v5_2 = 1;
            }
            if ((v4_1 == 0) && (v5_2 == 0)) {
                int v6_1 = 0;
            } else {
                v6_1 = 1;
            }
            v3.clear();
            int v7_0 = v2.iterator();
            while (v7_0.hasNext()) {
                int v8_6 = ((android.support.constraint.solver.widgets.ConstraintWidget) v7_0.next());
                v8_6.mBelongingGroup = 0;
                v8_6.mGroupsToSolver = 0;
                v8_6.resetResolutionNodes();
            }
            int v7_1 = v2.iterator();
            while (v7_1.hasNext()) {
                int v8_4 = ((android.support.constraint.solver.widgets.ConstraintWidget) v7_1.next());
                if ((v8_4.mBelongingGroup == null) && (!android.support.constraint.solver.widgets.Analyzer.determineGroups(v8_4, v3, v6_1))) {
                    android.support.constraint.solver.widgets.Analyzer.singleGroup(p12);
                    p12.mSkipSolver = 0;
                    return;
                }
            }
            int v7_2 = 0;
            int v8_2 = 0;
            int v9_0 = v3.iterator();
            while (v9_0.hasNext()) {
                android.support.constraint.solver.widgets.ConstraintWidgetGroup v10_2 = ((android.support.constraint.solver.widgets.ConstraintWidgetGroup) v9_0.next());
                v7_2 = Math.max(v7_2, android.support.constraint.solver.widgets.Analyzer.getMaxDimension(v10_2, 0));
                v8_2 = Math.max(v8_2, android.support.constraint.solver.widgets.Analyzer.getMaxDimension(v10_2, 1));
            }
            if (v4_1 != 0) {
                p12.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
                p12.setWidth(v7_2);
                p12.mGroupsWrapOptimized = 1;
                p12.mHorizontalWrapOptimized = 1;
                p12.mWrapFixedWidth = v7_2;
            }
            if (v5_2 != 0) {
                p12.setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
                p12.setHeight(v8_2);
                p12.mGroupsWrapOptimized = 1;
                p12.mVerticalWrapOptimized = 1;
                p12.mWrapFixedHeight = v8_2;
            }
            android.support.constraint.solver.widgets.Analyzer.setPosition(v3, 0, p12.getWidth());
            android.support.constraint.solver.widgets.Analyzer.setPosition(v3, 1, p12.getHeight());
            return;
        } else {
            android.support.constraint.solver.widgets.Analyzer.singleGroup(p12);
            return;
        }
    }

    private static boolean determineGroups(android.support.constraint.solver.widgets.ConstraintWidget p3, java.util.List p4, boolean p5)
    {
        android.support.constraint.solver.widgets.ConstraintWidgetGroup v0_1 = new android.support.constraint.solver.widgets.ConstraintWidgetGroup(new java.util.ArrayList(), 1);
        p4.add(v0_1);
        return android.support.constraint.solver.widgets.Analyzer.traverse(p3, v0_1, p4, p5);
    }

    private static int getMaxDimension(android.support.constraint.solver.widgets.ConstraintWidgetGroup p9, int p10)
    {
        int v1 = (p10 * 2);
        java.util.List v2 = p9.getStartWidgets(p10);
        int v3 = v2.size();
        int v5 = 0;
        int v0_2 = 0;
        while (v0_2 < v3) {
            int v7_9;
            android.support.constraint.solver.widgets.ConstraintWidget v6_1 = ((android.support.constraint.solver.widgets.ConstraintWidget) v2.get(v0_2));
            if ((v6_1.mListAnchors[(v1 + 1)].mTarget != null) && ((v6_1.mListAnchors[v1].mTarget == null) || (v6_1.mListAnchors[(v1 + 1)].mTarget == null))) {
                v7_9 = 0;
            } else {
                v7_9 = 1;
            }
            v5 = Math.max(v5, android.support.constraint.solver.widgets.Analyzer.getMaxDimensionTraversal(v6_1, p10, v7_9, 0));
            v0_2++;
        }
        p9.mGroupDimensions[p10] = v5;
        return v5;
    }

    private static int getMaxDimensionTraversal(android.support.constraint.solver.widgets.ConstraintWidget p27, int p28, boolean p29, int p30)
    {
        int v4 = 0;
        if (p27.mOptimizerMeasurable) {
            int v5 = 0;
            int v6_8 = 0;
            if ((p27.mBaseline.mTarget != null) && (p28 == 1)) {
                v4 = 1;
            }
            int v9_1;
            int v10_13;
            int v11_12;
            int v7_2;
            if (!p29) {
                v7_2 = (p27.getHeight() - p27.getBaselineDistance());
                v9_1 = p27.getBaselineDistance();
                v11_12 = (p28 * 2);
                v10_13 = (v11_12 + 1);
            } else {
                v7_2 = p27.getBaselineDistance();
                v9_1 = (p27.getHeight() - p27.getBaselineDistance());
                v10_13 = (p28 * 2);
                v11_12 = (v10_13 + 1);
            }
            if ((p27.mListAnchors[v11_12].mTarget == null) || (p27.mListAnchors[v10_13].mTarget != null)) {
                int v12_6 = 1;
            } else {
                v12_6 = -1;
                int v13_0 = v10_13;
                v10_13 = v11_12;
                v11_12 = v13_0;
            }
            int v13_1;
            if (v4 == 0) {
                v13_1 = p30;
            } else {
                v13_1 = (p30 - v7_2);
            }
            int v15_6;
            int v14_5 = ((p27.mListAnchors[v10_13].getMargin() * v12_6) + android.support.constraint.solver.widgets.Analyzer.getParentBiasOffset(p27, p28));
            android.support.constraint.solver.widgets.ConstraintWidgetGroup v3_15 = (v14_5 + v13_1);
            if (p28 != 0) {
                v15_6 = p27.getHeight();
            } else {
                v15_6 = p27.getWidth();
            }
            int v15_4 = (v15_6 * v12_6);
            int v8_5 = p27.mListAnchors[v10_13].getResolutionNode().dependents.iterator();
            while (v8_5.hasNext()) {
                int v17_0 = v6_8;
                java.util.Iterator v18 = v8_5;
                v5 = Math.max(v5, android.support.constraint.solver.widgets.Analyzer.getMaxDimensionTraversal(((android.support.constraint.solver.widgets.ResolutionAnchor) ((android.support.constraint.solver.widgets.ResolutionNode) v8_5.next())).myAnchor.mOwner, p28, p29, v3_15));
                v6_8 = v17_0;
                v8_5 = v18;
            }
            int v17_1 = v6_8;
            int v6_5 = p27.mListAnchors[v11_12].getResolutionNode().dependents.iterator();
            int v8_1 = v17_1;
            while (v6_5.hasNext()) {
                java.util.Iterator v19 = v6_5;
                int v20_0 = v11_12;
                v8_1 = Math.max(v8_1, android.support.constraint.solver.widgets.Analyzer.getMaxDimensionTraversal(((android.support.constraint.solver.widgets.ResolutionAnchor) ((android.support.constraint.solver.widgets.ResolutionNode) v6_5.next())).myAnchor.mOwner, p28, p29, (v15_4 + v3_15)));
                v6_5 = v19;
                v11_12 = v20_0;
            }
            int v8_10;
            int v20_1 = v11_12;
            if (v4 == 0) {
                int v6_13;
                if (p28 != 0) {
                    v6_13 = p27.getHeight();
                } else {
                    v6_13 = p27.getWidth();
                }
                v8_10 = (v8_1 + (v6_13 * v12_6));
            } else {
                v5 -= v7_2;
                v8_10 = (v8_1 + v9_1);
            }
            int v23_0;
            int v24_0;
            int v6_0 = 0;
            if (p28 != 1) {
                v23_0 = v10_13;
                v24_0 = v15_4;
            } else {
                int v11_4 = p27.mBaseline.getResolutionNode().dependents.iterator();
                while (v11_4.hasNext()) {
                    int v24_1;
                    int v22 = v11_4;
                    int v11_9 = ((android.support.constraint.solver.widgets.ResolutionAnchor) ((android.support.constraint.solver.widgets.ResolutionNode) v11_4.next()));
                    int v23_1 = v10_13;
                    if (v12_6 != 1) {
                        v24_1 = v15_4;
                        v6_0 = Math.max(v6_0, android.support.constraint.solver.widgets.Analyzer.getMaxDimensionTraversal(v11_9.myAnchor.mOwner, p28, p29, ((v9_1 * v12_6) + v3_15)));
                    } else {
                        v24_1 = v15_4;
                        v6_0 = Math.max(v6_0, android.support.constraint.solver.widgets.Analyzer.getMaxDimensionTraversal(v11_9.myAnchor.mOwner, p28, p29, (v7_2 + v3_15)));
                    }
                    v11_4 = v22;
                    v10_13 = v23_1;
                    v15_4 = v24_1;
                }
                v23_0 = v10_13;
                v24_0 = v15_4;
                if ((p27.mBaseline.getResolutionNode().dependents.size() > 0) && (v4 == 0)) {
                    if (v12_6 != 1) {
                        v6_0 -= v9_1;
                    } else {
                        v6_0 += v7_2;
                    }
                }
            }
            int v10_5 = v14_5;
            int v14_0 = (v14_5 + Math.max(v5, Math.max(v8_10, v6_0)));
            int v11_7 = (v13_1 + v10_5);
            int v15_0 = (v11_7 + v24_0);
            if (v12_6 == -1) {
                android.support.constraint.solver.widgets.ConstraintWidgetGroup v3_1 = v15_0;
                v15_0 = v11_7;
                v11_7 = v3_1;
            }
            if (!p29) {
                p27.mBelongingGroup.addWidgetsToSet(p27, p28);
                p27.setRelativePositioning(v11_7, p28);
            } else {
                android.support.constraint.solver.widgets.Optimizer.setOptimizedWidget(p27, p28, v11_7);
                p27.setFrame(v11_7, v15_0, p28);
            }
            if ((p27.getDimensionBehaviour(p28) == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) && (p27.mDimensionRatio != 0)) {
                p27.mBelongingGroup.addWidgetsToSet(p27, p28);
            }
            if ((p27.mListAnchors[v23_0].mTarget != null) && (p27.mListAnchors[v20_1].mTarget != null)) {
                android.support.constraint.solver.widgets.ConstraintWidget v2_10 = p27.getParent();
                if ((p27.mListAnchors[v23_0].mTarget.mOwner == v2_10) && (p27.mListAnchors[v20_1].mTarget.mOwner == v2_10)) {
                    p27.mBelongingGroup.addWidgetsToSet(p27, p28);
                }
            }
            return v14_0;
        } else {
            return 0;
        }
    }

    private static int getParentBiasOffset(android.support.constraint.solver.widgets.ConstraintWidget p8, int p9)
    {
        int v0 = (p9 * 2);
        android.support.constraint.solver.widgets.ConstraintAnchor v1_1 = p8.mListAnchors[v0];
        android.support.constraint.solver.widgets.ConstraintAnchor v2_1 = p8.mListAnchors[(v0 + 1)];
        if ((v1_1.mTarget == null) || ((v1_1.mTarget.mOwner != p8.mParent) || ((v2_1.mTarget == null) || (v2_1.mTarget.mOwner != p8.mParent)))) {
            return 0;
        } else {
            int v6_1;
            int v4 = 0;
            int v3_4 = p8.mParent.getLength(p9);
            if (p9 != 0) {
                v6_1 = p8.mVerticalBiasPercent;
            } else {
                v6_1 = p8.mHorizontalBiasPercent;
            }
            return ((int) (((float) (((v3_4 - v1_1.getMargin()) - v2_1.getMargin()) - p8.getLength(p9))) * v6_1));
        }
    }

    private static void invalidate(android.support.constraint.solver.widgets.ConstraintWidgetContainer p1, android.support.constraint.solver.widgets.ConstraintWidget p2, android.support.constraint.solver.widgets.ConstraintWidgetGroup p3)
    {
        p3.mSkipSolver = 0;
        p1.mSkipSolver = 0;
        p2.mOptimizerMeasurable = 0;
        return;
    }

    private static int resolveDimensionRatio(android.support.constraint.solver.widgets.ConstraintWidget p3)
    {
        int v0 = -1;
        if (p3.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            if (p3.getVerticalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                if (p3.mDimensionRatioSide != 1) {
                    v0 = ((int) (((float) p3.getWidth()) / p3.mDimensionRatio));
                } else {
                    v0 = ((int) (((float) p3.getWidth()) * p3.mDimensionRatio));
                }
                p3.setHeight(v0);
            }
        } else {
            if (p3.mDimensionRatioSide != 0) {
                v0 = ((int) (((float) p3.getHeight()) / p3.mDimensionRatio));
            } else {
                v0 = ((int) (((float) p3.getHeight()) * p3.mDimensionRatio));
            }
            p3.setWidth(v0);
        }
        return v0;
    }

    private static void setConnection(android.support.constraint.solver.widgets.ConstraintAnchor p2)
    {
        android.support.constraint.solver.widgets.ResolutionAnchor v0 = p2.getResolutionNode();
        if ((p2.mTarget != null) && (p2.mTarget.mTarget != p2)) {
            p2.mTarget.getResolutionNode().addDependent(v0);
        }
        return;
    }

    public static void setPosition(java.util.List p6, int p7, int p8)
    {
        int v0 = p6.size();
        int v1 = 0;
        while (v1 < v0) {
            java.util.Iterator v3_0 = ((android.support.constraint.solver.widgets.ConstraintWidgetGroup) p6.get(v1)).getWidgetsToSet(p7).iterator();
            while (v3_0.hasNext()) {
                android.support.constraint.solver.widgets.ConstraintWidget v4_2 = ((android.support.constraint.solver.widgets.ConstraintWidget) v3_0.next());
                if (v4_2.mOptimizerMeasurable) {
                    android.support.constraint.solver.widgets.Analyzer.updateSizeDependentWidgets(v4_2, p7, p8);
                }
            }
            v1++;
        }
        return;
    }

    private static void singleGroup(android.support.constraint.solver.widgets.ConstraintWidgetContainer p3)
    {
        p3.mWidgetGroups.clear();
        p3.mWidgetGroups.add(0, new android.support.constraint.solver.widgets.ConstraintWidgetGroup(p3.mChildren));
        return;
    }

    private static boolean traverse(android.support.constraint.solver.widgets.ConstraintWidget p8, android.support.constraint.solver.widgets.ConstraintWidgetGroup p9, java.util.List p10, boolean p11)
    {
        if (p8 != null) {
            p8.mOptimizerMeasured = 0;
            android.support.constraint.solver.widgets.ConstraintWidgetContainer v2_1 = ((android.support.constraint.solver.widgets.ConstraintWidgetContainer) p8.getParent());
            if (p8.mBelongingGroup != null) {
                if (p8.mBelongingGroup != p9) {
                    p9.mConstrainedGroup.addAll(p8.mBelongingGroup.mConstrainedGroup);
                    p9.mStartHorizontalWidgets.addAll(p8.mBelongingGroup.mStartHorizontalWidgets);
                    p9.mStartVerticalWidgets.addAll(p8.mBelongingGroup.mStartVerticalWidgets);
                    if (!p8.mBelongingGroup.mSkipSolver) {
                        p9.mSkipSolver = 0;
                    }
                    p10.remove(p8.mBelongingGroup);
                    java.util.Iterator v1_4 = p8.mBelongingGroup.mConstrainedGroup.iterator();
                    while (v1_4.hasNext()) {
                        ((android.support.constraint.solver.widgets.ConstraintWidget) v1_4.next()).mBelongingGroup = p9;
                    }
                }
                return 1;
            } else {
                p8.mOptimizerMeasurable = 1;
                p9.mConstrainedGroup.add(p8);
                p8.mBelongingGroup = p9;
                if ((p8.mLeft.mTarget == null) && ((p8.mRight.mTarget == null) && ((p8.mTop.mTarget == null) && ((p8.mBottom.mTarget == null) && ((p8.mBaseline.mTarget == null) && (p8.mCenter.mTarget == null)))))) {
                    android.support.constraint.solver.widgets.Analyzer.invalidate(v2_1, p8, p9);
                    if (p11) {
                        return 0;
                    }
                }
                if ((p8.mTop.mTarget != null) && (p8.mBottom.mTarget != null)) {
                    // Both branches of the condition point to the same code.
                    // if (v2_1.getVerticalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                        if (!p11) {
                            if ((p8.mTop.mTarget.mOwner != p8.getParent()) || (p8.mBottom.mTarget.mOwner != p8.getParent())) {
                                android.support.constraint.solver.widgets.Analyzer.invalidate(v2_1, p8, p9);
                            }
                        } else {
                            android.support.constraint.solver.widgets.Analyzer.invalidate(v2_1, p8, p9);
                            return 0;
                        }
                    // }
                }
                if ((p8.mLeft.mTarget != null) && (p8.mRight.mTarget != null)) {
                    // Both branches of the condition point to the same code.
                    // if (v2_1.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                        if (!p11) {
                            if ((p8.mLeft.mTarget.mOwner != p8.getParent()) || (p8.mRight.mTarget.mOwner != p8.getParent())) {
                                android.support.constraint.solver.widgets.Analyzer.invalidate(v2_1, p8, p9);
                            }
                        } else {
                            android.support.constraint.solver.widgets.Analyzer.invalidate(v2_1, p8, p9);
                            return 0;
                        }
                    // }
                }
                android.support.constraint.solver.widgets.ConstraintWidget v3_2;
                if (p8.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    v3_2 = 0;
                } else {
                    v3_2 = 1;
                }
                int v4_9;
                if (p8.getVerticalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    v4_9 = 0;
                } else {
                    v4_9 = 1;
                }
                if (((v3_2 ^ v4_9) == 0) || (p8.mDimensionRatio == 0)) {
                    if ((p8.getHorizontalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || (p8.getVerticalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT)) {
                        android.support.constraint.solver.widgets.Analyzer.invalidate(v2_1, p8, p9);
                        if (p11) {
                            return 0;
                        }
                    }
                } else {
                    android.support.constraint.solver.widgets.Analyzer.resolveDimensionRatio(p8);
                }
                if ((((p8.mLeft.mTarget == null) && (p8.mRight.mTarget == null)) || (((p8.mLeft.mTarget != null) && ((p8.mLeft.mTarget.mOwner == p8.mParent) && (p8.mRight.mTarget == null))) || (((p8.mRight.mTarget != null) && ((p8.mRight.mTarget.mOwner == p8.mParent) && (p8.mLeft.mTarget == null))) || ((p8.mLeft.mTarget != null) && ((p8.mLeft.mTarget.mOwner == p8.mParent) && ((p8.mRight.mTarget != null) && (p8.mRight.mTarget.mOwner == p8.mParent))))))) && ((p8.mCenter.mTarget == null) && ((!(p8 instanceof android.support.constraint.solver.widgets.Guideline)) && (!(p8 instanceof android.support.constraint.solver.widgets.Helper))))) {
                    p9.mStartHorizontalWidgets.add(p8);
                }
                if ((((p8.mTop.mTarget == null) && (p8.mBottom.mTarget == null)) || (((p8.mTop.mTarget != null) && ((p8.mTop.mTarget.mOwner == p8.mParent) && (p8.mBottom.mTarget == null))) || (((p8.mBottom.mTarget != null) && ((p8.mBottom.mTarget.mOwner == p8.mParent) && (p8.mTop.mTarget == null))) || ((p8.mTop.mTarget != null) && ((p8.mTop.mTarget.mOwner == p8.mParent) && ((p8.mBottom.mTarget != null) && (p8.mBottom.mTarget.mOwner == p8.mParent))))))) && ((p8.mCenter.mTarget == null) && ((p8.mBaseline.mTarget == null) && ((!(p8 instanceof android.support.constraint.solver.widgets.Guideline)) && (!(p8 instanceof android.support.constraint.solver.widgets.Helper)))))) {
                    p9.mStartVerticalWidgets.add(p8);
                }
                if ((p8 instanceof android.support.constraint.solver.widgets.Helper)) {
                    android.support.constraint.solver.widgets.Analyzer.invalidate(v2_1, p8, p9);
                    if (!p11) {
                        int v4_26 = 0;
                        while (v4_26 < ((android.support.constraint.solver.widgets.Helper) p8).mWidgetsCount) {
                            if (android.support.constraint.solver.widgets.Analyzer.traverse(((android.support.constraint.solver.widgets.Helper) p8).mWidgets[v4_26], p9, p10, p11)) {
                                v4_26++;
                            } else {
                                return 0;
                            }
                        }
                    } else {
                        return 0;
                    }
                }
                android.support.constraint.solver.widgets.ConstraintWidget v3_84 = p8.mListAnchors.length;
                int v4_27 = 0;
                while (v4_27 < v3_84) {
                    boolean v5_5 = p8.mListAnchors[v4_27];
                    if ((v5_5.mTarget != null) && (v5_5.mTarget.mOwner != p8.getParent())) {
                        if (v5_5.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER) {
                            android.support.constraint.solver.widgets.Analyzer.setConnection(v5_5);
                        } else {
                            android.support.constraint.solver.widgets.Analyzer.invalidate(v2_1, p8, p9);
                            if (p11) {
                                return 0;
                            }
                        }
                        if (!android.support.constraint.solver.widgets.Analyzer.traverse(v5_5.mTarget.mOwner, p9, p10, p11)) {
                            return 0;
                        }
                    }
                    v4_27++;
                }
                return 1;
            }
        } else {
            return 1;
        }
    }

    private static void updateSizeDependentWidgets(android.support.constraint.solver.widgets.ConstraintWidget p10, int p11, int p12)
    {
        int v3_0;
        int v0 = (p11 * 2);
        android.support.constraint.solver.widgets.ConstraintAnchor v1_1 = p10.mListAnchors[v0];
        android.support.constraint.solver.widgets.ConstraintAnchor v2_1 = p10.mListAnchors[(v0 + 1)];
        if ((v1_1.mTarget == null) || (v2_1.mTarget == null)) {
            v3_0 = 0;
        } else {
            v3_0 = 1;
        }
        if (v3_0 == 0) {
            if ((p10.mDimensionRatio == 0) || (p10.getDimensionBehaviour(p11) != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT)) {
                int v4_1 = (p12 - p10.getRelativePositioning(p11));
                int v5_4 = (v4_1 - p10.getLength(p11));
                p10.setFrame(v5_4, v4_1, p11);
                android.support.constraint.solver.widgets.Optimizer.setOptimizedWidget(p10, p11, v5_4);
                return;
            } else {
                int v5_5 = android.support.constraint.solver.widgets.Analyzer.resolveDimensionRatio(p10);
                int v6_6 = ((int) p10.mListAnchors[v0].getResolutionNode().resolvedOffset);
                int v7 = (v6_6 + v5_5);
                v2_1.getResolutionNode().resolvedTarget = v1_1.getResolutionNode();
                v2_1.getResolutionNode().resolvedOffset = ((float) v5_5);
                v2_1.getResolutionNode().state = 1;
                p10.setFrame(v6_6, v7, p11);
                return;
            }
        } else {
            android.support.constraint.solver.widgets.Optimizer.setOptimizedWidget(p10, p11, (android.support.constraint.solver.widgets.Analyzer.getParentBiasOffset(p10, p11) + v1_1.getMargin()));
            return;
        }
    }
}
