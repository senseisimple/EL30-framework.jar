.class Landroid/widget/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 10

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 130
    .local v6, anchor:Landroid/view/View;
    if-eqz v6, :cond_45

    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 131
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 134
    .local v8, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mAnchorXoff:I
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$200(Landroid/widget/PopupWindow;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mAnchorYoff:I
    invoke-static {v3}, Landroid/widget/PopupWindow;->access$300(Landroid/widget/PopupWindow;)I

    move-result v3

    #calls: Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v8, v2, v3}, Landroid/widget/PopupWindow;->access$400(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    #calls: Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v0, v1}, Landroid/widget/PopupWindow;->access$500(Landroid/widget/PopupWindow;Z)V

    .line 135
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    .line 142
    .end local v6           #anchor:Landroid/view/View;
    .end local v8           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_45
    :goto_45
    return-void

    .line 137
    :catch_46
    move-exception v0

    move-object v7, v0

    .line 139
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method
