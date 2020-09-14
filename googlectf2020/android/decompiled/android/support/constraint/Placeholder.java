package android.support.constraint;
public class Placeholder extends android.view.View {
    private android.view.View mContent;
    private int mContentId;
    private int mEmptyVisibility;

    public Placeholder(android.content.Context p3)
    {
        super(p3);
        super.mContentId = -1;
        super.mContent = 0;
        super.mEmptyVisibility = 4;
        super.init(0);
        return;
    }

    public Placeholder(android.content.Context p2, android.util.AttributeSet p3)
    {
        super(p2, p3);
        super.mContentId = -1;
        super.mContent = 0;
        super.mEmptyVisibility = 4;
        super.init(p3);
        return;
    }

    public Placeholder(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.mContentId = -1;
        super.mContent = 0;
        super.mEmptyVisibility = 4;
        super.init(p3);
        return;
    }

    public Placeholder(android.content.Context p2, android.util.AttributeSet p3, int p4, int p5)
    {
        super(p2, p3, p4);
        super.mContentId = -1;
        super.mContent = 0;
        super.mEmptyVisibility = 4;
        super.init(p3);
        return;
    }

    private void init(android.util.AttributeSet p6)
    {
        super.setVisibility(this.mEmptyVisibility);
        this.mContentId = -1;
        if (p6 != null) {
            android.content.res.TypedArray v0_3 = this.getContext().obtainStyledAttributes(p6, android.support.constraint.R$styleable.ConstraintLayout_placeholder);
            int v1_0 = v0_3.getIndexCount();
            int v2 = 0;
            while (v2 < v1_0) {
                int v3 = v0_3.getIndex(v2);
                if (v3 != android.support.constraint.R$styleable.ConstraintLayout_placeholder_content) {
                    if (v3 == android.support.constraint.R$styleable.ConstraintLayout_placeholder_emptyVisibility) {
                        this.mEmptyVisibility = v0_3.getInt(v3, this.mEmptyVisibility);
                    }
                } else {
                    this.mContentId = v0_3.getResourceId(v3, this.mContentId);
                }
                v2++;
            }
        }
        return;
    }

    public android.view.View getContent()
    {
        return this.mContent;
    }

    public int getEmptyVisibility()
    {
        return this.mEmptyVisibility;
    }

    public void onDraw(android.graphics.Canvas p10)
    {
        if (this.isInEditMode()) {
            p10.drawRGB(223, 223, 223);
            android.graphics.Paint v0_3 = new android.graphics.Paint();
            v0_3.setARGB(255, 210, 210, 210);
            v0_3.setTextAlign(android.graphics.Paint$Align.CENTER);
            v0_3.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 0));
            android.graphics.Rect v1_4 = new android.graphics.Rect();
            p10.getClipBounds(v1_4);
            v0_3.setTextSize(((float) v1_4.height()));
            int v3_2 = v1_4.height();
            int v4 = v1_4.width();
            v0_3.setTextAlign(android.graphics.Paint$Align.LEFT);
            v0_3.getTextBounds("?", 0, "?".length(), v1_4);
            p10.drawText("?", (((((float) v4) / 1073741824) - (((float) v1_4.width()) / 1073741824)) - ((float) v1_4.left)), (((((float) v3_2) / 1073741824) + (((float) v1_4.height()) / 1073741824)) - ((float) v1_4.bottom)), v0_3);
        }
        return;
    }

    public void setContentId(int p3)
    {
        if (this.mContentId != p3) {
            if (this.mContent != null) {
                this.mContent.setVisibility(0);
                ((android.support.constraint.ConstraintLayout$LayoutParams) this.mContent.getLayoutParams()).isInPlaceholder = 0;
                this.mContent = 0;
            }
            this.mContentId = p3;
            if (p3 != -1) {
                android.view.View v0_6 = ((android.view.View) this.getParent()).findViewById(p3);
                if (v0_6 != null) {
                    v0_6.setVisibility(8);
                }
            }
            return;
        } else {
            return;
        }
    }

    public void setEmptyVisibility(int p1)
    {
        this.mEmptyVisibility = p1;
        return;
    }

    public void updatePostMeasure(android.support.constraint.ConstraintLayout p5)
    {
        if (this.mContent != null) {
            android.support.constraint.ConstraintLayout$LayoutParams v0_2 = ((android.support.constraint.ConstraintLayout$LayoutParams) this.getLayoutParams());
            android.support.constraint.ConstraintLayout$LayoutParams v1_2 = ((android.support.constraint.ConstraintLayout$LayoutParams) this.mContent.getLayoutParams());
            v1_2.widget.setVisibility(0);
            v0_2.widget.setWidth(v1_2.widget.getWidth());
            v0_2.widget.setHeight(v1_2.widget.getHeight());
            v1_2.widget.setVisibility(8);
            return;
        } else {
            return;
        }
    }

    public void updatePreLayout(android.support.constraint.ConstraintLayout p4)
    {
        if ((this.mContentId == -1) && (!this.isInEditMode())) {
            this.setVisibility(this.mEmptyVisibility);
        }
        this.mContent = p4.findViewById(this.mContentId);
        if (this.mContent != null) {
            ((android.support.constraint.ConstraintLayout$LayoutParams) this.mContent.getLayoutParams()).isInPlaceholder = 1;
            this.mContent.setVisibility(0);
            this.setVisibility(0);
        }
        return;
    }
}
