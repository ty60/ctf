package android.support.constraint;
public abstract class ConstraintHelper extends android.view.View {
    protected int mCount;
    protected android.support.constraint.solver.widgets.Helper mHelperWidget;
    protected int[] mIds;
    private String mReferenceIds;
    protected boolean mUseViewMeasure;
    protected android.content.Context myContext;

    public ConstraintHelper(android.content.Context p2)
    {
        super(p2);
        int v0_1 = new int[32];
        super.mIds = v0_1;
        super.mUseViewMeasure = 0;
        super.myContext = p2;
        super.init(0);
        return;
    }

    public ConstraintHelper(android.content.Context p2, android.util.AttributeSet p3)
    {
        super(p2, p3);
        int v0_1 = new int[32];
        super.mIds = v0_1;
        super.mUseViewMeasure = 0;
        super.myContext = p2;
        super.init(p3);
        return;
    }

    public ConstraintHelper(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        int v0_1 = new int[32];
        super.mIds = v0_1;
        super.mUseViewMeasure = 0;
        super.myContext = p2;
        super.init(p3);
        return;
    }

    private void addID(String p7)
    {
        if (p7 != null) {
            if (this.myContext != null) {
                String v7_1 = p7.trim();
                try {
                    int v1 = android.support.constraint.R$id.getField(v7_1).getInt(0);
                } catch (android.support.constraint.ConstraintLayout v3) {
                }
                if (v1 == 0) {
                    v1 = this.myContext.getResources().getIdentifier(v7_1, "id", this.myContext.getPackageName());
                }
                if ((v1 == 0) && ((this.isInEditMode()) && ((this.getParent() instanceof android.support.constraint.ConstraintLayout)))) {
                    Object v0_1 = ((android.support.constraint.ConstraintLayout) this.getParent()).getDesignInformation(0, v7_1);
                    if ((v0_1 != null) && ((v0_1 instanceof Integer))) {
                        v1 = ((Integer) v0_1).intValue();
                    }
                }
                if (v1 == 0) {
                    String v2_1 = new StringBuilder();
                    v2_1.append("Could not find id of \"");
                    v2_1.append(v7_1);
                    v2_1.append("\"");
                    android.util.Log.w("ConstraintHelper", v2_1.toString());
                } else {
                    this.setTag(v1, 0);
                }
                return;
            } else {
                return;
            }
        } else {
            return;
        }
    }

    private void setIds(String p4)
    {
        if (p4 != null) {
            int v0 = 0;
            while(true) {
                int v1_1 = p4.indexOf(44, v0);
                if (v1_1 == -1) {
                    break;
                }
                this.addID(p4.substring(v0, v1_1));
                v0 = (v1_1 + 1);
            }
            this.addID(p4.substring(v0));
            return;
        } else {
            return;
        }
    }

    public int[] getReferencedIds()
    {
        return java.util.Arrays.copyOf(this.mIds, this.mCount);
    }

    protected void init(android.util.AttributeSet p6)
    {
        if (p6 != null) {
            android.content.res.TypedArray v0_1 = this.getContext().obtainStyledAttributes(p6, android.support.constraint.R$styleable.ConstraintLayout_Layout);
            int v1_1 = v0_1.getIndexCount();
            int v2 = 0;
            while (v2 < v1_1) {
                int v3 = v0_1.getIndex(v2);
                if (v3 == android.support.constraint.R$styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    this.mReferenceIds = v0_1.getString(v3);
                    this.setIds(this.mReferenceIds);
                }
                v2++;
            }
        }
        return;
    }

    public void onDraw(android.graphics.Canvas p1)
    {
        return;
    }

    protected void onMeasure(int p2, int p3)
    {
        if (!this.mUseViewMeasure) {
            this.setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(p2, p3);
        }
        return;
    }

    public void setReferencedIds(int[] p4)
    {
        int v0 = 0;
        this.mCount = 0;
        while (v0 < p4.length) {
            this.setTag(p4[v0], 0);
            v0++;
        }
        return;
    }

    public void setTag(int p3, Object p4)
    {
        if ((this.mCount + 1) > this.mIds.length) {
            this.mIds = java.util.Arrays.copyOf(this.mIds, (this.mIds.length * 2));
        }
        this.mIds[this.mCount] = p3;
        this.mCount = (this.mCount + 1);
        return;
    }

    public void updatePostLayout(android.support.constraint.ConstraintLayout p1)
    {
        return;
    }

    public void updatePostMeasure(android.support.constraint.ConstraintLayout p1)
    {
        return;
    }

    public void updatePreLayout(android.support.constraint.ConstraintLayout p6)
    {
        if (this.isInEditMode()) {
            this.setIds(this.mReferenceIds);
        }
        if (this.mHelperWidget != null) {
            this.mHelperWidget.removeAllIds();
            int v0_1 = 0;
            while (v0_1 < this.mCount) {
                android.view.View v2 = p6.getViewById(this.mIds[v0_1]);
                if (v2 != null) {
                    this.mHelperWidget.add(p6.getViewWidget(v2));
                }
                v0_1++;
            }
            return;
        } else {
            return;
        }
    }

    public void validateParams()
    {
        if (this.mHelperWidget != null) {
            android.view.ViewGroup$LayoutParams v0_1 = this.getLayoutParams();
            if ((v0_1 instanceof android.support.constraint.ConstraintLayout$LayoutParams)) {
                ((android.support.constraint.ConstraintLayout$LayoutParams) v0_1).widget = this.mHelperWidget;
            }
            return;
        } else {
            return;
        }
    }
}
