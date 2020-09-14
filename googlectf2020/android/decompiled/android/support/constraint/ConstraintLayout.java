package android.support.constraint;
public class ConstraintLayout extends android.view.ViewGroup {
    static final boolean ALLOWS_EMBEDDED = False;
    private static final boolean CACHE_MEASURED_DIMENSION = False;
    private static final boolean DEBUG = False;
    public static final int DESIGN_INFO_ID = 0;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = True;
    public static final String VERSION = "ConstraintLayout-1.1.3";
    android.util.SparseArray mChildrenByIds;
    private java.util.ArrayList mConstraintHelpers;
    private android.support.constraint.ConstraintSet mConstraintSet;
    private int mConstraintSetId;
    private java.util.HashMap mDesignIds;
    private boolean mDirtyHierarchy;
    private int mLastMeasureHeight;
    int mLastMeasureHeightMode;
    int mLastMeasureHeightSize;
    private int mLastMeasureWidth;
    int mLastMeasureWidthMode;
    int mLastMeasureWidthSize;
    android.support.constraint.solver.widgets.ConstraintWidgetContainer mLayoutWidget;
    private int mMaxHeight;
    private int mMaxWidth;
    private android.support.constraint.solver.Metrics mMetrics;
    private int mMinHeight;
    private int mMinWidth;
    private int mOptimizationLevel;
    private final java.util.ArrayList mVariableDimensionsWidgets;

    public ConstraintLayout(android.content.Context p5)
    {
        super(p5);
        super.mChildrenByIds = new android.util.SparseArray();
        super.mConstraintHelpers = new java.util.ArrayList(4);
        super.mVariableDimensionsWidgets = new java.util.ArrayList(100);
        super.mLayoutWidget = new android.support.constraint.solver.widgets.ConstraintWidgetContainer();
        super.mMinWidth = 0;
        super.mMinHeight = 0;
        super.mMaxWidth = 2147483647;
        super.mMaxHeight = 2147483647;
        super.mDirtyHierarchy = 1;
        super.mOptimizationLevel = 7;
        super.mConstraintSet = 0;
        super.mConstraintSetId = -1;
        super.mDesignIds = new java.util.HashMap();
        super.mLastMeasureWidth = -1;
        super.mLastMeasureHeight = -1;
        super.mLastMeasureWidthSize = -1;
        super.mLastMeasureHeightSize = -1;
        super.mLastMeasureWidthMode = 0;
        super.mLastMeasureHeightMode = 0;
        super.init(0);
        return;
    }

    public ConstraintLayout(android.content.Context p4, android.util.AttributeSet p5)
    {
        super(p4, p5);
        super.mChildrenByIds = new android.util.SparseArray();
        super.mConstraintHelpers = new java.util.ArrayList(4);
        super.mVariableDimensionsWidgets = new java.util.ArrayList(100);
        super.mLayoutWidget = new android.support.constraint.solver.widgets.ConstraintWidgetContainer();
        super.mMinWidth = 0;
        super.mMinHeight = 0;
        super.mMaxWidth = 2147483647;
        super.mMaxHeight = 2147483647;
        super.mDirtyHierarchy = 1;
        super.mOptimizationLevel = 7;
        super.mConstraintSet = 0;
        super.mConstraintSetId = -1;
        super.mDesignIds = new java.util.HashMap();
        super.mLastMeasureWidth = -1;
        super.mLastMeasureHeight = -1;
        super.mLastMeasureWidthSize = -1;
        super.mLastMeasureHeightSize = -1;
        super.mLastMeasureWidthMode = 0;
        super.mLastMeasureHeightMode = 0;
        super.init(p5);
        return;
    }

    public ConstraintLayout(android.content.Context p4, android.util.AttributeSet p5, int p6)
    {
        super(p4, p5, p6);
        super.mChildrenByIds = new android.util.SparseArray();
        super.mConstraintHelpers = new java.util.ArrayList(4);
        super.mVariableDimensionsWidgets = new java.util.ArrayList(100);
        super.mLayoutWidget = new android.support.constraint.solver.widgets.ConstraintWidgetContainer();
        super.mMinWidth = 0;
        super.mMinHeight = 0;
        super.mMaxWidth = 2147483647;
        super.mMaxHeight = 2147483647;
        super.mDirtyHierarchy = 1;
        super.mOptimizationLevel = 7;
        super.mConstraintSet = 0;
        super.mConstraintSetId = -1;
        super.mDesignIds = new java.util.HashMap();
        super.mLastMeasureWidth = -1;
        super.mLastMeasureHeight = -1;
        super.mLastMeasureWidthSize = -1;
        super.mLastMeasureHeightSize = -1;
        super.mLastMeasureWidthMode = 0;
        super.mLastMeasureHeightMode = 0;
        super.init(p5);
        return;
    }

    private final android.support.constraint.solver.widgets.ConstraintWidget getTargetWidget(int p3)
    {
        if (p3 != 0) {
            android.view.View v0_3 = ((android.view.View) this.mChildrenByIds.get(p3));
            if (v0_3 == null) {
                v0_3 = this.findViewById(p3);
                if ((v0_3 != null) && ((v0_3 != this) && (v0_3.getParent() == this))) {
                    this.onViewAdded(v0_3);
                }
            }
            if (v0_3 != this) {
                android.support.constraint.solver.widgets.ConstraintWidget v1_3;
                if (v0_3 != null) {
                    v1_3 = ((android.support.constraint.ConstraintLayout$LayoutParams) v0_3.getLayoutParams()).widget;
                } else {
                    v1_3 = 0;
                }
                return v1_3;
            } else {
                return this.mLayoutWidget;
            }
        } else {
            return this.mLayoutWidget;
        }
    }

    private void init(android.util.AttributeSet p10)
    {
        this.mLayoutWidget.setCompanionWidget(this);
        this.mChildrenByIds.put(this.getId(), this);
        this.mConstraintSet = 0;
        if (p10 != null) {
            int v1_1 = this.getContext().obtainStyledAttributes(p10, android.support.constraint.R$styleable.ConstraintLayout_Layout);
            int v2_1 = v1_1.getIndexCount();
            int v4 = 0;
            while (v4 < v2_1) {
                int v5 = v1_1.getIndex(v4);
                if (v5 != android.support.constraint.R$styleable.ConstraintLayout_Layout_android_minWidth) {
                    if (v5 != android.support.constraint.R$styleable.ConstraintLayout_Layout_android_minHeight) {
                        if (v5 != android.support.constraint.R$styleable.ConstraintLayout_Layout_android_maxWidth) {
                            if (v5 != android.support.constraint.R$styleable.ConstraintLayout_Layout_android_maxHeight) {
                                if (v5 != android.support.constraint.R$styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                                    if (v5 == android.support.constraint.R$styleable.ConstraintLayout_Layout_constraintSet) {
                                        int v6_6 = v1_1.getResourceId(v5, 0);
                                        try {
                                            this.mConstraintSet = new android.support.constraint.ConstraintSet();
                                            this.mConstraintSet.load(this.getContext(), v6_6);
                                        } catch (android.content.res.Resources$NotFoundException v7) {
                                            this.mConstraintSet = 0;
                                        }
                                        this.mConstraintSetId = v6_6;
                                    }
                                } else {
                                    this.mOptimizationLevel = v1_1.getInt(v5, this.mOptimizationLevel);
                                }
                            } else {
                                this.mMaxHeight = v1_1.getDimensionPixelOffset(v5, this.mMaxHeight);
                            }
                        } else {
                            this.mMaxWidth = v1_1.getDimensionPixelOffset(v5, this.mMaxWidth);
                        }
                    } else {
                        this.mMinHeight = v1_1.getDimensionPixelOffset(v5, this.mMinHeight);
                    }
                } else {
                    this.mMinWidth = v1_1.getDimensionPixelOffset(v5, this.mMinWidth);
                }
                v4++;
            }
            v1_1.recycle();
        }
        this.mLayoutWidget.setOptimizationLevel(this.mOptimizationLevel);
        return;
    }

