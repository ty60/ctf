package android.support.constraint;
public class Constraints$LayoutParams extends android.support.constraint.ConstraintLayout$LayoutParams {
    public float alpha;
    public boolean applyElevation;
    public float elevation;
    public float rotation;
    public float rotationX;
    public float rotationY;
    public float scaleX;
    public float scaleY;
    public float transformPivotX;
    public float transformPivotY;
    public float translationX;
    public float translationY;
    public float translationZ;

    public Constraints$LayoutParams(int p3, int p4)
    {
        super(p3, p4);
        super.alpha = 1065353216;
        super.applyElevation = 0;
        super.elevation = 0;
        super.rotation = 0;
        super.rotationX = 0;
        super.rotationY = 0;
        super.scaleX = 1065353216;
        super.scaleY = 1065353216;
        super.transformPivotX = 0;
        super.transformPivotY = 0;
        super.translationX = 0;
        super.translationY = 0;
        super.translationZ = 0;
        return;
    }

    public Constraints$LayoutParams(android.content.Context p6, android.util.AttributeSet p7)
    {
        super(p6, p7);
        super.alpha = 1065353216;
        int v1 = 0;
        super.applyElevation = 0;
        super.elevation = 0;
        super.rotation = 0;
        super.rotationX = 0;
        super.rotationY = 0;
        super.scaleX = 1065353216;
        super.scaleY = 1065353216;
        super.transformPivotX = 0;
        super.transformPivotY = 0;
        super.translationX = 0;
        super.translationY = 0;
        super.translationZ = 0;
        android.content.res.TypedArray v0_2 = p6.obtainStyledAttributes(p7, android.support.constraint.R$styleable.ConstraintSet);
        int v2_0 = v0_2.getIndexCount();
        while (v1 < v2_0) {
            int v3 = v0_2.getIndex(v1);
            if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_alpha) {
                if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_elevation) {
                    if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_rotationX) {
                        if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_rotationY) {
                            if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_rotation) {
                                if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_scaleX) {
                                    if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_scaleY) {
                                        if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_transformPivotX) {
                                            if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_transformPivotY) {
                                                if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_translationX) {
                                                    if (v3 != android.support.constraint.R$styleable.ConstraintSet_android_translationY) {
                                                        if (v3 == android.support.constraint.R$styleable.ConstraintSet_android_translationZ) {
                                                            super.translationX = v0_2.getFloat(v3, super.translationZ);
                                                        }
                                                    } else {
                                                        super.translationY = v0_2.getFloat(v3, super.translationY);
                                                    }
                                                } else {
                                                    super.translationX = v0_2.getFloat(v3, super.translationX);
                                                }
                                            } else {
                                                super.transformPivotY = v0_2.getFloat(v3, super.transformPivotY);
                                            }
                                        } else {
                                            super.transformPivotX = v0_2.getFloat(v3, super.transformPivotX);
                                        }
                                    } else {
                                        super.scaleY = v0_2.getFloat(v3, super.scaleY);
                                    }
                                } else {
                                    super.scaleX = v0_2.getFloat(v3, super.scaleX);
                                }
                            } else {
                                super.rotation = v0_2.getFloat(v3, super.rotation);
                            }
                        } else {
                            super.rotationY = v0_2.getFloat(v3, super.rotationY);
                        }
                    } else {
                        super.rotationX = v0_2.getFloat(v3, super.rotationX);
                    }
                } else {
                    super.elevation = v0_2.getFloat(v3, super.elevation);
                    super.applyElevation = 1;
                }
            } else {
                super.alpha = v0_2.getFloat(v3, super.alpha);
            }
            v1++;
        }
        return;
    }

    public Constraints$LayoutParams(android.support.constraint.Constraints$LayoutParams p3)
    {
        super(p3);
        super.alpha = 1065353216;
        super.applyElevation = 0;
        super.elevation = 0;
        super.rotation = 0;
        super.rotationX = 0;
        super.rotationY = 0;
        super.scaleX = 1065353216;
        super.scaleY = 1065353216;
        super.transformPivotX = 0;
        super.transformPivotY = 0;
        super.translationX = 0;
        super.translationY = 0;
        super.translationZ = 0;
        return;
    }
}
