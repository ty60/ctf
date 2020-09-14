package android.support.constraint;
public class Constraints extends android.view.ViewGroup {
    public static final String TAG = "Constraints";
    android.support.constraint.ConstraintSet myConstraintSet;

    public Constraints(android.content.Context p2)
    {
        super(p2);
        super.setVisibility(8);
        return;
    }

    public Constraints(android.content.Context p2, android.util.AttributeSet p3)
    {
        super(p2, p3);
        super.init(p3);
        super.setVisibility(8);
        return;
    }

    public Constraints(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.init(p3);
        super.setVisibility(8);
        return;
    }

    private void init(android.util.AttributeSet p3)
    {
        android.util.Log.v("Constraints", " ################# init");
        return;
    }

    protected android.support.constraint.Constraints$LayoutParams generateDefaultLayoutParams()
    {
        return new android.support.constraint.Constraints$LayoutParams(-2, -2);
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return this.generateDefaultLayoutParams();
    }

    public android.support.constraint.Constraints$LayoutParams generateLayoutParams(android.util.AttributeSet p3)
    {
        return new android.support.constraint.Constraints$LayoutParams(this.getContext(), p3);
    }

    public bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.util.AttributeSet p1)
    {
        return this.generateLayoutParams(p1);
    }

    protected android.view.ViewGroup$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return new android.support.constraint.ConstraintLayout$LayoutParams(p2);
    }

    public android.support.constraint.ConstraintSet getConstraintSet()
    {
        if (this.myConstraintSet == null) {
            this.myConstraintSet = new android.support.constraint.ConstraintSet();
        }
        this.myConstraintSet.clone(this);
        return this.myConstraintSet;
    }

    protected void onLayout(boolean p1, int p2, int p3, int p4, int p5)
    {
        return;
    }
}