    private void internalMeasureChildren(int p23, int p24)
    {
        int v0_0 = this;
        int v1_0 = p23;
        int v3_1 = (this.getPaddingTop() + this.getPaddingBottom());
        int v4_0 = (this.getPaddingLeft() + this.getPaddingRight());
        int v5_1 = this.getChildCount();
        int v7 = 0;
        while (v7 < v5_1) {
            android.view.View v8 = v0_0.getChildAt(v7);
            if (v8.getVisibility() != 8) {
                android.support.constraint.ConstraintLayout$LayoutParams v9_2 = ((android.support.constraint.ConstraintLayout$LayoutParams) v8.getLayoutParams());
                android.support.constraint.solver.widgets.ConstraintWidget v10_1 = v9_2.widget;
                if ((!v9_2.isGuideline) && (!v9_2.isHelper)) {
                    int v13_8;
                    v10_1.setVisibility(v8.getVisibility());
                    int v11_0 = v9_2.width;
                    int v12 = v9_2.height;
                    if (((!v9_2.horizontalDimensionFixed) && ((!v9_2.verticalDimensionFixed) && ((v9_2.horizontalDimensionFixed) || (v9_2.matchConstraintDefaultWidth != 1)))) && ((v9_2.width != -1) && ((v9_2.verticalDimensionFixed) || ((v9_2.matchConstraintDefaultHeight != 1) && (v9_2.height != -1))))) {
                        v13_8 = 0;
                    } else {
                        v13_8 = 1;
                    }
                    int v16 = 0;
                    int v17 = 0;
                    if (v13_8 != 0) {
                        int v18_0;
                        if (v11_0 != 0) {
                            if (v11_0 != -1) {
                                if (v11_0 == -2) {
                                    v16 = 1;
                                }
                                v18_0 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v1_0, v4_0, v11_0);
                            } else {
                                v18_0 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v1_0, v4_0, -1);
                            }
                        } else {
                            v18_0 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v1_0, v4_0, -2);
                            v16 = 1;
                        }
                        int v18_1;
                        int v19 = v18_0;
                        if (v12 != 0) {
                            if (v12 != -1) {
                                if (v12 == -2) {
                                    v17 = 1;
                                }
                                v18_1 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(p24, v3_1, v12);
                            } else {
                                v18_1 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(p24, v3_1, -1);
                            }
                        } else {
                            v18_1 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(p24, v3_1, -2);
                            v17 = 1;
                        }
                        v8.measure(v19, v18_1);
                        if (v0_0.mMetrics != null) {
                            android.support.constraint.solver.Metrics v6_2 = v0_0.mMetrics;
                            v6_2.measures = (v6_2.measures + 1);
                        }
                        int v1_2;
                        if (v11_0 != -2) {
                            v1_2 = 0;
                        } else {
                            v1_2 = 1;
                        }
                        int v0_1;
                        v10_1.setWidthWrapContent(v1_2);
                        if (v12 != -2) {
                            v0_1 = 0;
                        } else {
                            v0_1 = 1;
                        }
                        v10_1.setHeightWrapContent(v0_1);
                        v11_0 = v8.getMeasuredWidth();
                        v12 = v8.getMeasuredHeight();
                    }
                    v10_1.setWidth(v11_0);
                    v10_1.setHeight(v12);
                    if (v16 != 0) {
                        v10_1.setWrapWidth(v11_0);
                    }
                    if (v17 != 0) {
                        v10_1.setWrapHeight(v12);
                    }
                    if (v9_2.needsBaseline) {
                        int v0_3 = v8.getBaseline();
                        if (v0_3 != -1) {
                            v10_1.setBaselineDistance(v0_3);
                        }
                    }
                }
            }
            v7++;
            v0_0 = this;
            v1_0 = p23;
        }
        return;
    }

    private void internalMeasureDimensions(int p33, int p34)
    {
        int v1_0 = p33;
        int v2_2 = p34;
        int v3_3 = (this.getPaddingTop() + this.getPaddingBottom());
        int v4_0 = (this.getPaddingLeft() + this.getPaddingRight());
        int v5_6 = this.getChildCount();
        android.support.constraint.solver.widgets.ConstraintWidget v7_0 = 0;
        while(true) {
            int v10_1 = 8;
            if (v7_0 >= v5_6) {
                break;
            }
            int v21_1;
            android.support.constraint.solver.widgets.ResolutionAnchor v14_0 = this.getChildAt(v7_0);
            if (v14_0.getVisibility() != 8) {
                int v10_3 = ((android.support.constraint.ConstraintLayout$LayoutParams) v14_0.getLayoutParams());
                android.support.constraint.solver.widgets.ResolutionAnchor v15_1 = v10_3.widget;
                if (v10_3.isGuideline) {
                    v21_1 = v3_3;
                } else {
                    if (!v10_3.isHelper) {
                        v15_1.setVisibility(v14_0.getVisibility());
                        int v6_18 = v10_3.width;
                        android.support.constraint.solver.widgets.ResolutionAnchor v12_0 = v10_3.height;
                        if (v6_18 == 0) {
                            v21_1 = v3_3;
                        } else {
                            if (v12_0 != null) {
                                int v16_1 = 0;
                                int v17_1 = 0;
                                if (v6_18 == -2) {
                                    v16_1 = 1;
                                }
                                android.support.constraint.solver.widgets.ResolutionAnchor v11_0 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(p33, v4_0, v6_18);
                                if (v12_0 == -2) {
                                    v17_1 = 1;
                                }
                                v14_0.measure(v11_0, android.support.constraint.ConstraintLayout.getChildMeasureSpec(v2_2, v3_3, v12_0));
                                if (this.mMetrics == null) {
                                    v21_1 = v3_3;
                                } else {
                                    android.support.constraint.ConstraintLayout$LayoutParams v8_7 = this.mMetrics;
                                    v21_1 = v3_3;
                                    v8_7.measures = (v8_7.measures + 1);
                                }
                                int v3_1;
                                if (v6_18 != -2) {
                                    v3_1 = 0;
                                } else {
                                    v3_1 = 1;
                                }
                                int v2_8;
                                v15_1.setWidthWrapContent(v3_1);
                                if (v12_0 != -2) {
                                    v2_8 = 0;
                                } else {
                                    v2_8 = 1;
                                }
                                v15_1.setHeightWrapContent(v2_8);
                                int v2_9 = v14_0.getMeasuredWidth();
                                int v3_2 = v14_0.getMeasuredHeight();
                                v15_1.setWidth(v2_9);
                                v15_1.setHeight(v3_2);
                                if (v16_1 != 0) {
                                    v15_1.setWrapWidth(v2_9);
                                }
                                if (v17_1 != 0) {
                                    v15_1.setWrapHeight(v3_2);
                                }
                                if (v10_3.needsBaseline) {
                                    int v6_23 = v14_0.getBaseline();
                                    if (v6_23 != -1) {
                                        v15_1.setBaselineDistance(v6_23);
                                    }
                                }
                                if ((!v10_3.horizontalDimensionFixed) || (!v10_3.verticalDimensionFixed)) {
                                    v7_0++;
                                    v3_3 = v21_1;
                                    v2_2 = p34;
                                } else {
                                    v15_1.getResolutionWidth().resolve(v2_9);
                                    v15_1.getResolutionHeight().resolve(v3_2);
                                }
                            } else {
                                v21_1 = v3_3;
                            }
                        }
                        v15_1.getResolutionWidth().invalidate();
                        v15_1.getResolutionHeight().invalidate();
                    } else {
                        v21_1 = v3_3;
                    }
                }
            } else {
            }
        }
        int v21_0 = v3_3;
        this.mLayoutWidget.solveGraph();
        int v2_4 = 0;
        while (v2_4 < v5_6) {
            int v22;
            long v27;
            int v23;
            long v29;
            int v3_0 = this.getChildAt(v2_4);
            if (v3_0.getVisibility() != v10_1) {
                int v6_21 = ((android.support.constraint.ConstraintLayout$LayoutParams) v3_0.getLayoutParams());
                android.support.constraint.solver.widgets.ConstraintWidget v7_1 = v6_21.widget;
                if (v6_21.isGuideline) {
                    v23 = v2_4;
                    v27 = v4_0;
                    v22 = v5_6;
                    v29 = v21_0;
                    long v18 = 1;
                } else {
                    if (!v6_21.isHelper) {
                        v7_1.setVisibility(v3_0.getVisibility());
                        android.support.constraint.ConstraintLayout$LayoutParams v8_0 = v6_21.width;
                        int v9_0 = v6_21.height;
                        if ((v8_0 == null) || (v9_0 == 0)) {
                            int v13_8;
                            android.support.constraint.solver.widgets.ResolutionAnchor v11_3 = v7_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).getResolutionNode();
                            android.support.constraint.solver.widgets.ResolutionAnchor v12_3 = v7_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).getResolutionNode();
                            if ((v7_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).getTarget() == null) || (v7_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).getTarget() == null)) {
                                v13_8 = 0;
                            } else {
                                v13_8 = 1;
                            }
                            int v10_0;
                            android.support.constraint.solver.widgets.ResolutionAnchor v14_3 = v7_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).getResolutionNode();
                            android.support.constraint.solver.widgets.ResolutionAnchor v15_4 = v7_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).getResolutionNode();
                            if ((v7_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).getTarget() == null) || (v7_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).getTarget() == null)) {
                                v10_0 = 0;
                            } else {
                                v10_0 = 1;
                            }
                            if ((v8_0 != null) || ((v9_0 != 0) || ((v13_8 == 0) || (v10_0 == 0)))) {
                                int v2_1;
                                int v16_0 = 0;
                                int v17_0 = 0;
                                v22 = v5_6;
                                v23 = v2_4;
                                if (this.mLayoutWidget.getHorizontalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                                    v2_1 = 0;
                                } else {
                                    v2_1 = 1;
                                }
                                int v5_5;
                                android.support.constraint.ConstraintLayout$LayoutParams v24 = v6_21;
                                if (this.mLayoutWidget.getVerticalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                                    v5_5 = 0;
                                } else {
                                    v5_5 = 1;
                                }
                                if (v2_1 == 0) {
                                    v7_1.getResolutionWidth().invalidate();
                                }
                                if (v5_5 == 0) {
                                    v7_1.getResolutionHeight().invalidate();
                                }
                                int v6_6;
                                float v25_0;
                                if (v8_0 != null) {
                                    if (v8_0 != -1) {
                                        if (v8_0 == -2) {
                                            v16_0 = 1;
                                        }
                                        v6_6 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v1_0, v4_0, v8_0);
                                        v25_0 = v6_6;
                                    } else {
                                        v25_0 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v1_0, v4_0, -1);
                                    }
                                } else {
                                    if ((v2_1 == 0) || ((!v7_1.isSpreadWidth()) || ((v13_8 == 0) || ((!v11_3.isResolved()) || (!v12_3.isResolved()))))) {
                                        v25_0 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v1_0, v4_0, -2);
                                        v16_0 = 1;
                                        v2_1 = 0;
                                    } else {
                                        v8_0 = ((int) (v12_3.getResolvedValue() - v11_3.getResolvedValue()));
                                        v7_1.getResolutionWidth().resolve(v8_0);
                                        v6_6 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v1_0, v4_0, v8_0);
                                    }
                                }
                                int v28;
                                int v4_1;
                                int v20;
                                int v6_14 = v25_0;
                                if (v9_0 != 0) {
                                    v27 = v4_0;
                                    v28 = v5_5;
                                    v4_1 = v21_0;
                                    if (v9_0 != -1) {
                                        if (v9_0 == -2) {
                                            v17_0 = 1;
                                        }
                                        v20 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(p34, v4_1, v9_0);
                                    } else {
                                        v20 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(p34, v4_1, -1);
                                    }
                                } else {
                                    if ((v5_5 == 0) || ((!v7_1.isSpreadHeight()) || ((v10_0 == 0) || ((!v14_3.isResolved()) || (!v15_4.isResolved()))))) {
                                        v27 = v4_0;
                                        v4_1 = v21_0;
                                        v20 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(p34, v4_1, -2);
                                        v17_0 = 1;
                                        v5_5 = 0;
                                    } else {
                                        v9_0 = ((int) (v15_4.getResolvedValue() - v14_3.getResolvedValue()));
                                        v7_1.getResolutionHeight().resolve(v9_0);
                                        v27 = v4_0;
                                        v4_1 = v21_0;
                                        v20 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(p34, v4_1, v9_0);
                                    }
                                    v28 = v5_5;
                                }
                                v3_0.measure(v6_14, v20);
                                if (this.mMetrics == null) {
                                    v29 = v4_1;
                                    v18 = 1;
                                } else {
                                    int v1_7 = this.mMetrics;
                                    v29 = v4_1;
                                    v1_7.measures = (v1_7.measures + 1);
                                }
                                int v4_4;
                                if (v8_0 != -2) {
                                    v4_4 = 0;
                                } else {
                                    v4_4 = 1;
                                }
                                int v4_5;
                                v7_1.setWidthWrapContent(v4_4);
                                if (v9_0 != -2) {
                                    v4_5 = 0;
                                } else {
                                    v4_5 = 1;
                                }
                                v7_1.setHeightWrapContent(v4_5);
                                int v4_6 = v3_0.getMeasuredWidth();
                                int v5_12 = v3_0.getMeasuredHeight();
                                v7_1.setWidth(v4_6);
                                v7_1.setHeight(v5_12);
                                if (v16_0 != 0) {
                                    v7_1.setWrapWidth(v4_6);
                                }
                                if (v17_0 != 0) {
                                    v7_1.setWrapHeight(v5_12);
                                }
                                if (v2_1 == 0) {
                                    v7_1.getResolutionWidth().remove();
                                } else {
                                    v7_1.getResolutionWidth().resolve(v4_6);
                                }
                                if (v28 == 0) {
                                    v7_1.getResolutionHeight().remove();
                                } else {
                                    v7_1.getResolutionHeight().resolve(v5_12);
                                }
                                if (v24.needsBaseline) {
                                    int v9_2 = v3_0.getBaseline();
                                    if (v9_2 != -1) {
                                        v7_1.setBaselineDistance(v9_2);
                                    }
                                }
                            } else {
                                v23 = v2_4;
                                v27 = v4_0;
                                v22 = v5_6;
                                v29 = v21_0;
                                v18 = 1;
                            }
                        }
                    }
                }
            } else {
            }
            v2_4 = (v23 + 1);
            v5_6 = v22;
            v4_0 = v27;
            v21_0 = v29;
            v1_0 = p33;
            v10_1 = 8;
        }
        v22 = v5_6;
        return;
    }

    private void setChildrenConstraints()
    {
        boolean v2 = this.isInEditMode();
        int v3_14 = this.getChildCount();
        int v4_22 = 0;
        android.support.constraint.solver.widgets.ConstraintAnchor$Type v5_3 = -1;
        if (v2) {
            int v6_9 = 0;
            while (v6_9 < v3_14) {
                int v7_5 = this.getChildAt(v6_9);
                try {
                    int v8_13 = this.getResources().getResourceName(v7_5.getId());
                    this.setDesignInformation(0, v8_13, Integer.valueOf(v7_5.getId()));
                    float v9_70 = v8_13.indexOf(47);
                } catch (android.content.res.Resources$NotFoundException v0) {
                    v6_9++;
                }
                if (v9_70 != -1) {
                    v8_13 = v8_13.substring((v9_70 + 1));
                }
                this.getTargetWidget(v7_5.getId()).setDebugName(v8_13);
            }
        }
        int v6_0 = 0;
        while (v6_0 < v3_14) {
            int v8_11 = this.getViewWidget(this.getChildAt(v6_0));
            if (v8_11 != 0) {
                v8_11.reset();
            }
            v6_0++;
        }
        if (this.mConstraintSetId != -1) {
            int v6_2 = 0;
            while (v6_2 < v3_14) {
                int v7_3 = this.getChildAt(v6_2);
                if ((v7_3.getId() == this.mConstraintSetId) && ((v7_3 instanceof android.support.constraint.Constraints))) {
                    this.mConstraintSet = ((android.support.constraint.Constraints) v7_3).getConstraintSet();
                }
                v6_2++;
            }
        }
        if (this.mConstraintSet != null) {
            this.mConstraintSet.applyToInternal(this);
        }
        this.mLayoutWidget.removeAllChildren();
        int v6_8 = this.mConstraintHelpers.size();
        if (v6_8 > 0) {
            int v7_0 = 0;
            while (v7_0 < v6_8) {
                ((android.support.constraint.ConstraintHelper) this.mConstraintHelpers.get(v7_0)).updatePreLayout(this);
                v7_0++;
            }
        }
        int v7_1 = 0;
        while (v7_1 < v3_14) {
            int v8_2 = this.getChildAt(v7_1);
            if ((v8_2 instanceof android.support.constraint.Placeholder)) {
                ((android.support.constraint.Placeholder) v8_2).updatePreLayout(this);
            }
            v7_1++;
        }
        int v7_2 = 0;
        while (v7_2 < v3_14) {
            int v17;
            float v10_26;
            float v9_49;
            int v23;
            int v8_1 = this.getChildAt(v7_2);
            android.support.constraint.solver.widgets.ConstraintWidget v15 = this.getViewWidget(v8_1);
            if (v15 != null) {
                android.support.constraint.solver.widgets.ConstraintAnchor v14_13 = ((android.support.constraint.ConstraintLayout$LayoutParams) v8_1.getLayoutParams());
                v14_13.validate();
                if (!v14_13.helped) {
                    if (v2) {
                        try {
                            float v9_65 = this.getResources().getResourceName(v8_1.getId());
                            this.setDesignInformation(v4_22, v9_65, Integer.valueOf(v8_1.getId()));
                            this.getTargetWidget(v8_1.getId()).setDebugName(v9_65.substring((v9_65.indexOf("id/") + 3)));
                        } catch (android.content.res.Resources$NotFoundException v0) {
                        }
                    }
                } else {
                    v14_13.helped = v4_22;
                }
                v15.setVisibility(v8_1.getVisibility());
                if (v14_13.isInPlaceholder) {
                    v15.setVisibility(8);
                }
                v15.setCompanionWidget(v8_1);
                this.mLayoutWidget.add(v15);
                if ((!v14_13.verticalDimensionFixed) || (!v14_13.horizontalDimensionFixed)) {
                    this.mVariableDimensionsWidgets.add(v15);
                }
                if (!v14_13.isGuideline) {
                    if ((v14_13.leftToLeft != v5_3) || ((v14_13.leftToRight != v5_3) || ((v14_13.rightToLeft != v5_3) || ((v14_13.rightToRight != v5_3) || ((v14_13.startToStart != v5_3) || ((v14_13.startToEnd != v5_3) || ((v14_13.endToStart != v5_3) || ((v14_13.endToEnd != v5_3) || ((v14_13.topToTop != v5_3) || ((v14_13.topToBottom != v5_3) || ((v14_13.bottomToTop != v5_3) || ((v14_13.bottomToBottom != v5_3) || ((v14_13.baselineToBaseline != v5_3) || ((v14_13.editorAbsoluteX != v5_3) || ((v14_13.editorAbsoluteY != v5_3) || ((v14_13.circleConstraint != v5_3) || ((v14_13.width == v5_3) || (v14_13.height == v5_3)))))))))))))))))) {
                        int v4_16;
                        int v3_1;
                        int v18_1;
                        int v16;
                        android.support.constraint.solver.widgets.ConstraintAnchor$Type v5_1;
                        android.support.constraint.ConstraintLayout$LayoutParams v11_0 = v14_13.resolvedRightToLeft;
                        android.support.constraint.solver.widgets.ConstraintAnchor v12_0 = v14_13.resolvedRightToRight;
                        float v10_0 = v14_13.resolvedHorizontalBias;
                        v17 = v3_14;
                        if (android.os.Build$VERSION.SDK_INT >= 17) {
                            v3_1 = -1;
                            v16 = v14_13.resolveGoneLeftMargin;
                            v4_16 = v14_13.resolvedLeftToLeft;
                            v18_1 = v14_13.resolveGoneRightMargin;
                            v5_1 = v14_13.resolvedLeftToRight;
                        } else {
                            int v3_5;
                            android.support.constraint.solver.widgets.ConstraintWidget v19_0;
                            int v3_2 = v14_13.leftToLeft;
                            int v4_17 = v14_13.leftToRight;
                            v11_0 = v14_13.rightToLeft;
                            v12_0 = v14_13.rightToRight;
                            v10_0 = v14_13.horizontalBias;
                            if ((v3_2 != -1) || (v4_17 != -1)) {
                                v19_0 = v3_2;
                                v3_5 = v4_17;
                                v4_16 = v19_0;
                            } else {
                                v19_0 = v3_2;
                                if (v14_13.startToStart == -1) {
                                    if (v14_13.startToEnd == -1) {
                                    } else {
                                        v3_5 = v14_13.startToEnd;
                                    }
                                } else {
                                    v4_16 = v14_13.startToStart;
                                    v3_5 = v4_17;
                                }
                            }
                            if ((v11_0 != -1) || (v12_0 != -1)) {
                                android.support.constraint.solver.widgets.ConstraintAnchor$Type v20_0 = v3_5;
                            } else {
                                v20_0 = v3_5;
                                if (v14_13.endToStart == -1) {
                                    if (v14_13.endToEnd != -1) {
                                        v12_0 = v14_13.endToEnd;
                                    }
                                } else {
                                    v11_0 = v14_13.endToStart;
                                }
                            }
                            v18_1 = v14_13.goneRightMargin;
                            v16 = v14_13.goneLeftMargin;
                            v3_1 = -1;
                            v5_1 = v20_0;
                        }
                        int v8_0;
                        android.support.constraint.solver.widgets.ConstraintAnchor v13_2 = v11_0;
                        android.support.constraint.ConstraintLayout$LayoutParams v11_1 = v10_0;
                        if (v14_13.circleConstraint == v3_1) {
                            int v6_5;
                            int v4_18;
                            int v3_10;
                            if (v4_16 == -1) {
                                v23 = v6_8;
                                v4_18 = v11_1;
                                v3_10 = v12_0;
                                v6_5 = v13_2;
                                v8_0 = v14_13;
                                if (v5_1 != -1) {
                                    android.support.constraint.solver.widgets.ConstraintWidget v19_1 = this.getTargetWidget(v5_1);
                                    if (v19_1 != null) {
                                        v15.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, v19_1, android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, v8_0.leftMargin, v16);
                                    }
                                }
                            } else {
                                int v3_11 = this.getTargetWidget(v4_16);
                                if (v3_11 == 0) {
                                    v23 = v6_8;
                                    v4_18 = v11_1;
                                    v3_10 = v12_0;
                                    v6_5 = v13_2;
                                    v8_0 = v14_13;
                                } else {
                                    v4_18 = v11_1;
                                    v3_10 = v12_0;
                                    v23 = v6_8;
                                    v6_5 = v13_2;
                                    v8_0 = v14_13;
                                    v15.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, v3_11, android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, v14_13.leftMargin, v16);
                                }
                            }
                            if (v6_5 == -1) {
                                if (v3_10 != -1) {
                                    android.support.constraint.solver.widgets.ConstraintWidget v19_3 = this.getTargetWidget(v3_10);
                                    if (v19_3 != null) {
                                        v15.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, v19_3, android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, v8_0.rightMargin, v18_1);
                                    }
                                }
                            } else {
                                android.support.constraint.solver.widgets.ConstraintWidget v19_4 = this.getTargetWidget(v6_5);
                                if (v19_4 != null) {
                                    v15.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, v19_4, android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, v8_0.rightMargin, v18_1);
                                }
                            }
                            if (v8_0.topToTop == -1) {
                                if (v8_0.topToBottom != -1) {
                                    android.support.constraint.solver.widgets.ConstraintWidget v19_5 = this.getTargetWidget(v8_0.topToBottom);
                                    if (v19_5 != null) {
                                        v15.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP, v19_5, android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM, v8_0.topMargin, v8_0.goneTopMargin);
                                    }
                                }
                            } else {
                                android.support.constraint.solver.widgets.ConstraintWidget v19_6 = this.getTargetWidget(v8_0.topToTop);
                                if (v19_6 != null) {
                                    v15.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP, v19_6, android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP, v8_0.topMargin, v8_0.goneTopMargin);
                                }
                            }
                            if (v8_0.bottomToTop == -1) {
                                if (v8_0.bottomToBottom != -1) {
                                    android.support.constraint.solver.widgets.ConstraintWidget v19_7 = this.getTargetWidget(v8_0.bottomToBottom);
                                    if (v19_7 != null) {
                                        v15.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM, v19_7, android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM, v8_0.bottomMargin, v8_0.goneBottomMargin);
                                    }
                                }
                            } else {
                                android.support.constraint.solver.widgets.ConstraintWidget v19_8 = this.getTargetWidget(v8_0.bottomToTop);
                                if (v19_8 != null) {
                                    v15.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM, v19_8, android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP, v8_0.bottomMargin, v8_0.goneBottomMargin);
                                }
                            }
                            if (v8_0.baselineToBaseline != -1) {
                                float v9_26 = ((android.view.View) this.mChildrenByIds.get(v8_0.baselineToBaseline));
                                float v10_16 = this.getTargetWidget(v8_0.baselineToBaseline);
                                if ((v10_16 != 0) && ((v9_26 != 0) && ((v9_26.getLayoutParams() instanceof android.support.constraint.ConstraintLayout$LayoutParams)))) {
                                    android.support.constraint.ConstraintLayout$LayoutParams v11_13 = ((android.support.constraint.ConstraintLayout$LayoutParams) v9_26.getLayoutParams());
                                    v8_0.needsBaseline = 1;
                                    v11_13.needsBaseline = 1;
                                    v15.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE).connect(v10_16.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE), 0, -1, android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG, 0, 1);
                                    v15.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).reset();
                                    v15.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).reset();
                                }
                            }
                            if ((v4_18 >= 0) && (v4_18 != 1056964608)) {
                                v15.setHorizontalBiasPercent(v4_18);
                            }
                            if ((v8_0.verticalBias >= 0) && (v8_0.verticalBias != 1056964608)) {
                                v15.setVerticalBiasPercent(v8_0.verticalBias);
                            }
                        } else {
                            int v3_13 = this.getTargetWidget(v14_13.circleConstraint);
                            if (v3_13 != 0) {
                                v15.connectCircularConstraint(v3_13, v14_13.circleAngle, v14_13.circleRadius);
                            }
                            v23 = v6_8;
                            int v4 = v11_1;
                            int v6 = v13_2;
                            v8_0 = v14_13;
                        }
                        if ((v2) && ((v8_0.editorAbsoluteX != -1) || (v8_0.editorAbsoluteY != -1))) {
                            v15.setOrigin(v8_0.editorAbsoluteX, v8_0.editorAbsoluteY);
                        }
                        if (v8_0.horizontalDimensionFixed) {
                            v15.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
                            v15.setWidth(v8_0.width);
                        } else {
                            if (v8_0.width != -1) {
                                v15.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT);
                                v15.setWidth(0);
                            } else {
                                v15.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_PARENT);
                                v15.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).mMargin = v8_0.leftMargin;
                                v15.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).mMargin = v8_0.rightMargin;
                            }
                        }
                        if (v8_0.verticalDimensionFixed) {
                            v9_49 = 0;
                            v10_26 = -1;
                            v15.setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
                            v15.setHeight(v8_0.height);
                        } else {
                            v10_26 = -1;
                            if (v8_0.height != -1) {
                                v15.setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT);
                                v9_49 = 0;
                                v15.setHeight(0);
                            } else {
                                v15.setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_PARENT);
                                v15.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).mMargin = v8_0.topMargin;
                                v15.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).mMargin = v8_0.bottomMargin;
                                v9_49 = 0;
                            }
                        }
                        if (v8_0.dimensionRatio != null) {
                            v15.setDimensionRatio(v8_0.dimensionRatio);
                        }
                        v15.setHorizontalWeight(v8_0.horizontalWeight);
                        v15.setVerticalWeight(v8_0.verticalWeight);
                        v15.setHorizontalChainStyle(v8_0.horizontalChainStyle);
                        v15.setVerticalChainStyle(v8_0.verticalChainStyle);
                        v15.setHorizontalMatchStyle(v8_0.matchConstraintDefaultWidth, v8_0.matchConstraintMinWidth, v8_0.matchConstraintMaxWidth, v8_0.matchConstraintPercentWidth);
                        v15.setVerticalMatchStyle(v8_0.matchConstraintDefaultHeight, v8_0.matchConstraintMinHeight, v8_0.matchConstraintMaxHeight, v8_0.matchConstraintPercentHeight);
                        v7_2++;
                        v4_22 = v9_49;
                        v5_3 = v10_26;
                        v3_14 = v17;
                        v6_8 = v23;
                    }
                } else {
                    float v9_59 = ((android.support.constraint.solver.widgets.Guideline) v15);
                    android.support.constraint.ConstraintLayout$LayoutParams v11_27 = v14_13.resolvedGuideBegin;
                    android.support.constraint.solver.widgets.ConstraintAnchor v12_14 = v14_13.resolvedGuideEnd;
                    android.support.constraint.solver.widgets.ConstraintAnchor v13_15 = v14_13.resolvedGuidePercent;
                    if (android.os.Build$VERSION.SDK_INT < 17) {
                        v11_27 = v14_13.guideBegin;
                        v12_14 = v14_13.guideEnd;
                        v13_15 = v14_13.guidePercent;
                    }
                    if (v13_15 == -1082130432) {
                        if (v11_27 == v5_3) {
                            if (v12_14 != v5_3) {
                                v9_59.setGuideEnd(v12_14);
                            }
                        } else {
                            v9_59.setGuideBegin(v11_27);
                        }
                    } else {
                        v9_59.setGuidePercent(v13_15);
                    }
                }
                v17 = v3_14;
                v10_26 = v5_3;
                v23 = v6_8;
                v9_49 = 0;
            } else {
                v17 = v3_14;
                v9_49 = v4_22;
                v10_26 = v5_3;
                v23 = v6_8;
            }
        }
        v23 = v6_8;
        return;
    }

    private void setSelfDimensionBehaviour(int p16, int p17)
    {
        int v1 = android.view.View$MeasureSpec.getMode(p16);
        int v2 = android.view.View$MeasureSpec.getSize(p16);
        int v3 = android.view.View$MeasureSpec.getMode(p17);
        int v4 = android.view.View$MeasureSpec.getSize(p17);
        int v5_1 = (this.getPaddingTop() + this.getPaddingBottom());
        int v6_2 = (this.getPaddingLeft() + this.getPaddingRight());
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v7_1 = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v8 = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        int v9 = 0;
        int v10 = 0;
        this.getLayoutParams();
        if (v1 == -2147483648) {
            v7_1 = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            v9 = v2;
        } else {
            if (v1 == 0) {
                v7_1 = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            } else {
                if (v1 == 1073741824) {
                    v9 = (Math.min(this.mMaxWidth, v2) - v6_2);
                }
            }
        }
        if (v3 == -2147483648) {
            v8 = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            v10 = v4;
        } else {
            if (v3 == 0) {
                v8 = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            } else {
                if (v3 == 1073741824) {
                    v10 = (Math.min(this.mMaxHeight, v4) - v5_1);
                }
            }
        }
        this.mLayoutWidget.setMinWidth(0);
        this.mLayoutWidget.setMinHeight(0);
        this.mLayoutWidget.setHorizontalDimensionBehaviour(v7_1);
        this.mLayoutWidget.setWidth(v9);
        this.mLayoutWidget.setVerticalDimensionBehaviour(v8);
        this.mLayoutWidget.setHeight(v10);
        this.mLayoutWidget.setMinWidth(((this.mMinWidth - this.getPaddingLeft()) - this.getPaddingRight()));
        this.mLayoutWidget.setMinHeight(((this.mMinHeight - this.getPaddingTop()) - this.getPaddingBottom()));
        return;
    }

    private void updateHierarchy()
    {
        int v0 = this.getChildCount();
        int v1 = 0;
        java.util.ArrayList v2_0 = 0;
        while (v2_0 < v0) {
            if (!this.getChildAt(v2_0).isLayoutRequested()) {
                v2_0++;
            } else {
                v1 = 1;
                break;
            }
        }
        if (v1 != 0) {
            this.mVariableDimensionsWidgets.clear();
            this.setChildrenConstraints();
        }
        return;
    }

    private void updatePostMeasures()
    {
        int v0 = this.getChildCount();
        int v1 = 0;
        int v2_0 = 0;
        while (v2_0 < v0) {
            android.support.constraint.ConstraintHelper v3_3 = this.getChildAt(v2_0);
            if ((v3_3 instanceof android.support.constraint.Placeholder)) {
                ((android.support.constraint.Placeholder) v3_3).updatePostMeasure(this);
            }
            v2_0++;
        }
        int v2_2 = this.mConstraintHelpers.size();
        if (v2_2 > 0) {
            while (v1 < v2_2) {
                ((android.support.constraint.ConstraintHelper) this.mConstraintHelpers.get(v1)).updatePostMeasure(this);
                v1++;
            }
        }
        return;
    }

    public void addView(android.view.View p3, int p4, android.view.ViewGroup$LayoutParams p5)
    {
        super.addView(p3, p4, p5);
        if (android.os.Build$VERSION.SDK_INT < 14) {
            this.onViewAdded(p3);
        }
        return;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return (p2 instanceof android.support.constraint.ConstraintLayout$LayoutParams);
    }

    public void dispatchDraw(android.graphics.Canvas p27)
    {
        this = super.dispatchDraw(p27);
        if (this.isInEditMode()) {
            float v0_6 = this.getChildCount();
            float v1_7 = ((float) this.getWidth());
            float v2_1 = ((float) this.getHeight());
            float v3_3 = 1149698048;
            int v5_0 = 0;
            int v6 = 0;
            while (v6 < v0_6) {
                float v24;
                int v25;
                int v22;
                float v23;
                android.view.View v8 = this.getChildAt(v6);
                if (v8.getVisibility() != 8) {
                    Object v9_1 = v8.getTag();
                    if ((v9_1 != null) && ((v9_1 instanceof String))) {
                        String[] v11_1 = ((String) v9_1).split(",");
                        if (v11_1.length == 4) {
                            int v5_4 = ((int) ((((float) Integer.parseInt(v11_1[v5_0])) / v3_3) * v1_7));
                            int v12_6 = ((int) ((((float) Integer.parseInt(v11_1[1])) / 1156579328) * v2_1));
                            int v13_7 = ((int) ((((float) Integer.parseInt(v11_1[2])) / v3_3) * v1_7));
                            int v14_6 = ((int) ((((float) Integer.parseInt(v11_1[3])) / 1156579328) * v2_1));
                            android.graphics.Paint v15_4 = new android.graphics.Paint();
                            v22 = v0_6;
                            v15_4.setColor(-65536);
                            v23 = v1_7;
                            v24 = v2_1;
                            v25 = v3_3;
                            android.graphics.Paint v21 = v15_4;
                            p27.drawLine(((float) v5_4), ((float) v12_6), ((float) (v5_4 + v13_7)), ((float) v12_6), v21);
                            p27.drawLine(((float) (v5_4 + v13_7)), ((float) v12_6), ((float) (v5_4 + v13_7)), ((float) (v12_6 + v14_6)), v21);
                            p27.drawLine(((float) (v5_4 + v13_7)), ((float) (v12_6 + v14_6)), ((float) v5_4), ((float) (v12_6 + v14_6)), v21);
                            p27.drawLine(((float) v5_4), ((float) (v12_6 + v14_6)), ((float) v5_4), ((float) v12_6), v21);
                            v15_4.setColor(-16711936);
                            p27.drawLine(((float) v5_4), ((float) v12_6), ((float) (v5_4 + v13_7)), ((float) (v12_6 + v14_6)), v21);
                            p27.drawLine(((float) v5_4), ((float) (v12_6 + v14_6)), ((float) (v5_4 + v13_7)), ((float) v12_6), v21);
                            v6++;
                            v0_6 = v22;
                            v1_7 = v23;
                            v2_1 = v24;
                            v3_3 = v25;
                            v5_0 = 0;
                        }
                    }
                    v22 = v0_6;
                    v23 = v1_7;
                    v24 = v2_1;
                    v25 = v3_3;
                } else {
                    v22 = v0_6;
                    v23 = v1_7;
                    v24 = v2_1;
                    v25 = v3_3;
                }
            }
        }
        return;
    }

    public void fillMetrics(android.support.constraint.solver.Metrics p2)
    {
        this.mMetrics = p2;
        this.mLayoutWidget.fillMetrics(p2);
        return;
    }

    protected android.support.constraint.ConstraintLayout$LayoutParams generateDefaultLayoutParams()
    {
        return new android.support.constraint.ConstraintLayout$LayoutParams(-2, -2);
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return this.generateDefaultLayoutParams();
    }

    public android.support.constraint.ConstraintLayout$LayoutParams generateLayoutParams(android.util.AttributeSet p3)
    {
        return new android.support.constraint.ConstraintLayout$LayoutParams(this.getContext(), p3);
    }

    public bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.util.AttributeSet p1)
    {
        return this.generateLayoutParams(p1);
    }

    protected android.view.ViewGroup$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return new android.support.constraint.ConstraintLayout$LayoutParams(p2);
    }

    public Object getDesignInformation(int p3, Object p4)
    {
        if ((p3 != 0) || ((!(p4 instanceof String)) || ((this.mDesignIds == null) || (!this.mDesignIds.containsKey(((String) p4)))))) {
            return 0;
        } else {
            return this.mDesignIds.get(((String) p4));
        }
    }

    public int getMaxHeight()
    {
        return this.mMaxHeight;
    }

    public int getMaxWidth()
    {
        return this.mMaxWidth;
    }

    public int getMinHeight()
    {
        return this.mMinHeight;
    }

    public int getMinWidth()
    {
        return this.mMinWidth;
    }

    public int getOptimizationLevel()
    {
        return this.mLayoutWidget.getOptimizationLevel();
    }

    public android.view.View getViewById(int p2)
    {
        return ((android.view.View) this.mChildrenByIds.get(p2));
    }

    public final android.support.constraint.solver.widgets.ConstraintWidget getViewWidget(android.view.View p2)
    {
        if (p2 != this) {
            android.support.constraint.solver.widgets.ConstraintWidget v0_2;
            if (p2 != null) {
                v0_2 = ((android.support.constraint.ConstraintLayout$LayoutParams) p2.getLayoutParams()).widget;
            } else {
                v0_2 = 0;
            }
            return v0_2;
        } else {
            return this.mLayoutWidget;
        }
    }

    protected void onLayout(boolean p15, int p16, int p17, int p18, int p19)
    {
        int v1 = this.getChildCount();
        boolean v2 = this.isInEditMode();
        int v3 = 0;
        int v4_1 = 0;
        while (v4_1 < v1) {
            android.support.constraint.ConstraintHelper v5_3 = this.getChildAt(v4_1);
            android.support.constraint.ConstraintLayout$LayoutParams v6_1 = ((android.support.constraint.ConstraintLayout$LayoutParams) v5_3.getLayoutParams());
            android.support.constraint.solver.widgets.ConstraintWidget v7 = v6_1.widget;
            if (((v5_3.getVisibility() != 8) || ((v6_1.isGuideline) || ((v6_1.isHelper) || (v2)))) && (!v6_1.isInPlaceholder)) {
                int v8_4 = v7.getDrawX();
                int v9_1 = v7.getDrawY();
                int v10_1 = (v7.getWidth() + v8_4);
                int v11_1 = (v7.getHeight() + v9_1);
                v5_3.layout(v8_4, v9_1, v10_1, v11_1);
                if ((v5_3 instanceof android.support.constraint.Placeholder)) {
                    android.view.View v13 = ((android.support.constraint.Placeholder) v5_3).getContent();
                    if (v13 != null) {
                        v13.setVisibility(0);
                        v13.layout(v8_4, v9_1, v10_1, v11_1);
                    }
                }
            }
            v4_1++;
        }
        int v4_0 = this.mConstraintHelpers.size();
        if (v4_0 > 0) {
            while (v3 < v4_0) {
                ((android.support.constraint.ConstraintHelper) this.mConstraintHelpers.get(v3)).updatePostLayout(this);
                v3++;
            }
        }
        return;
    }

    protected void onMeasure(int p46, int p47)
    {
        android.support.constraint.ConstraintLayout v0 = this;
        int v1_0 = p46;
        int v2_0 = p47;
        System.currentTimeMillis();
        int v7_8 = android.view.View$MeasureSpec.getMode(p46);
        int v8_0 = android.view.View$MeasureSpec.getSize(p46);
        int v9_0 = android.view.View$MeasureSpec.getMode(p47);
        int v10_0 = android.view.View$MeasureSpec.getSize(p47);
        int v11_0 = this.getPaddingLeft();
        android.support.constraint.solver.widgets.ConstraintWidget v12_0 = this.getPaddingTop();
        this.mLayoutWidget.setX(v11_0);
        this.mLayoutWidget.setY(v12_0);
        this.mLayoutWidget.setMaxWidth(this.mMaxWidth);
        v0.mLayoutWidget.setMaxHeight(v0.mMaxHeight);
        if (android.os.Build$VERSION.SDK_INT >= 17) {
            android.support.constraint.solver.Metrics v14_10;
            if (this.getLayoutDirection() != 1) {
                v14_10 = 0;
            } else {
                v14_10 = 1;
            }
            this.mLayoutWidget.setRtl(v14_10);
        }
        void v45_1 = this.setSelfDimensionBehaviour(p46, p47);
        int v13_17 = this.mLayoutWidget.getWidth();
        android.support.constraint.solver.Metrics v14_14 = this.mLayoutWidget.getHeight();
        int v17 = 0;
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = 0;
            v45_1 = v45_1.updateHierarchy();
            v17 = 1;
        }
        int v4_1;
        if ((this.mOptimizationLevel & 8) != 8) {
            v4_1 = 0;
        } else {
            v4_1 = 1;
        }
        void v45_2;
        if (v4_1 == 0) {
            v45_2 = v45_1.internalMeasureChildren(p46, p47);
        } else {
            this.mLayoutWidget.preOptimize();
            this.mLayoutWidget.optimizeForDimensions(v13_17, v14_14);
            v45_2 = v45_1.internalMeasureDimensions(p46, p47);
        }
        void v45_3 = v45_2.updatePostMeasures();
        if ((v45_3.getChildCount() > 0) && (v17 != 0)) {
            android.support.constraint.solver.widgets.Analyzer.determineGroups(this.mLayoutWidget);
        }
        if (this.mLayoutWidget.mGroupsWrapOptimized) {
            if ((this.mLayoutWidget.mHorizontalWrapOptimized) && (v7_8 == -2147483648)) {
                if (this.mLayoutWidget.mWrapFixedWidth < v8_0) {
                    this.mLayoutWidget.setWidth(this.mLayoutWidget.mWrapFixedWidth);
                }
                this.mLayoutWidget.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
            }
            if ((this.mLayoutWidget.mVerticalWrapOptimized) && (v9_0 == -2147483648)) {
                if (this.mLayoutWidget.mWrapFixedHeight < v10_0) {
                    this.mLayoutWidget.setHeight(this.mLayoutWidget.mWrapFixedHeight);
                }
                this.mLayoutWidget.setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
            }
        }
        int v22;
        int v21 = 0;
        if ((this.mOptimizationLevel & 32) != 32) {
            v22 = 0;
        } else {
            int v3_5 = this.mLayoutWidget.getWidth();
            android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v15_5 = this.mLayoutWidget.getHeight();
            if ((this.mLastMeasureWidth == v3_5) || (v7_8 != 1073741824)) {
                v22 = 0;
            } else {
                v22 = 0;
                android.support.constraint.solver.widgets.Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 0, v3_5);
            }
            if ((this.mLastMeasureHeight != v15_5) && (v9_0 == 1073741824)) {
                android.support.constraint.solver.widgets.Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 1, v15_5);
            }
            if ((this.mLayoutWidget.mHorizontalWrapOptimized) && (this.mLayoutWidget.mWrapFixedWidth > v8_0)) {
                android.support.constraint.solver.widgets.Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 0, v8_0);
            }
            if ((this.mLayoutWidget.mVerticalWrapOptimized) && (this.mLayoutWidget.mWrapFixedHeight > v10_0)) {
                android.support.constraint.solver.widgets.Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 1, v10_0);
            }
        }
        if (v45_3.getChildCount() > 0) {
            this.solveLinearSystem("First pass");
        }
        int v11_1;
        android.view.View v5_21 = this.mVariableDimensionsWidgets.size();
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v15_7 = (v45_3.getPaddingBottom() + v12_0);
        int v6_4 = (v11_0 + v45_3.getPaddingRight());
        if (v5_21 <= null) {
            boolean v27 = v8_0;
            int v30 = v10_0;
            android.support.constraint.solver.widgets.ConstraintWidget v32 = v12_0;
            int v8 = v5_21;
            v11_1 = 0;
        } else {
            int v3_11;
            int v16_1 = 0;
            if (this.mLayoutWidget.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                v3_11 = 0;
            } else {
                v3_11 = 1;
            }
            long v24_0;
            if (this.mLayoutWidget.getVerticalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                v24_0 = 0;
            } else {
                v24_0 = 1;
            }
            int v7_3 = v24_0;
            int v31 = v11_0;
            v11_1 = 0;
            int v9_4 = Math.max(this.mLayoutWidget.getWidth(), this.mMinWidth);
            int v10_1 = Math.max(this.mLayoutWidget.getHeight(), this.mMinHeight);
            int v8_7 = 0;
            while (v8_7 < v5_21) {
                int v36;
                int v35_1;
                int v34_1;
                v32 = v12_0;
                android.support.constraint.solver.widgets.ConstraintWidget v12_13 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mVariableDimensionsWidgets.get(v8_7));
                int v33_1 = v5_21;
                android.view.View v5_24 = ((android.view.View) v12_13.getCompanionWidget());
                if (v5_24 != null) {
                    v34_1 = v14_14;
                    android.support.constraint.solver.Metrics v14_12 = ((android.support.constraint.ConstraintLayout$LayoutParams) v5_24.getLayoutParams());
                    v35_1 = v13_17;
                    if (v14_12.isHelper) {
                        v36 = v8_7;
                    } else {
                        if (!v14_12.isGuideline) {
                            v36 = v8_7;
                            if ((v5_24.getVisibility() != 8) && ((v4_1 == 0) || ((!v12_13.getResolutionWidth().isResolved()) || (!v12_13.getResolutionHeight().isResolved())))) {
                                int v8_24;
                                int v38 = 0;
                                if ((v14_12.width != -2) || (!v14_12.horizontalDimensionFixed)) {
                                    v8_24 = android.view.View$MeasureSpec.makeMeasureSpec(v12_13.getWidth(), 1073741824);
                                } else {
                                    v8_24 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v1_0, v6_4, v14_12.width);
                                }
                                if ((v14_12.height != -2) || (!v14_12.verticalDimensionFixed)) {
                                    int v1_14 = android.view.View$MeasureSpec.makeMeasureSpec(v12_13.getHeight(), 1073741824);
                                } else {
                                    v1_14 = android.support.constraint.ConstraintLayout.getChildMeasureSpec(v2_0, v15_7, v14_12.height);
                                }
                                v5_24.measure(v8_24, v1_14);
                                if (this.mMetrics != null) {
                                    int v13_20 = this.mMetrics;
                                    v13_20.additionalMeasures = (v13_20.additionalMeasures + 1);
                                }
                                v21++;
                                int v1_18 = v5_24.getMeasuredWidth();
                                int v2_12 = v5_24.getMeasuredHeight();
                                if (v1_18 != v12_13.getWidth()) {
                                    v12_13.setWidth(v1_18);
                                    if (v4_1 != 0) {
                                        v12_13.getResolutionWidth().resolve(v1_18);
                                    }
                                    if ((v3_11 != 0) && (v12_13.getRight() > v9_4)) {
                                        v9_4 = Math.max(v9_4, (v12_13.getRight() + v12_13.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).getMargin()));
                                    }
                                    v16_1 = 1;
                                }
                                if (v2_12 != v12_13.getHeight()) {
                                    v12_13.setHeight(v2_12);
                                    if (v4_1 != 0) {
                                        v12_13.getResolutionHeight().resolve(v2_12);
                                    }
                                    if ((v7_3 != 0) && (v12_13.getBottom() > v10_1)) {
                                        v10_1 = Math.max(v10_1, (v12_13.getBottom() + v12_13.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).getMargin()));
                                    }
                                    v16_1 = 1;
                                }
                                if (v14_12.needsBaseline) {
                                    int v1_30 = v5_24.getBaseline();
                                    if ((v1_30 != -1) && (v1_30 != v12_13.getBaselineDistance())) {
                                        v12_13.setBaselineDistance(v1_30);
                                        v16_1 = 1;
                                    }
                                }
                                if (android.os.Build$VERSION.SDK_INT >= 11) {
                                    v11_1 = android.support.constraint.ConstraintLayout.combineMeasuredStates(v11_1, v5_24.getMeasuredState());
                                }
                            }
                        } else {
                            v36 = v8_7;
                        }
                    }
                } else {
                    v36 = v8_7;
                    v35_1 = v13_17;
                    v34_1 = v14_14;
                }
                v8_7 = (v36 + 1);
                v12_0 = v32;
                v5_21 = v33_1;
                v14_14 = v34_1;
                v13_17 = v35_1;
                v1_0 = p46;
                v2_0 = p47;
            }
            int v2_1;
            int v33_0 = v5_21;
            int v35_0 = v13_17;
            int v34_0 = v14_14;
            if (v16_1 == 0) {
                v2_1 = v35_0;
            } else {
                v2_1 = v35_0;
                this.mLayoutWidget.setWidth(v2_1);
                this.mLayoutWidget.setHeight(v34_0);
                if (v4_1 != 0) {
                    this.mLayoutWidget.solveGraph();
                }
                this.solveLinearSystem("2nd pass");
                int v1_5 = 0;
                if (this.mLayoutWidget.getWidth() < v9_4) {
                    this.mLayoutWidget.setWidth(v9_4);
                    v1_5 = 1;
                }
                if (this.mLayoutWidget.getHeight() < v10_1) {
                    this.mLayoutWidget.setHeight(v10_1);
                    v1_5 = 1;
                }
                if (v1_5 != 0) {
                    this.solveLinearSystem("3rd pass");
                }
            }
            int v23 = 0;
            while(true) {
                int v1_7 = v23;
                int v8_14 = v33_0;
                if (v1_7 >= v8_14) {
                    break;
                }
                int v41;
                int v42;
                android.support.constraint.solver.widgets.ConstraintWidget v12_10 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mVariableDimensionsWidgets.get(v1_7));
                int v13_7 = ((android.view.View) v12_10.getCompanionWidget());
                if (v13_7 != 0) {
                    v41 = v2_1;
                    if ((v13_7.getMeasuredWidth() == v12_10.getWidth()) && (v13_7.getMeasuredHeight() == v12_10.getHeight())) {
                        v42 = v3_11;
                    } else {
                        if (v12_10.getVisibility() == 8) {
                            v42 = v3_11;
                        } else {
                            int v2_9 = android.view.View$MeasureSpec.makeMeasureSpec(v12_10.getWidth(), 1073741824);
                            v42 = v3_11;
                            int v3_15 = android.view.View$MeasureSpec.makeMeasureSpec(v12_10.getHeight(), 1073741824);
                            v13_7.measure(v2_9, v3_15);
                            if (this.mMetrics == null) {
                                int v44 = v3_15;
                            } else {
                                android.support.constraint.solver.Metrics v14_9 = this.mMetrics;
                                v44 = v3_15;
                                v14_9.additionalMeasures = (v14_9.additionalMeasures + 1);
                            }
                            v22++;
                        }
                    }
                } else {
                    v41 = v2_1;
                }
                v23 = (v1_7 + 1);
                v33_0 = v8_14;
                v2_1 = v41;
                v3_11 = v42;
            }
        }
        int v1_10 = (this.mLayoutWidget.getWidth() + v6_4);
        int v2_4 = (this.mLayoutWidget.getHeight() + v15_7);
        if (android.os.Build$VERSION.SDK_INT < 11) {
            int v10 = p47;
            this.setMeasuredDimension(v1_10, v2_4);
            this.mLastMeasureWidth = v1_10;
            this.mLastMeasureHeight = v2_4;
        } else {
            int v7_6 = (android.support.constraint.ConstraintLayout.resolveSizeAndState(v1_10, p46, v11_1) & 16777215);
            int v9_7 = (android.support.constraint.ConstraintLayout.resolveSizeAndState(v2_4, p47, (v11_1 << 16)) & 16777215);
            int v7_7 = Math.min(this.mMaxWidth, v7_6);
            int v9_8 = Math.min(this.mMaxHeight, v9_7);
            if (this.mLayoutWidget.isWidthMeasuredTooSmall()) {
                v7_7 |= 16777216;
            }
            if (this.mLayoutWidget.isHeightMeasuredTooSmall()) {
                v9_8 |= 16777216;
            }
            this.setMeasuredDimension(v7_7, v9_8);
            this.mLastMeasureWidth = v7_7;
            this.mLastMeasureHeight = v9_8;
        }
        return;
    }

    public void onViewAdded(android.view.View p6)
    {
        if (android.os.Build$VERSION.SDK_INT >= 14) {
            super.onViewAdded(p6);
        }
        android.support.constraint.solver.widgets.ConstraintWidget v0_1 = this.getViewWidget(p6);
        if (((p6 instanceof android.support.constraint.Guideline)) && (!(v0_1 instanceof android.support.constraint.solver.widgets.Guideline))) {
            android.util.SparseArray v1_2 = ((android.support.constraint.ConstraintLayout$LayoutParams) p6.getLayoutParams());
            v1_2.widget = new android.support.constraint.solver.widgets.Guideline();
            v1_2.isGuideline = 1;
            ((android.support.constraint.solver.widgets.Guideline) v1_2.widget).setOrientation(v1_2.orientation);
        }
        if ((p6 instanceof android.support.constraint.ConstraintHelper)) {
            ((android.support.constraint.ConstraintHelper) p6).validateParams();
            ((android.support.constraint.ConstraintLayout$LayoutParams) p6.getLayoutParams()).isHelper = 1;
            if (!this.mConstraintHelpers.contains(((android.support.constraint.ConstraintHelper) p6))) {
                this.mConstraintHelpers.add(((android.support.constraint.ConstraintHelper) p6));
            }
        }
        this.mChildrenByIds.put(p6.getId(), p6);
        this.mDirtyHierarchy = 1;
        return;
    }

    public void onViewRemoved(android.view.View p3)
    {
        if (android.os.Build$VERSION.SDK_INT >= 14) {
            super.onViewRemoved(p3);
        }
        this.mChildrenByIds.remove(p3.getId());
        android.support.constraint.solver.widgets.ConstraintWidget v0_2 = this.getViewWidget(p3);
        this.mLayoutWidget.remove(v0_2);
        this.mConstraintHelpers.remove(p3);
        this.mVariableDimensionsWidgets.remove(v0_2);
        this.mDirtyHierarchy = 1;
        return;
    }

    public void removeView(android.view.View p3)
    {
        super.removeView(p3);
        if (android.os.Build$VERSION.SDK_INT < 14) {
            this.onViewRemoved(p3);
        }
        return;
    }

    public void requestLayout()
    {
        super.requestLayout();
        this.mDirtyHierarchy = 1;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        return;
    }

    public void setConstraintSet(android.support.constraint.ConstraintSet p1)
    {
        this.mConstraintSet = p1;
        return;
    }

    public void setDesignInformation(int p6, Object p7, Object p8)
    {
        if ((p6 == 0) && (((p7 instanceof String)) && ((p8 instanceof Integer)))) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new java.util.HashMap();
            }
            String v0_2 = ((String) p7);
            int v1_1 = ((String) p7).indexOf("/");
            if (v1_1 != -1) {
                v0_2 = ((String) p7).substring((v1_1 + 1));
            }
            this.mDesignIds.put(v0_2, Integer.valueOf(((Integer) p8).intValue()));
        }
        return;
    }

    public void setId(int p3)
    {
        this.mChildrenByIds.remove(this.getId());
        super.setId(p3);
        this.mChildrenByIds.put(this.getId(), this);
        return;
    }

    public void setMaxHeight(int p2)
    {
        if (p2 != this.mMaxHeight) {
            this.mMaxHeight = p2;
            this.requestLayout();
            return;
        } else {
            return;
        }
    }

    public void setMaxWidth(int p2)
    {
        if (p2 != this.mMaxWidth) {
            this.mMaxWidth = p2;
            this.requestLayout();
            return;
        } else {
            return;
        }
    }

    public void setMinHeight(int p2)
    {
        if (p2 != this.mMinHeight) {
            this.mMinHeight = p2;
            this.requestLayout();
            return;
        } else {
            return;
        }
    }

    public void setMinWidth(int p2)
    {
        if (p2 != this.mMinWidth) {
            this.mMinWidth = p2;
            this.requestLayout();
            return;
        } else {
            return;
        }
    }

    public void setOptimizationLevel(int p2)
    {
        this.mLayoutWidget.setOptimizationLevel(p2);
        return;
    }

    public boolean shouldDelayChildPressedState()
    {
        return 0;
    }

    protected void solveLinearSystem(String p6)
    {
        this.mLayoutWidget.layout();
        if (this.mMetrics != null) {
            android.support.constraint.solver.Metrics v0_2 = this.mMetrics;
            v0_2.resolutions = (v0_2.resolutions + 1);
        }
        return;
    }
}
