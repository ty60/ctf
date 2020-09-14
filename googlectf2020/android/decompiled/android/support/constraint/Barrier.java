package android.support.constraint;
public class Barrier extends android.support.constraint.ConstraintHelper {
    public static final int BOTTOM = 3;
    public static final int END = 6;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int START = 5;
    public static final int TOP = 2;
    private android.support.constraint.solver.widgets.Barrier mBarrier;
    private int mIndicatedType;
    private int mResolvedType;

    public Barrier(android.content.Context p2)
    {
        super(p2);
        super.setVisibility(8);
        return;
    }

    public Barrier(android.content.Context p2, android.util.AttributeSet p3)
    {
        super(p2, p3);
        super.setVisibility(8);
        return;
    }

    public Barrier(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.setVisibility(8);
        return;
    }

    public boolean allowsGoneWidget()
    {
        return this.mBarrier.allowsGoneWidget();
    }

    public int getType()
    {
        return this.mIndicatedType;
    }

    protected void init(android.util.AttributeSet p8)
    {
        super.init(p8);
        this.mBarrier = new android.support.constraint.solver.widgets.Barrier();
        if (p8 != null) {
            android.support.constraint.solver.widgets.Barrier v0_4 = this.getContext().obtainStyledAttributes(p8, android.support.constraint.R$styleable.ConstraintLayout_Layout);
            int v1_0 = v0_4.getIndexCount();
            int v3 = 0;
            while (v3 < v1_0) {
                int v4 = v0_4.getIndex(v3);
                if (v4 != android.support.constraint.R$styleable.ConstraintLayout_Layout_barrierDirection) {
                    if (v4 == android.support.constraint.R$styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                        this.mBarrier.setAllowsGoneWidget(v0_4.getBoolean(v4, 1));
                    }
                } else {
                    this.setType(v0_4.getInt(v4, 0));
                }
                v3++;
            }
        }
        this.mHelperWidget = this.mBarrier;
        this.validateParams();
        return;
    }

    public void setAllowsGoneWidget(boolean p2)
    {
        this.mBarrier.setAllowsGoneWidget(p2);
        return;
    }

    public void setType(int p8)
    {
        this.mIndicatedType = p8;
        this.mResolvedType = p8;
        if (android.os.Build$VERSION.SDK_INT >= 17) {
            int v5_1;
            if (1 != this.getResources().getConfiguration().getLayoutDirection()) {
                v5_1 = 0;
            } else {
                v5_1 = 1;
            }
            if (v5_1 == 0) {
                if (this.mIndicatedType != 5) {
                    if (this.mIndicatedType == 6) {
                        this.mResolvedType = 1;
                    }
                } else {
                    this.mResolvedType = 0;
                }
            } else {
                if (this.mIndicatedType != 5) {
                    if (this.mIndicatedType == 6) {
                        this.mResolvedType = 0;
                    }
                } else {
                    this.mResolvedType = 1;
                }
            }
        } else {
            if (this.mIndicatedType != 5) {
                if (this.mIndicatedType == 6) {
                    this.mResolvedType = 1;
                }
            } else {
                this.mResolvedType = 0;
            }
        }
        this.mBarrier.setBarrierType(this.mResolvedType);
        return;
    }
}
