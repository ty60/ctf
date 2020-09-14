package android.support.constraint;
public class Guideline extends android.view.View {

    public Guideline(android.content.Context p2)
    {
        super(p2);
        super.setVisibility(8);
        return;
    }

    public Guideline(android.content.Context p2, android.util.AttributeSet p3)
    {
        super(p2, p3);
        super.setVisibility(8);
        return;
    }

    public Guideline(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.setVisibility(8);
        return;
    }

    public Guideline(android.content.Context p2, android.util.AttributeSet p3, int p4, int p5)
    {
        super(p2, p3, p4);
        super.setVisibility(8);
        return;
    }

    public void draw(android.graphics.Canvas p1)
    {
        return;
    }

    protected void onMeasure(int p2, int p3)
    {
        this.setMeasuredDimension(0, 0);
        return;
    }

    public void setGuidelineBegin(int p2)
    {
        android.support.constraint.ConstraintLayout$LayoutParams v0_1 = ((android.support.constraint.ConstraintLayout$LayoutParams) this.getLayoutParams());
        v0_1.guideBegin = p2;
        this.setLayoutParams(v0_1);
        return;
    }

    public void setGuidelineEnd(int p2)
    {
        android.support.constraint.ConstraintLayout$LayoutParams v0_1 = ((android.support.constraint.ConstraintLayout$LayoutParams) this.getLayoutParams());
        v0_1.guideEnd = p2;
        this.setLayoutParams(v0_1);
        return;
    }

    public void setGuidelinePercent(float p2)
    {
        android.support.constraint.ConstraintLayout$LayoutParams v0_1 = ((android.support.constraint.ConstraintLayout$LayoutParams) this.getLayoutParams());
        v0_1.guidePercent = p2;
        this.setLayoutParams(v0_1);
        return;
    }

    public void setVisibility(int p1)
    {
        return;
    }
}
