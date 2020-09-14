package android.support.constraint.solver.widgets;
 class Chain {
    private static final boolean DEBUG;

    Chain()
    {
        return;
    }

    static void applyChainConstraints(android.support.constraint.solver.widgets.ConstraintWidgetContainer p6, android.support.constraint.solver.LinearSystem p7, int p8)
    {
        int v0;
        int v1;
        android.support.constraint.solver.widgets.ChainHead[] v2;
        v1 = 0;
        if (p8 != 0) {
            v0 = 2;
            v1 = p6.mVerticalChainsSize;
            v2 = p6.mVerticalChainsArray;
        } else {
            v0 = 0;
            v1 = p6.mHorizontalChainsSize;
            v2 = p6.mHorizontalChainsArray;
        }
        int v3 = 0;
        while (v3 < v1) {
            android.support.constraint.solver.widgets.ChainHead v4 = v2[v3];
            v4.define();
            if (!p6.optimizeFor(4)) {
                android.support.constraint.solver.widgets.Chain.applyChainConstraints(p6, p7, p8, v0, v4);
            } else {
                if (!android.support.constraint.solver.widgets.Optimizer.applyChainOptimized(p6, p7, p8, v0, v4)) {
                    android.support.constraint.solver.widgets.Chain.applyChainConstraints(p6, p7, p8, v0, v4);
                }
            }
            v3++;
        }
        return;
    }

    static void applyChainConstraints(android.support.constraint.solver.widgets.ConstraintWidgetContainer p62, android.support.constraint.solver.LinearSystem p63, int p64, int p65, android.support.constraint.solver.widgets.ChainHead p66)
    {
        android.support.constraint.solver.LinearSystem v1_12;
        android.support.constraint.solver.widgets.ConstraintWidget v13 = p66.mFirst;
        int v14_3 = p66.mLast;
        int v9_5 = p66.mFirstVisibleWidget;
        android.support.constraint.solver.widgets.ConstraintAnchor v8_8 = p66.mLastVisibleWidget;
        int v7_9 = p66.mHead;
        int v4_3 = p66.mTotalWeight;
        int v6_0 = p66.mFirstMatchConstraintWidget;
        int v5_3 = p66.mLastMatchConstraintWidget;
        int v15_0 = v13;
        int v17 = 0;
        if (p62.mListDimensionBehaviors[p64] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
            v1_12 = 0;
        } else {
            v1_12 = 1;
        }
        int v3_36;
        int v2_30;
        android.support.constraint.solver.LinearSystem v1_34;
        int v24;
        int v19 = v1_12;
        int v2 = 0;
        if (p64 != 0) {
            int v3_20;
            if (v7_9.mVerticalChainStyle != 0) {
                v3_20 = 0;
            } else {
                v3_20 = 1;
            }
            v24 = v3_20;
            if (v7_9.mVerticalChainStyle != 1) {
                v1_34 = 0;
            } else {
                v1_34 = 1;
            }
            if (v7_9.mVerticalChainStyle != 2) {
                v2_30 = 0;
            } else {
                v2_30 = 1;
            }
            v3_36 = v15_0;
        } else {
            int v3_39;
            if (v7_9.mHorizontalChainStyle != 0) {
                v3_39 = 0;
            } else {
                v3_39 = 1;
            }
            if (v7_9.mHorizontalChainStyle != 1) {
                v1_34 = 0;
            } else {
                v1_34 = 1;
            }
            if (v7_9.mHorizontalChainStyle != 2) {
                v2_30 = 0;
            } else {
                v2_30 = 1;
            }
            v3_36 = v15_0;
            v24 = v3_39;
        }
        int v16_1 = v1_34;
        int v15_1 = v2_30;
        while(true) {
            android.support.constraint.solver.widgets.ConstraintWidget v25 = v5_3;
            if (v17 != 0) {
                break;
            }
            int v2_51 = v3_36.mListAnchors[p65];
            int v22_8 = 4;
            if ((v19 != 0) || (v15_1 != 0)) {
                v22_8 = 1;
            }
            int v23_7 = v2_51.getMargin();
            if ((v2_51.mTarget != null) && (v3_36 != v13)) {
                v23_7 += v2_51.mTarget.getMargin();
            }
            android.support.constraint.solver.LinearSystem v1_94 = v23_7;
            if ((v15_1 == 0) || ((v3_36 == v13) || (v3_36 == v9_5))) {
                if ((v24 != 0) && (v19 != 0)) {
                    v22_8 = 4;
                }
            } else {
                v22_8 = 6;
            }
            int v31;
            float v30_1;
            int v28_3 = v22_8;
            if (v2_51.mTarget == null) {
                v30_1 = v4_3;
                v31 = v6_0;
            } else {
                if (v3_36 != v9_5) {
                    v30_1 = v4_3;
                    v31 = v6_0;
                    p63.addGreaterThan(v2_51.mSolverVariable, v2_51.mTarget.mSolverVariable, v1_94, 6);
                } else {
                    v30_1 = v4_3;
                    v31 = v6_0;
                    p63.addGreaterThan(v2_51.mSolverVariable, v2_51.mTarget.mSolverVariable, v1_94, 5);
                }
                p63.addEquality(v2_51.mSolverVariable, v2_51.mTarget.mSolverVariable, v1_94, v28_3);
            }
            if (v19 == 0) {
                int v33 = v2_51;
            } else {
                if ((v3_36.getVisibility() == 8) || (v3_36.mListDimensionBehaviors[p64] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT)) {
                    v33 = v2_51;
                    android.support.constraint.solver.LinearSystem v1_97 = 0;
                } else {
                    v33 = v2_51;
                    v1_97 = 0;
                    p63.addGreaterThan(v3_36.mListAnchors[(p65 + 1)].mSolverVariable, v3_36.mListAnchors[p65].mSolverVariable, 0, 5);
                }
                p63.addGreaterThan(v3_36.mListAnchors[p65].mSolverVariable, p62.mListAnchors[p65].mSolverVariable, v1_97, 6);
            }
            int v2_59;
            android.support.constraint.solver.LinearSystem v1_100 = v3_36.mListAnchors[(p65 + 1)].mTarget;
            if (v1_100 == null) {
                v2_59 = 0;
            } else {
                v2_59 = v1_100.mOwner;
                if ((v2_59.mListAnchors[p65].mTarget == null) || (v2_59.mListAnchors[p65].mTarget.mOwner != v3_36)) {
                    v2_59 = 0;
                }
            }
            android.support.constraint.solver.SolverVariable v20_5 = v2_59;
            if (v20_5 == null) {
                v17 = 1;
            } else {
                v3_36 = v20_5;
            }
            v5_3 = v25;
            v4_3 = v30_1;
            v6_0 = v31;
        }
        float v30_0 = v4_3;
        if ((v8_8 != null) && (v14_3.mListAnchors[(p65 + 1)].mTarget != null)) {
            android.support.constraint.solver.LinearSystem v1_96 = v8_8.mListAnchors[(p65 + 1)];
            p63.addLowerThan(v1_96.mSolverVariable, v14_3.mListAnchors[(p65 + 1)].mTarget.mSolverVariable, (- v1_96.getMargin()), 5);
        }
        if (v19 != 0) {
            p63.addGreaterThan(p62.mListAnchors[(p65 + 1)].mSolverVariable, v14_3.mListAnchors[(p65 + 1)].mSolverVariable, v14_3.mListAnchors[(p65 + 1)].getMargin(), 6);
        }
        int v5_2 = p66.mWeightedMatchConstraintsWidgets;
        if (v5_2 != 0) {
            android.support.constraint.solver.LinearSystem v1_0 = v5_2.size();
            if (v1_0 > 1) {
                int v4_4 = 0;
                int v21_0 = 0;
                if ((p66.mHasUndefinedWeights) && (!p66.mHasComplexMatchWeights)) {
                    v30_0 = ((float) p66.mWidgetsMatchCount);
                }
                int v2_6 = 0;
                while (v2_6 < v1_0) {
                    android.support.constraint.solver.SolverVariable v44;
                    int v43;
                    int v45_1;
                    int v46_1;
                    int v6_13 = ((android.support.constraint.solver.widgets.ConstraintWidget) v5_2.get(v2_6));
                    android.support.constraint.solver.SolverVariable v0_3 = v6_13.mWeight[p64];
                    if (v0_3 >= 0) {
                        v43 = v0_3;
                        v44 = v1_0;
                        v45_1 = v3_36;
                        v46_1 = v5_2;
                        if (v43 != 0) {
                            int v5 = 6;
                            if (v4_4 != 0) {
                                android.support.constraint.solver.SolverVariable v0_9 = v4_4.mListAnchors[p65].mSolverVariable;
                                android.support.constraint.solver.LinearSystem v1_78 = v4_4.mListAnchors[(p65 + 1)].mSolverVariable;
                                int v3_75 = v6_13.mListAnchors[p65].mSolverVariable;
                                int v5_21 = v6_13.mListAnchors[(p65 + 1)].mSolverVariable;
                                int v4_24 = p63.createRow();
                                v4_24.createRowEqualMatchDimensions(v21_0, v30_0, v43, v0_9, v1_78, v3_75, v5_21);
                                p63.addConstraint(v4_24);
                            }
                            v4_4 = v6_13;
                            v21_0 = v43;
                        } else {
                            p63.addEquality(v6_13.mListAnchors[(p65 + 1)].mSolverVariable, v6_13.mListAnchors[p65].mSolverVariable, 0, 6);
                        }
                    } else {
                        if (!p66.mHasComplexMatchWeights) {
                            v44 = v1_0;
                            v45_1 = v3_36;
                            v46_1 = v5_2;
                            v43 = 1065353216;
                        } else {
                            v44 = v1_0;
                            v45_1 = v3_36;
                            v46_1 = v5_2;
                            p63.addEquality(v6_13.mListAnchors[(p65 + 1)].mSolverVariable, v6_13.mListAnchors[p65].mSolverVariable, 0, 4);
                            v5 = 6;
                        }
                    }
                    v2_6++;
                    v1_0 = v44;
                    v3_36 = v45_1;
                    v5_2 = v46_1;
                    int v6 = 5;
                }
            }
        }
        android.support.constraint.solver.SolverVariable v0_1;
        android.support.constraint.solver.widgets.ConstraintAnchor v60;
        int v14_0;
        android.support.constraint.solver.LinearSystem v10_1;
        android.support.constraint.solver.LinearSystem v10_2;
        if (v9_5 == 0) {
            v0_1 = v8_8;
            v10_1 = v9_5;
            if ((v24 == 0) || (v10_1 == null)) {
                android.support.constraint.solver.LinearSystem v53_0 = v10_1;
                int v52_0 = v14_3;
                v10_2 = p63;
                if (v16_1 == 0) {
                    v60 = v52_0;
                    v14_0 = v53_0;
                } else {
                    v14_0 = v53_0;
                    if (v14_0 == 0) {
                        v60 = v52_0;
                    } else {
                        if ((p66.mWidgetsMatchCount <= 0) || (p66.mWidgetsCount != p66.mWidgetsMatchCount)) {
                            int v47_0 = 0;
                        } else {
                            v47_0 = 1;
                        }
                        int v9_0 = v14_0;
                        android.support.constraint.solver.widgets.ConstraintAnchor v8_0 = v14_0;
                        while (v9_0 != 0) {
                            android.support.constraint.solver.LinearSystem v1_16 = v9_0.mNextChainWidget[p64];
                            while ((v1_16 != null) && (v1_16.getVisibility() == 8)) {
                                v1_16 = v1_16.mNextChainWidget[p64];
                            }
                            if ((v9_0 == v14_0) || ((v9_0 == v0_1) || (v1_16 == null))) {
                                v33 = v8_0;
                                int v11 = v9_0;
                                android.support.constraint.solver.SolverVariable v20_0 = v1_16;
                            } else {
                                if (v1_16 == v0_1) {
                                    v1_16 = 0;
                                }
                                int v7_2 = v1_16;
                                int v6_4 = v9_0.mListAnchors[p65];
                                int v5_8 = v6_4.mSolverVariable;
                                // Both branches of the condition point to the same code.
                                // if (v6_4.mTarget == null) {
                                    android.support.constraint.solver.SolverVariable v20_3;
                                    android.support.constraint.solver.SolverVariable v55;
                                    int v2_20;
                                    int v4_9 = v8_0.mListAnchors[(p65 + 1)].mSolverVariable;
                                    int v18_1 = v6_4.getMargin();
                                    android.support.constraint.solver.LinearSystem v1_23 = v9_0.mListAnchors[(p65 + 1)].getMargin();
                                    if (v7_2 == 0) {
                                        v55 = 0;
                                        v2_20 = v9_0.mListAnchors[(p65 + 1)].mTarget;
                                        if (v2_20 != 0) {
                                            v55 = v2_20.mSolverVariable;
                                        }
                                        v20_3 = v9_0.mListAnchors[(p65 + 1)].mSolverVariable;
                                    } else {
                                        int v3_17;
                                        v2_20 = v7_2.mListAnchors[p65];
                                        if (v2_20.mTarget == null) {
                                            v3_17 = 0;
                                        } else {
                                            v3_17 = v2_20.mTarget.mSolverVariable;
                                        }
                                        v20_3 = v3_17;
                                        v55 = v2_20.mSolverVariable;
                                    }
                                    int v3_19 = v2_20;
                                    if (v3_19 != 0) {
                                        v1_23 += v3_19.getMargin();
                                    }
                                    int v21_2 = v1_23;
                                    if (v8_0 != null) {
                                        v18_1 += v8_0.mListAnchors[(p65 + 1)].getMargin();
                                    }
                                    android.support.constraint.solver.LinearSystem v1_27 = 4;
                                    if (v47_0 != 0) {
                                        v1_27 = 6;
                                    }
                                    if ((v5_8 == 0) || ((v4_9 == 0) || ((v55 == null) || (v20_3 == null)))) {
                                        android.support.constraint.solver.SolverVariable v29_0 = v7_2;
                                        v33 = v8_0;
                                        v11 = v9_0;
                                    } else {
                                        v11 = 5;
                                        v29_0 = v7_2;
                                        v33 = v8_0;
                                        v11 = v9_0;
                                        p63.addCentering(v5_8, v4_9, v18_1, 1056964608, v55, v20_3, v21_2, v1_27);
                                    }
                                    v20_0 = v29_0;
                                // }
                            }
                            if (v11.getVisibility() == 8) {
                                v8_0 = v33;
                            } else {
                                v8_0 = v11;
                            }
                            v9_0 = v20_0;
                        }
                        android.support.constraint.solver.SolverVariable v61;
                        android.support.constraint.solver.SolverVariable v59;
                        v11 = v9_0;
                        int v9_1 = v14_0.mListAnchors[p65];
                        android.support.constraint.solver.widgets.ConstraintAnchor v8_1 = v13.mListAnchors[p65].mTarget;
                        int v7_0 = v0_1.mListAnchors[(p65 + 1)];
                        int v6_1 = v52_0;
                        int v5_4 = v6_1.mListAnchors[(p65 + 1)].mTarget;
                        if (v8_1 == null) {
                            v59 = v5_4;
                            v60 = v6_1;
                            v61 = v7_0;
                            int v21 = v9_1;
                        } else {
                            if (v14_0 == v0_1) {
                                if (v5_4 == 0) {
                                } else {
                                    v59 = v5_4;
                                    v60 = v6_1;
                                    v61 = v7_0;
                                    v21 = v9_1;
                                    p63.addCentering(v9_1.mSolverVariable, v8_1.mSolverVariable, v9_1.getMargin(), 1056964608, v7_0.mSolverVariable, v5_4.mSolverVariable, v7_0.getMargin(), 5);
                                }
                            } else {
                                p63.addEquality(v9_1.mSolverVariable, v8_1.mSolverVariable, v9_1.getMargin(), 5);
                                v59 = v5_4;
                                v60 = v6_1;
                                v61 = v7_0;
                                v21 = v9_1;
                            }
                        }
                        android.support.constraint.solver.LinearSystem v1_14 = v59;
                        if ((v1_14 != null) && (v14_0 != v0_1)) {
                            int v2_13 = v61;
                            p63.addEquality(v2_13.mSolverVariable, v1_14.mSolverVariable, (- v2_13.getMargin()), 5);
                        }
                    }
                }
            } else {
                if ((p66.mWidgetsMatchCount <= 0) || (p66.mWidgetsCount != p66.mWidgetsMatchCount)) {
                    int v47_1 = 0;
                } else {
                    v47_1 = 1;
                }
                int v9_4 = v10_1;
                android.support.constraint.solver.widgets.ConstraintAnchor v8_5 = v10_1;
                while (v9_4 != 0) {
                    int v7_4 = v9_4.mNextChainWidget[p64];
                    while ((v7_4 != 0) && (v7_4.getVisibility() == 8)) {
                        v7_4 = v7_4.mNextChainWidget[p64];
                    }
                    if ((v7_4 == 0) && (v9_4 != v0_1)) {
                        android.support.constraint.solver.SolverVariable v34 = v7_4;
                        int v36_0 = v8_5;
                        android.support.constraint.solver.LinearSystem v53_2 = v10_1;
                        int v52_2 = v14_3;
                        int v14_2 = v9_4;
                    } else {
                        android.support.constraint.solver.LinearSystem v1_40;
                        int v6_6 = v9_4.mListAnchors[p65];
                        int v5_10 = v6_6.mSolverVariable;
                        if (v6_6.mTarget == null) {
                            v1_40 = 0;
                        } else {
                            v1_40 = v6_6.mTarget.mSolverVariable;
                        }
                        if (v8_5 == v9_4) {
                            if ((v9_4 == v10_1) && (v8_5 == v9_4)) {
                                int v3_29;
                                if (v13.mListAnchors[p65].mTarget == null) {
                                    v3_29 = 0;
                                } else {
                                    v3_29 = v13.mListAnchors[p65].mTarget.mSolverVariable;
                                }
                                v1_40 = v3_29;
                            }
                        } else {
                            v1_40 = v8_5.mListAnchors[(p65 + 1)].mSolverVariable;
                        }
                        int v22_2;
                        int v4_13;
                        int v21_6;
                        int v18_2 = v1_40;
                        int v3_35 = 0;
                        android.support.constraint.solver.SolverVariable v20_4 = v6_6.getMargin();
                        int v2_33 = v9_4.mListAnchors[(p65 + 1)].getMargin();
                        if (v7_4 == 0) {
                            android.support.constraint.solver.LinearSystem v1_45 = v14_3.mListAnchors[(p65 + 1)].mTarget;
                            if (v1_45 != null) {
                                v3_35 = v1_45.mSolverVariable;
                            }
                            v22_2 = v9_4.mListAnchors[(p65 + 1)].mSolverVariable;
                            v21_6 = v3_35;
                            v4_13 = v1_45;
                        } else {
                            android.support.constraint.solver.LinearSystem v1_50 = v7_4.mListAnchors[p65];
                            v22_2 = v9_4.mListAnchors[(p65 + 1)].mSolverVariable;
                            v21_6 = v1_50.mSolverVariable;
                            v4_13 = v1_50;
                        }
                        if (v4_13 != 0) {
                            v2_33 += v4_13.getMargin();
                        }
                        int v23_2 = v2_33;
                        if (v8_5 != null) {
                            v20_4 += v8_5.mListAnchors[(p65 + 1)].getMargin();
                        }
                        if ((v5_10 == 0) || ((v18_2 == 0) || ((v21_6 == 0) || (v22_2 == 0)))) {
                            v34 = v7_4;
                            v36_0 = v8_5;
                            v53_2 = v10_1;
                            v52_2 = v14_3;
                            v14_2 = v9_4;
                        } else {
                            android.support.constraint.solver.LinearSystem v1_58 = v20_4;
                            if (v9_4 == v10_1) {
                                v1_58 = v10_1.mListAnchors[p65].getMargin();
                            }
                            int v26_0 = v1_58;
                            android.support.constraint.solver.LinearSystem v1_59 = v23_2;
                            if (v9_4 == v0_1) {
                                v1_59 = v0_1.mListAnchors[(p65 + 1)].getMargin();
                            }
                            android.support.constraint.solver.LinearSystem v1_60 = 4;
                            if (v47_1 != 0) {
                                v1_60 = 6;
                            }
                            v52_2 = v14_3;
                            v53_2 = v10_1;
                            v34 = v7_4;
                            v36_0 = v8_5;
                            v14_2 = v9_4;
                            p63.addCentering(v5_10, v18_2, v26_0, 1056964608, v21_6, v22_2, v1_59, v1_60);
                        }
                    }
                    if (v14_2.getVisibility() == 8) {
                        v8_5 = v36_0;
                    } else {
                        v8_5 = v14_2;
                    }
                    v9_4 = v34;
                    v14_3 = v52_2;
                    v10_1 = v53_2;
                }
                v10_2 = p63;
                v60 = v14_3;
                v14_0 = v10_1;
            }
        } else {
            if ((v9_5 != v8_8) && (v15_1 == 0)) {
                v0_1 = v8_8;
                v10_1 = v9_5;
            } else {
                int v3_48;
                android.support.constraint.solver.LinearSystem v1_68 = v13.mListAnchors[p65];
                int v2_42 = v14_3.mListAnchors[(p65 + 1)];
                if (v13.mListAnchors[p65].mTarget == null) {
                    v3_48 = 0;
                } else {
                    v3_48 = v13.mListAnchors[p65].mTarget.mSolverVariable;
                }
                int v3_55;
                int v18_3 = v3_48;
                if (v14_3.mListAnchors[(p65 + 1)].mTarget == null) {
                    v3_55 = 0;
                } else {
                    v3_55 = v14_3.mListAnchors[(p65 + 1)].mTarget.mSolverVariable;
                }
                int v21_8 = v3_55;
                if (v9_5 == v8_8) {
                    v1_68 = v9_5.mListAnchors[p65];
                    v2_42 = v9_5.mListAnchors[(p65 + 1)];
                }
                android.support.constraint.solver.LinearSystem v10_4;
                int v6_8 = v1_68;
                int v5_12 = v2_42;
                if ((v18_3 == 0) || (v21_8 == 0)) {
                    v0_1 = v8_8;
                    v10_4 = v9_5;
                } else {
                    android.support.constraint.solver.LinearSystem v1_69;
                    if (p64 != 0) {
                        v1_69 = v7_9.mVerticalBiasPercent;
                    } else {
                        v1_69 = v7_9.mHorizontalBiasPercent;
                    }
                    int v32 = v5_2;
                    v0_1 = v8_8;
                    v10_4 = v9_5;
                    p63.addCentering(v6_8.mSolverVariable, v18_3, v6_8.getMargin(), v1_69, v21_8, v5_12.mSolverVariable, v5_12.getMargin(), 5);
                }
                v60 = v14_3;
                v14_0 = v10_4;
                v10_2 = p63;
            }
        }
        if (((v24 != 0) || (v16_1 != 0)) && (v14_0 != 0)) {
            int v3_65;
            android.support.constraint.solver.LinearSystem v1_72 = v14_0.mListAnchors[p65];
            int v2_46 = v0_1.mListAnchors[(p65 + 1)];
            if (v1_72.mTarget == null) {
                v3_65 = 0;
            } else {
                v3_65 = v1_72.mTarget.mSolverVariable;
            }
            int v3_68;
            int v18_4 = v3_65;
            if (v2_46.mTarget == null) {
                v3_68 = 0;
            } else {
                v3_68 = v2_46.mTarget.mSolverVariable;
            }
            int v9_8 = v60;
            if (v9_8 != v0_1) {
                int v5_16;
                int v4_21 = v9_8.mListAnchors[(p65 + 1)];
                if (v4_21.mTarget == null) {
                    v5_16 = 0;
                } else {
                    v5_16 = v4_21.mTarget.mSolverVariable;
                }
                v3_68 = v5_16;
            }
            int v21_9 = v3_68;
            if (v14_0 == v0_1) {
                v1_72 = v14_0.mListAnchors[p65];
                v2_46 = v14_0.mListAnchors[(p65 + 1)];
            }
            android.support.constraint.solver.widgets.ConstraintAnchor v8_9 = v1_72;
            int v7_7 = v2_46;
            if ((v18_4 != 0) && (v21_9 != 0)) {
                int v23_5 = v8_9.getMargin();
                if (v0_1 == null) {
                    v0_1 = v9_8;
                }
                v10_2.addCentering(v8_9.mSolverVariable, v18_4, v23_5, 1056964608, v21_9, v7_7.mSolverVariable, v0_1.mListAnchors[(p65 + 1)].getMargin(), 5);
            }
        }
        return;
    }
}
