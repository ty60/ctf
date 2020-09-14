package android.support.constraint;
public class Group extends android.support.constraint.ConstraintHelper {

    public Group(android.content.Context p1)
    {
        super(p1);
        return;
    }

    public Group(android.content.Context p1, android.util.AttributeSet p2)
    {
        super(p1, p2);
        return;
    }

    public Group(android.content.Context p1, android.util.AttributeSet p2, int p3)
    {
        super(p1, p2, p3);
        return;
    }

    protected void init(android.util.AttributeSet p2)
    {
        super.init(p2);
        this.mUseViewMeasure = 0;
        return;
    }

    public void updatePostLayout(android.support.constraint.ConstraintLayout p4)
    {
        android.support.constraint.ConstraintLayout$LayoutParams v0_1 = ((android.support.constraint.ConstraintLayout$LayoutParams) this.getLayoutParams());
        v0_1.widget.setWidth(0);
        v0_1.widget.setHeight(0);
        return;
    }

    public void updatePreLayout(android.support.constraint.ConstraintLayout p8)
    {
        int v0 = this.getVisibility();
        float v1 = 0;
        if (android.os.Build$VERSION.SDK_INT >= 21) {
            v1 = this.getElevation();
        }
        int v2_0 = 0;
        while (v2_0 < this.mCount) {
            android.view.View v5 = p8.getViewById(this.mIds[v2_0]);
            if (v5 != null) {
                v5.setVisibility(v0);
                if ((v1 > 0) && (android.os.Build$VERSION.SDK_INT >= 21)) {
                    v5.setElevation(v1);
                }
            }
            v2_0++;
        }
        return;
    }
}
