package android.support.constraint.solver.widgets;
public class ChainHead {
    private boolean mDefined;
    protected android.support.constraint.solver.widgets.ConstraintWidget mFirst;
    protected android.support.constraint.solver.widgets.ConstraintWidget mFirstMatchConstraintWidget;
    protected android.support.constraint.solver.widgets.ConstraintWidget mFirstVisibleWidget;
    protected boolean mHasComplexMatchWeights;
    protected boolean mHasDefinedWeights;
    protected boolean mHasUndefinedWeights;
    protected android.support.constraint.solver.widgets.ConstraintWidget mHead;
    private boolean mIsRtl;
    protected android.support.constraint.solver.widgets.ConstraintWidget mLast;
    protected android.support.constraint.solver.widgets.ConstraintWidget mLastMatchConstraintWidget;
    protected android.support.constraint.solver.widgets.ConstraintWidget mLastVisibleWidget;
    private int mOrientation;
    protected float mTotalWeight;
    protected java.util.ArrayList mWeightedMatchConstraintsWidgets;
    protected int mWidgetsCount;
    protected int mWidgetsMatchCount;

    public ChainHead(android.support.constraint.solver.widgets.ConstraintWidget p2, int p3, boolean p4)
    {
        this.mTotalWeight = 0;
        this.mIsRtl = 0;
        this.mFirst = p2;
        this.mOrientation = p3;
        this.mIsRtl = p4;
        return;
    }

    private void defineChainProperties()
    {
        int v0_1 = (this.mOrientation * 2);
        int v3 = this.mFirst;
        android.support.constraint.solver.widgets.ConstraintAnchor v5 = 0;
        android.support.constraint.solver.widgets.ConstraintWidget v4_0 = this.mFirst;
        int v2_0 = 0;
        while (v2_0 == 0) {
            this.mWidgetsCount = (this.mWidgetsCount + 1);
            v3.mNextChainWidget[this.mOrientation] = 0;
            v3.mListNextMatchConstraintsWidget[this.mOrientation] = 0;
            if (v3.getVisibility() != 8) {
                if (this.mFirstVisibleWidget == null) {
                    this.mFirstVisibleWidget = v3;
                }
                this.mLastVisibleWidget = v3;
                if ((v3.mListDimensionBehaviors[this.mOrientation] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) && ((v3.mResolvedMatchConstraintDefault[this.mOrientation] == 0) || ((v3.mResolvedMatchConstraintDefault[this.mOrientation] == 3) || (v3.mResolvedMatchConstraintDefault[this.mOrientation] == 2)))) {
                    this.mWidgetsMatchCount = (this.mWidgetsMatchCount + 1);
                    int v8_26 = v3.mWeight[this.mOrientation];
                    if (v8_26 > 0) {
                        this.mTotalWeight = (this.mTotalWeight + v3.mWeight[this.mOrientation]);
                    }
                    if (android.support.constraint.solver.widgets.ChainHead.isMatchConstraintEqualityCandidate(v3, this.mOrientation)) {
                        if (v8_26 >= 0) {
                            this.mHasDefinedWeights = 1;
                        } else {
                            this.mHasUndefinedWeights = 1;
                        }
                        if (this.mWeightedMatchConstraintsWidgets == null) {
                            this.mWeightedMatchConstraintsWidgets = new java.util.ArrayList();
                        }
                        this.mWeightedMatchConstraintsWidgets.add(v3);
                    }
                    if (this.mFirstMatchConstraintWidget == null) {
                        this.mFirstMatchConstraintWidget = v3;
                    }
                    if (this.mLastMatchConstraintWidget != null) {
                        this.mLastMatchConstraintWidget.mListNextMatchConstraintsWidget[this.mOrientation] = v3;
                    }
                    this.mLastMatchConstraintWidget = v3;
                }
            }
            if (v4_0 != v3) {
                v4_0.mNextChainWidget[this.mOrientation] = v3;
            }
            int v6;
            v4_0 = v3;
            java.util.ArrayList v7_6 = v3.mListAnchors[(v0_1 + 1)].mTarget;
            if (v7_6 == null) {
                v6 = 0;
            } else {
                v6 = v7_6.mOwner;
                if ((v6.mListAnchors[v0_1].mTarget == null) || (v6.mListAnchors[v0_1].mTarget.mOwner != v3)) {
                    v6 = 0;
                }
            }
            if (v6 == 0) {
                v2_0 = 1;
            } else {
                v3 = v6;
            }
        }
        this.mLast = v3;
        if ((this.mOrientation != 0) || (!this.mIsRtl)) {
            this.mHead = this.mFirst;
        } else {
            this.mHead = this.mLast;
        }
        if ((this.mHasDefinedWeights) && (this.mHasUndefinedWeights)) {
            v5 = 1;
        }
        this.mHasComplexMatchWeights = v5;
        return;
    }

    private static boolean isMatchConstraintEqualityCandidate(android.support.constraint.solver.widgets.ConstraintWidget p2, int p3)
    {
        if ((p2.getVisibility() == 8) || ((p2.mListDimensionBehaviors[p3] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || ((p2.mResolvedMatchConstraintDefault[p3] != 0) && (p2.mResolvedMatchConstraintDefault[p3] != 3)))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public void define()
    {
        if (!this.mDefined) {
            this.defineChainProperties();
        }
        this.mDefined = 1;
        return;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getFirst()
    {
        return this.mFirst;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getFirstMatchConstraintWidget()
    {
        return this.mFirstMatchConstraintWidget;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getFirstVisibleWidget()
    {
        return this.mFirstVisibleWidget;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getHead()
    {
        return this.mHead;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getLast()
    {
        return this.mLast;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getLastMatchConstraintWidget()
    {
        return this.mLastMatchConstraintWidget;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getLastVisibleWidget()
    {
        return this.mLastVisibleWidget;
    }

    public float getTotalWeight()
    {
        return this.mTotalWeight;
    }
}
