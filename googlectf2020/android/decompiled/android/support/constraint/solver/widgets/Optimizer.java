package android.support.constraint.solver.widgets;
public class Optimizer {
    static final int FLAG_CHAIN_DANGLING = 1;
    static final int FLAG_RECOMPUTE_BOUNDS = 2;
    static final int FLAG_USE_OPTIMIZE = 0;
    public static final int OPTIMIZATION_BARRIER = 2;
    public static final int OPTIMIZATION_CHAIN = 4;
    public static final int OPTIMIZATION_DIMENSIONS = 8;
    public static final int OPTIMIZATION_DIRECT = 1;
    public static final int OPTIMIZATION_GROUPS = 32;
    public static final int OPTIMIZATION_NONE = 0;
    public static final int OPTIMIZATION_RATIO = 16;
    public static final int OPTIMIZATION_STANDARD = 7;
    static boolean[] flags;

    static Optimizer()
    {
        boolean[] v0_1 = new boolean[3];
        android.support.constraint.solver.widgets.Optimizer.flags = v0_1;
        return;
    }

    public Optimizer()
    {
        return;
    }

    static void analyze(int p16, android.support.constraint.solver.widgets.ConstraintWidget p17)
    {
        int v5_1;
        p17.updateResolutionNodes();
        android.support.constraint.solver.widgets.ResolutionAnchor v1_1 = p17.mLeft.getResolutionNode();
        android.support.constraint.solver.widgets.ResolutionAnchor v2_1 = p17.mTop.getResolutionNode();
        android.support.constraint.solver.widgets.ResolutionAnchor v3_0 = p17.mRight.getResolutionNode();
        android.support.constraint.solver.widgets.ResolutionAnchor v4_1 = p17.mBottom.getResolutionNode();
        if ((p16 & 8) != 8) {
            v5_1 = 0;
        } else {
            v5_1 = 1;
        }
        if ((p17.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || (!android.support.constraint.solver.widgets.Optimizer.optimizableMatchConstraint(p17, 0))) {
            int v9_3 = 0;
        } else {
            v9_3 = 1;
        }
        if ((v1_1.type != 4) && (v3_0.type != 4)) {
            if ((p17.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED) && ((v9_3 == 0) || (p17.getVisibility() != 8))) {
                if (v9_3 != 0) {
                    float v7_41 = p17.getWidth();
                    v1_1.setType(1);
                    v3_0.setType(1);
                    if ((p17.mLeft.mTarget != null) || (p17.mRight.mTarget != null)) {
                        if ((p17.mLeft.mTarget == null) || (p17.mRight.mTarget != null)) {
                            if ((p17.mLeft.mTarget != null) || (p17.mRight.mTarget == null)) {
                                if ((p17.mLeft.mTarget != null) && (p17.mRight.mTarget != null)) {
                                    if (v5_1 != 0) {
                                        p17.getResolutionWidth().addDependent(v1_1);
                                        p17.getResolutionWidth().addDependent(v3_0);
                                    }
                                    if (p17.mDimensionRatio != 0) {
                                        v1_1.setType(2);
                                        v3_0.setType(2);
                                        v1_1.setOpposite(v3_0, ((float) (- v7_41)));
                                        v3_0.setOpposite(v1_1, ((float) v7_41));
                                        p17.setWidth(v7_41);
                                    } else {
                                        v1_1.setType(3);
                                        v3_0.setType(3);
                                        v1_1.setOpposite(v3_0, 0);
                                        v3_0.setOpposite(v1_1, 0);
                                    }
                                }
                            } else {
                                if (v5_1 == 0) {
                                    v1_1.dependsOn(v3_0, (- v7_41));
                                } else {
                                    v1_1.dependsOn(v3_0, -1, p17.getResolutionWidth());
                                }
                            }
                        } else {
                            if (v5_1 == 0) {
                                v3_0.dependsOn(v1_1, v7_41);
                            } else {
                                v3_0.dependsOn(v1_1, 1, p17.getResolutionWidth());
                            }
                        }
                    } else {
                        if (v5_1 == 0) {
                            v3_0.dependsOn(v1_1, v7_41);
                        } else {
                            v3_0.dependsOn(v1_1, 1, p17.getResolutionWidth());
                        }
                    }
                }
            } else {
                if ((p17.mLeft.mTarget != null) || (p17.mRight.mTarget != null)) {
                    if ((p17.mLeft.mTarget == null) || (p17.mRight.mTarget != null)) {
                        if ((p17.mLeft.mTarget != null) || (p17.mRight.mTarget == null)) {
                            if ((p17.mLeft.mTarget != null) && (p17.mRight.mTarget != null)) {
                                v1_1.setType(2);
                                v3_0.setType(2);
                                if (v5_1 == 0) {
                                    v1_1.setOpposite(v3_0, ((float) (- p17.getWidth())));
                                    v3_0.setOpposite(v1_1, ((float) p17.getWidth()));
                                } else {
                                    p17.getResolutionWidth().addDependent(v1_1);
                                    p17.getResolutionWidth().addDependent(v3_0);
                                    v1_1.setOpposite(v3_0, -1, p17.getResolutionWidth());
                                    v3_0.setOpposite(v1_1, 1, p17.getResolutionWidth());
                                }
                            }
                        } else {
                            v1_1.setType(1);
                            v3_0.setType(1);
                            v1_1.dependsOn(v3_0, (- p17.getWidth()));
                            if (v5_1 == 0) {
                                v1_1.dependsOn(v3_0, (- p17.getWidth()));
                            } else {
                                v1_1.dependsOn(v3_0, -1, p17.getResolutionWidth());
                            }
                        }
                    } else {
                        v1_1.setType(1);
                        v3_0.setType(1);
                        if (v5_1 == 0) {
                            v3_0.dependsOn(v1_1, p17.getWidth());
                        } else {
                            v3_0.dependsOn(v1_1, 1, p17.getResolutionWidth());
                        }
                    }
                } else {
                    v1_1.setType(1);
                    v3_0.setType(1);
                    if (v5_1 == 0) {
                        v3_0.dependsOn(v1_1, p17.getWidth());
                    } else {
                        v3_0.dependsOn(v1_1, 1, p17.getResolutionWidth());
                    }
                }
            }
        }
        if ((p17.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || (!android.support.constraint.solver.widgets.Optimizer.optimizableMatchConstraint(p17, 1))) {
            int v15 = 0;
        } else {
            v15 = 1;
        }
        float v7_38 = v15;
        if ((v2_1.type != 4) && (v4_1.type != 4)) {
            if ((p17.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED) && ((v7_38 == 0) || (p17.getVisibility() != 8))) {
                if (v7_38 != 0) {
                    android.support.constraint.solver.widgets.ResolutionAnchor v6_1 = p17.getHeight();
                    v2_1.setType(1);
                    v4_1.setType(1);
                    if ((p17.mTop.mTarget != null) || (p17.mBottom.mTarget != null)) {
                        if ((p17.mTop.mTarget == null) || (p17.mBottom.mTarget != null)) {
                            if ((p17.mTop.mTarget != null) || (p17.mBottom.mTarget == null)) {
                                if ((p17.mTop.mTarget != null) && (p17.mBottom.mTarget != null)) {
                                    if (v5_1 != 0) {
                                        p17.getResolutionHeight().addDependent(v2_1);
                                        p17.getResolutionWidth().addDependent(v4_1);
                                    }
                                    if (p17.mDimensionRatio != 0) {
                                        v2_1.setType(2);
                                        v4_1.setType(2);
                                        v2_1.setOpposite(v4_1, ((float) (- v6_1)));
                                        v4_1.setOpposite(v2_1, ((float) v6_1));
                                        p17.setHeight(v6_1);
                                        if (p17.mBaselineDistance > 0) {
                                            p17.mBaseline.getResolutionNode().dependsOn(1, v2_1, p17.mBaselineDistance);
                                        }
                                    } else {
                                        v2_1.setType(3);
                                        v4_1.setType(3);
                                        v2_1.setOpposite(v4_1, 0);
                                        v4_1.setOpposite(v2_1, 0);
                                    }
                                }
                            } else {
                                if (v5_1 == 0) {
                                    v2_1.dependsOn(v4_1, (- v6_1));
                                } else {
                                    v2_1.dependsOn(v4_1, -1, p17.getResolutionHeight());
                                }
                            }
                        } else {
                            if (v5_1 == 0) {
                                v4_1.dependsOn(v2_1, v6_1);
                            } else {
                                v4_1.dependsOn(v2_1, 1, p17.getResolutionHeight());
                            }
                        }
                    } else {
                        if (v5_1 == 0) {
                            v4_1.dependsOn(v2_1, v6_1);
                        } else {
                            v4_1.dependsOn(v2_1, 1, p17.getResolutionHeight());
                        }
                    }
                }
            } else {
                if ((p17.mTop.mTarget != null) || (p17.mBottom.mTarget != null)) {
                    if ((p17.mTop.mTarget == null) || (p17.mBottom.mTarget != null)) {
                        if ((p17.mTop.mTarget != null) || (p17.mBottom.mTarget == null)) {
                            if ((p17.mTop.mTarget != null) && (p17.mBottom.mTarget != null)) {
                                v2_1.setType(2);
                                v4_1.setType(2);
                                if (v5_1 == 0) {
                                    v2_1.setOpposite(v4_1, ((float) (- p17.getHeight())));
                                    v4_1.setOpposite(v2_1, ((float) p17.getHeight()));
                                } else {
                                    v2_1.setOpposite(v4_1, -1, p17.getResolutionHeight());
                                    v4_1.setOpposite(v2_1, 1, p17.getResolutionHeight());
                                    p17.getResolutionHeight().addDependent(v2_1);
                                    p17.getResolutionWidth().addDependent(v4_1);
                                }
                                if (p17.mBaselineDistance > 0) {
                                    p17.mBaseline.getResolutionNode().dependsOn(1, v2_1, p17.mBaselineDistance);
                                }
                            }
                        } else {
                            v2_1.setType(1);
                            v4_1.setType(1);
                            if (v5_1 == 0) {
                                v2_1.dependsOn(v4_1, (- p17.getHeight()));
                            } else {
                                v2_1.dependsOn(v4_1, -1, p17.getResolutionHeight());
                            }
                            if (p17.mBaselineDistance > 0) {
                                p17.mBaseline.getResolutionNode().dependsOn(1, v2_1, p17.mBaselineDistance);
                            }
                        }
                    } else {
                        v2_1.setType(1);
                        v4_1.setType(1);
                        if (v5_1 == 0) {
                            v4_1.dependsOn(v2_1, p17.getHeight());
                        } else {
                            v4_1.dependsOn(v2_1, 1, p17.getResolutionHeight());
                        }
                        if (p17.mBaselineDistance > 0) {
                            p17.mBaseline.getResolutionNode().dependsOn(1, v2_1, p17.mBaselineDistance);
                        }
                    }
                } else {
                    v2_1.setType(1);
                    v4_1.setType(1);
                    if (v5_1 == 0) {
                        v4_1.dependsOn(v2_1, p17.getHeight());
                    } else {
                        v4_1.dependsOn(v2_1, 1, p17.getResolutionHeight());
                    }
                    if (p17.mBaseline.mTarget != null) {
                        p17.mBaseline.getResolutionNode().setType(1);
                        v2_1.dependsOn(1, p17.mBaseline.getResolutionNode(), (- p17.mBaselineDistance));
                    }
                }
            }
        }
        return;
    }

    static boolean applyChainOptimized(android.support.constraint.solver.widgets.ConstraintWidgetContainer p43, android.support.constraint.solver.LinearSystem p44, int p45, int p46, android.support.constraint.solver.widgets.ChainHead p47)
    {
        int v1_0 = p45;
        float v3_2 = p47.mFirst;
        android.support.constraint.solver.widgets.ConstraintWidget v4 = p47.mLast;
        android.support.constraint.solver.widgets.ConstraintWidget v5 = p47.mFirstVisibleWidget;
        long v6_33 = p47.mLastVisibleWidget;
        float v7_27 = p47.mHead;
        int v10_0 = 0;
        float v12 = p47.mTotalWeight;
        android.support.constraint.solver.LinearSystem v13_0 = p47.mFirstMatchConstraintWidget;
        // Both branches of the condition point to the same code.
        // if (p43.mListDimensionBehaviors[p45] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
            android.support.constraint.solver.widgets.ConstraintWidget v2_31;
            int v22;
            int v8_3;
            float v18 = 0;
            if (p45 != 0) {
                android.support.constraint.solver.widgets.ConstraintWidget v2_16;
                if (v7_27.mVerticalChainStyle != 0) {
                    v2_16 = 0;
                } else {
                    v2_16 = 1;
                }
                android.support.constraint.solver.widgets.ConstraintWidget v2_24;
                v8_3 = v2_16;
                if (v7_27.mVerticalChainStyle != 1) {
                    v2_24 = 0;
                } else {
                    v2_24 = 1;
                }
                if (v7_27.mVerticalChainStyle != 2) {
                    v2_31 = 0;
                } else {
                    v2_31 = 1;
                }
                v22 = v2_24;
            } else {
                float v9_30;
                if (v7_27.mHorizontalChainStyle != 0) {
                    v9_30 = 0;
                } else {
                    v9_30 = 1;
                }
                android.support.constraint.solver.widgets.ConstraintWidget v2_35;
                v8_3 = v9_30;
                if (v7_27.mHorizontalChainStyle != 1) {
                    v2_35 = 0;
                } else {
                    v2_35 = 1;
                }
                v22 = v2_35;
                if (v7_27.mHorizontalChainStyle != 2) {
                    v2_31 = 0;
                } else {
                    v2_31 = 1;
                }
            }
            float v18_1 = 0;
            float v7_16 = 0;
            android.support.constraint.solver.widgets.ConstraintWidget v11_22 = v3_2;
            float v15_1 = 0;
            float v9_38 = 0;
            while (v10_0 == 0) {
                if (v11_22.getVisibility() != 8) {
                    v9_38++;
                    if (p45 != 0) {
                        v15_1 += ((float) v11_22.getHeight());
                    } else {
                        v15_1 += ((float) v11_22.getWidth());
                    }
                    if (v11_22 != v5) {
                        v15_1 += ((float) v11_22.mListAnchors[p46].getMargin());
                    }
                    if (v11_22 != v6_33) {
                        v15_1 += ((float) v11_22.mListAnchors[(p46 + 1)].getMargin());
                    }
                    v18_1 = ((v18_1 + ((float) v11_22.mListAnchors[p46].getMargin())) + ((float) v11_22.mListAnchors[(p46 + 1)].getMargin()));
                }
                if ((v11_22.getVisibility() != 8) && (v11_22.mListDimensionBehaviors[p45] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT)) {
                    v7_16++;
                    if (p45 != 0) {
                        if (v11_22.mMatchConstraintDefaultHeight == 0) {
                            if ((v11_22.mMatchConstraintMinHeight != 0) || (v11_22.mMatchConstraintMaxHeight != 0)) {
                                return 0;
                            }
                        } else {
                            return 0;
                        }
                    } else {
                        if (v11_22.mMatchConstraintDefaultWidth == 0) {
                            if ((v11_22.mMatchConstraintMinWidth != 0) || (v11_22.mMatchConstraintMaxWidth != 0)) {
                                return 0;
                            }
                        } else {
                            return 0;
                        }
                    }
                    if (v11_22.mDimensionRatio != 0) {
                        return 0;
                    }
                }
                float v7_17;
                android.support.constraint.solver.widgets.ConstraintAnchor v28;
                android.support.constraint.solver.widgets.ConstraintWidget v17_2;
                float v9_54 = v11_22.mListAnchors[(p46 + 1)].mTarget;
                if (v9_54 == 0) {
                    v28 = v7_16;
                    v7_17 = 0;
                    v17_2 = v7_17;
                } else {
                    android.support.constraint.solver.LinearSystem v13_11 = v9_54.mOwner;
                    v28 = v7_16;
                    if ((v13_11.mListAnchors[p46].mTarget != null) && (v13_11.mListAnchors[p46].mTarget.mOwner == v11_22)) {
                        v17_2 = v13_11;
                    } else {
                        v7_17 = 0;
                    }
                }
                if (v17_2 == null) {
                    v10_0 = 1;
                } else {
                    v11_22 = v17_2;
                }
                v7_16 = v28;
            }
            int v10_25 = v3_2.mListAnchors[p46].getResolutionNode();
            android.support.constraint.solver.LinearSystem v13_8 = v4.mListAnchors[(p46 + 1)].getResolutionNode();
            if (v10_25.target == null) {
                android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v32 = v6_33;
                android.support.constraint.solver.Metrics v33 = v8_3;
                long v35 = v13_8;
                float v9 = v3_2;
            } else {
                if (v13_8.target != null) {
                    if (v10_25.target.state != 1) {
                        v32 = v6_33;
                        v33 = v8_3;
                        v35 = v13_8;
                        v9 = v3_2;
                    } else {
                        if (v13_8.target.state == 1) {
                            if ((v7_16 <= 0) || (v7_16 == v9_38)) {
                                int v0_2 = 0;
                                if ((v2_31 != null) || ((v8_3 != 0) || (v22 != 0))) {
                                    if (v5 != null) {
                                        v0_2 = ((float) v5.mListAnchors[p46].getMargin());
                                    }
                                    if (v6_33 != 0) {
                                        v0_2 += ((float) v6_33.mListAnchors[(p46 + 1)].getMargin());
                                    }
                                }
                                float v23_2;
                                android.support.constraint.solver.widgets.ResolutionAnchor v14_10 = v10_25.target.resolvedOffset;
                                android.support.constraint.solver.widgets.ConstraintWidget v2_1 = v13_8.target.resolvedOffset;
                                if (v14_10 >= v2_1) {
                                    v23_2 = ((v14_10 - v2_1) - v15_1);
                                } else {
                                    v23_2 = ((v2_1 - v14_10) - v15_1);
                                }
                                if ((v7_16 <= 0) || (v7_16 != v9_38)) {
                                    android.support.constraint.solver.widgets.ConstraintWidget v2_4;
                                    int v8_0;
                                    v32 = v6_33;
                                    android.support.constraint.solver.widgets.ConstraintWidget v34_0 = v9_38;
                                    float v36_0 = v14_10;
                                    if (v23_2 >= 0) {
                                        v2_4 = v2_31;
                                        v8_0 = v8_3;
                                    } else {
                                        v8_0 = 0;
                                        v22 = 0;
                                        v2_4 = 1;
                                    }
                                    if (v2_4 == null) {
                                        android.support.constraint.solver.widgets.ConstraintWidget v37_0 = v3_2;
                                        if ((v8_0 == 0) && (v22 == 0)) {
                                            long v40 = v34_0;
                                        } else {
                                            if (v8_0 == 0) {
                                                if (v22 != 0) {
                                                    v23_2 -= v0_2;
                                                }
                                            } else {
                                                v23_2 -= v0_2;
                                            }
                                            long v6_0;
                                            float v3_1 = (v23_2 / ((float) (v34_0 + 1)));
                                            if (v22 == 0) {
                                                v6_0 = v34_0;
                                            } else {
                                                v6_0 = v34_0;
                                                if (v6_0 <= 1) {
                                                    v3_1 = (v23_2 / 1073741824);
                                                } else {
                                                    v3_1 = (v23_2 / ((float) (v6_0 - 1)));
                                                }
                                            }
                                            float v7_3 = v36_0;
                                            if (v37_0.getVisibility() != 8) {
                                                v7_3 += v3_1;
                                            }
                                            if ((v22 != 0) && (v6_0 > 1)) {
                                                v7_3 = (v36_0 + ((float) v5.mListAnchors[p46].getMargin()));
                                            }
                                            if ((v8_0 != 0) && (v5 != null)) {
                                                v7_3 += ((float) v5.mListAnchors[p46].getMargin());
                                            }
                                            android.support.constraint.solver.widgets.ConstraintWidget v11_11 = v37_0;
                                            float v23_4 = v7_3;
                                            while (v11_11 != null) {
                                                if (android.support.constraint.solver.LinearSystem.sMetrics == null) {
                                                    v40 = v6_0;
                                                } else {
                                                    android.support.constraint.solver.widgets.ConstraintWidget v2_9 = android.support.constraint.solver.LinearSystem.sMetrics;
                                                    v40 = v6_0;
                                                    v2_9.nonresolvedWidgets = (v2_9.nonresolvedWidgets - 1);
                                                    android.support.constraint.solver.widgets.ConstraintWidget v2_10 = android.support.constraint.solver.LinearSystem.sMetrics;
                                                    v2_10.resolvedWidgets = (v2_10.resolvedWidgets + 1);
                                                    android.support.constraint.solver.widgets.ConstraintWidget v2_12 = android.support.constraint.solver.LinearSystem.sMetrics;
                                                    v2_12.chainConnectionResolved = (v2_12.chainConnectionResolved + 1);
                                                }
                                                int v41;
                                                android.support.constraint.solver.widgets.ConstraintWidget v2_14 = v11_11.mNextChainWidget[v1_0];
                                                if ((v2_14 == null) && (v11_11 != v4)) {
                                                    v41 = v0_2;
                                                } else {
                                                    long v6_7;
                                                    if (v1_0 != 0) {
                                                        v6_7 = ((float) v11_11.getHeight());
                                                    } else {
                                                        v6_7 = ((float) v11_11.getWidth());
                                                    }
                                                    if (v11_11 != v5) {
                                                        v23_4 += ((float) v11_11.mListAnchors[p46].getMargin());
                                                    }
                                                    float v7_10 = v23_4;
                                                    v41 = v0_2;
                                                    v11_11.mListAnchors[p46].getResolutionNode().resolve(v10_25.resolvedTarget, v7_10);
                                                    v11_11.mListAnchors[(p46 + 1)].getResolutionNode().resolve(v10_25.resolvedTarget, (v7_10 + v6_7));
                                                    v11_11.mListAnchors[p46].getResolutionNode().addResolvedValue(p44);
                                                    v11_11.mListAnchors[(p46 + 1)].getResolutionNode().addResolvedValue(p44);
                                                    v23_4 = (v7_10 + (((float) v11_11.mListAnchors[(p46 + 1)].getMargin()) + v6_7));
                                                    if ((v2_14 != null) && (v2_14.getVisibility() != 8)) {
                                                        v23_4 += v3_1;
                                                    }
                                                }
                                                v11_11 = v2_14;
                                                v6_0 = v40;
                                                v0_2 = v41;
                                                v1_0 = p45;
                                            }
                                            v40 = v6_0;
                                        }
                                    } else {
                                        android.support.constraint.solver.widgets.ConstraintWidget v11_12 = v3_2;
                                        float v23_6 = (v36_0 + (v3_2.getBiasPercent(p45) * (v23_2 - v0_2)));
                                        while (v11_12 != null) {
                                            android.support.constraint.solver.widgets.ConstraintAnchor v39;
                                            android.support.constraint.solver.widgets.ConstraintWidget v37_1;
                                            android.support.constraint.solver.Metrics v38;
                                            if (android.support.constraint.solver.LinearSystem.sMetrics == null) {
                                                v38 = v2_4;
                                                v37_1 = v3_2;
                                                v39 = v7_16;
                                            } else {
                                                long v6_10 = android.support.constraint.solver.LinearSystem.sMetrics;
                                                v38 = v2_4;
                                                v37_1 = v3_2;
                                                v6_10.nonresolvedWidgets = (v6_10.nonresolvedWidgets - 1);
                                                android.support.constraint.solver.widgets.ConstraintWidget v2_19 = android.support.constraint.solver.LinearSystem.sMetrics;
                                                v39 = v7_16;
                                                v2_19.resolvedWidgets = (v2_19.resolvedWidgets + 1);
                                                android.support.constraint.solver.widgets.ConstraintWidget v2_20 = android.support.constraint.solver.LinearSystem.sMetrics;
                                                v2_20.chainConnectionResolved = (v2_20.chainConnectionResolved + 1);
                                            }
                                            android.support.constraint.solver.widgets.ConstraintWidget v17_0 = v11_12.mNextChainWidget[p45];
                                            if ((v17_0 != null) || (v11_12 == v4)) {
                                                android.support.constraint.solver.widgets.ConstraintWidget v2_22;
                                                if (p45 != 0) {
                                                    v2_22 = ((float) v11_12.getHeight());
                                                } else {
                                                    v2_22 = ((float) v11_12.getWidth());
                                                }
                                                float v3_9 = (v23_6 + ((float) v11_12.mListAnchors[p46].getMargin()));
                                                v11_12.mListAnchors[p46].getResolutionNode().resolve(v10_25.resolvedTarget, v3_9);
                                                v11_12.mListAnchors[(p46 + 1)].getResolutionNode().resolve(v10_25.resolvedTarget, (v3_9 + v2_22));
                                                v11_12.mListAnchors[p46].getResolutionNode().addResolvedValue(p44);
                                                v11_12.mListAnchors[(p46 + 1)].getResolutionNode().addResolvedValue(p44);
                                                v23_6 = ((v3_9 + v2_22) + ((float) v11_12.mListAnchors[(p46 + 1)].getMargin()));
                                            }
                                            v11_12 = v17_0;
                                            v3_2 = v37_1;
                                            v2_4 = v38;
                                            v7_16 = v39;
                                        }
                                        v39 = v7_16;
                                        v9 = v3_2;
                                    }
                                    return 1;
                                } else {
                                    if (v11_22.getParent() == null) {
                                        v32 = v6_33;
                                    } else {
                                        if (v11_22.getParent().mListDimensionBehaviors[p45] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                                            return 0;
                                        }
                                    }
                                    float v23_8 = ((v23_2 + v15_1) - v18_1);
                                    long v6_32 = v3_2;
                                    android.support.constraint.solver.widgets.ConstraintWidget v2_29 = v14_10;
                                    while (v6_32 != 0) {
                                        android.support.constraint.solver.widgets.ConstraintWidget v34_1;
                                        android.support.constraint.solver.Metrics v33_1;
                                        float v36_1;
                                        if (android.support.constraint.solver.LinearSystem.sMetrics == null) {
                                            v33_1 = v8_3;
                                            v34_1 = v9_38;
                                            v35 = v13_8;
                                            v36_1 = v14_10;
                                        } else {
                                            android.support.constraint.solver.widgets.ConstraintWidget v11_14 = android.support.constraint.solver.LinearSystem.sMetrics;
                                            v33_1 = v8_3;
                                            v34_1 = v9_38;
                                            v11_14.nonresolvedWidgets = (v11_14.nonresolvedWidgets - 1);
                                            int v8_7 = android.support.constraint.solver.LinearSystem.sMetrics;
                                            v35 = v13_8;
                                            v36_1 = v14_10;
                                            v8_7.resolvedWidgets = (v8_7.resolvedWidgets + 1);
                                            int v8_8 = android.support.constraint.solver.LinearSystem.sMetrics;
                                            v8_8.chainConnectionResolved = (v8_8.chainConnectionResolved + 1);
                                        }
                                        android.support.constraint.solver.widgets.ConstraintWidget v17_1 = v6_32.mNextChainWidget[p45];
                                        if ((v17_1 != null) || (v6_32 == v4)) {
                                            int v8_11 = (v23_8 / ((float) v7_16));
                                            if (v12 > 0) {
                                                if (v6_32.mWeight[p45] != -1082130432) {
                                                    v8_11 = ((v6_32.mWeight[p45] * v23_8) / v12);
                                                } else {
                                                    v8_11 = 0;
                                                }
                                            }
                                            if (v6_32.getVisibility() == 8) {
                                                v8_11 = 0;
                                            }
                                            android.support.constraint.solver.widgets.ConstraintWidget v2_32 = (v2_29 + ((float) v6_32.mListAnchors[p46].getMargin()));
                                            v6_32.mListAnchors[p46].getResolutionNode().resolve(v10_25.resolvedTarget, v2_32);
                                            v6_32.mListAnchors[(p46 + 1)].getResolutionNode().resolve(v10_25.resolvedTarget, (v2_32 + v8_11));
                                            v6_32.mListAnchors[p46].getResolutionNode().addResolvedValue(p44);
                                            v6_32.mListAnchors[(p46 + 1)].getResolutionNode().addResolvedValue(p44);
                                            v2_29 = ((v2_32 + v8_11) + ((float) v6_32.mListAnchors[(p46 + 1)].getMargin()));
                                        }
                                        v6_32 = v17_1;
                                        v8_3 = v33_1;
                                        v9_38 = v34_1;
                                        v13_8 = v35;
                                        v14_10 = v36_1;
                                    }
                                    android.support.constraint.solver.widgets.ConstraintWidget v34 = v9_38;
                                    float v36 = v14_10;
                                    return 1;
                                }
                            } else {
                                return 0;
                            }
                        } else {
                            v32 = v6_33;
                            v33 = v8_3;
                            v35 = v13_8;
                            v9 = v3_2;
                        }
                    }
                    return 0;
                } else {
                    v32 = v6_33;
                    v33 = v8_3;
                    v35 = v13_8;
                    v9 = v3_2;
                }
            }
            return 0;
        // }
    }

    static void checkMatchParent(android.support.constraint.solver.widgets.ConstraintWidgetContainer p5, android.support.constraint.solver.LinearSystem p6, android.support.constraint.solver.widgets.ConstraintWidget p7)
    {
        if ((p5.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) && (p7.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_PARENT)) {
            int v0_2 = p7.mLeft.mMargin;
            int v1_2 = (p5.getWidth() - p7.mRight.mMargin);
            p7.mLeft.mSolverVariable = p6.createObjectVariable(p7.mLeft);
            p7.mRight.mSolverVariable = p6.createObjectVariable(p7.mRight);
            p6.addEquality(p7.mLeft.mSolverVariable, v0_2);
            p6.addEquality(p7.mRight.mSolverVariable, v1_2);
            p7.mHorizontalResolution = 2;
            p7.setHorizontalDimension(v0_2, v1_2);
        }
        if ((p5.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) && (p7.mListDimensionBehaviors[1] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_PARENT)) {
            int v0_9 = p7.mTop.mMargin;
            int v1_6 = (p5.getHeight() - p7.mBottom.mMargin);
            p7.mTop.mSolverVariable = p6.createObjectVariable(p7.mTop);
            p7.mBottom.mSolverVariable = p6.createObjectVariable(p7.mBottom);
            p6.addEquality(p7.mTop.mSolverVariable, v0_9);
            p6.addEquality(p7.mBottom.mSolverVariable, v1_6);
            if ((p7.mBaselineDistance > 0) || (p7.getVisibility() == 8)) {
                p7.mBaseline.mSolverVariable = p6.createObjectVariable(p7.mBaseline);
                p6.addEquality(p7.mBaseline.mSolverVariable, (p7.mBaselineDistance + v0_9));
            }
            p7.mVerticalResolution = 2;
            p7.setVerticalDimension(v0_9, v1_6);
        }
        return;
    }

    private static boolean optimizableMatchConstraint(android.support.constraint.solver.widgets.ConstraintWidget p3, int p4)
    {
        if (p3.mListDimensionBehaviors[p4] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v1_1 = 1;
            if (p3.mDimensionRatio == 0) {
                if (p4 != 0) {
                    if (p3.mMatchConstraintDefaultHeight == 0) {
                        if ((p3.mMatchConstraintMinHeight != 0) || (p3.mMatchConstraintMaxHeight != 0)) {
                            return 0;
                        }
                    } else {
                        return 0;
                    }
                } else {
                    if (p3.mMatchConstraintDefaultWidth == 0) {
                        if ((p3.mMatchConstraintMinWidth != 0) || (p3.mMatchConstraintMaxWidth != 0)) {
                            return 0;
                        }
                    } else {
                        return 0;
                    }
                }
                return 1;
            } else {
                if (p4 != 0) {
                    v1_1 = 0;
                }
                if (p3.mListDimensionBehaviors[v1_1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    return 0;
                } else {
                    return 0;
                }
            }
        } else {
            return 0;
        }
    }

    static void setOptimizedWidget(android.support.constraint.solver.widgets.ConstraintWidget p5, int p6, int p7)
    {
        int v0 = (p6 * 2);
        int v1 = (v0 + 1);
        p5.mListAnchors[v0].getResolutionNode().resolvedTarget = p5.getParent().mLeft.getResolutionNode();
        p5.mListAnchors[v0].getResolutionNode().resolvedOffset = ((float) p7);
        p5.mListAnchors[v0].getResolutionNode().state = 1;
        p5.mListAnchors[v1].getResolutionNode().resolvedTarget = p5.mListAnchors[v0].getResolutionNode();
        p5.mListAnchors[v1].getResolutionNode().resolvedOffset = ((float) p5.getLength(p6));
        p5.mListAnchors[v1].getResolutionNode().state = 1;
        return;
    }
}
