package android.support.constraint.solver.widgets;
public class Rectangle {
    public int height;
    public int width;
    public int x;
    public int y;

    public Rectangle()
    {
        return;
    }

    public boolean contains(int p3, int p4)
    {
        if ((p3 < this.x) || ((p3 >= (this.x + this.width)) || ((p4 < this.y) || (p4 >= (this.y + this.height))))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public int getCenterX()
    {
        return ((this.x + this.width) / 2);
    }

    public int getCenterY()
    {
        return ((this.y + this.height) / 2);
    }

    void grow(int p3, int p4)
    {
        this.x = (this.x - p3);
        this.y = (this.y - p4);
        this.width = (this.width + (p3 * 2));
        this.height = (this.height + (p4 * 2));
        return;
    }

    boolean intersects(android.support.constraint.solver.widgets.Rectangle p4)
    {
        if ((this.x < p4.x) || ((this.x >= (p4.x + p4.width)) || ((this.y < p4.y) || (this.y >= (p4.y + p4.height))))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void setBounds(int p1, int p2, int p3, int p4)
    {
        this.x = p1;
        this.y = p2;
        this.width = p3;
        this.height = p4;
        return;
    }
}
