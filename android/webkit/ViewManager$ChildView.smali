.class public Landroid/webkit/ViewManager$ChildView;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildView"
.end annotation


# instance fields
.field public height:I

.field public mView:Landroid/view/View;

.field final synthetic this$0:Landroid/webkit/ViewManager;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method constructor <init>(Landroid/webkit/ViewManager;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/ViewManager$ChildView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/webkit/ViewManager$ChildView;->attachViewOnUIThread()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/ViewManager$ChildView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/webkit/ViewManager$ChildView;->removeViewOnUIThread()V

    return-void
.end method

.method private attachViewOnUIThread()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mReadyToDraw:Z
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$400(Landroid/webkit/ViewManager;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 92
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_23
    return-void
.end method

.method private removeViewOnUIThread()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method attachView(IIII)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 86
    :goto_4
    return-void

    .line 71
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkit/ViewManager$ChildView;->setBounds(IIII)V

    .line 73
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$ChildView$1;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$ChildView$1;-><init>(Landroid/webkit/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method removeView()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 105
    :goto_4
    return-void

    .line 100
    :cond_5
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$ChildView$2;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$ChildView$2;-><init>(Landroid/webkit/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method setBounds(IIII)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 61
    iput p1, p0, Landroid/webkit/ViewManager$ChildView;->x:I

    .line 62
    iput p2, p0, Landroid/webkit/ViewManager$ChildView;->y:I

    .line 63
    iput p3, p0, Landroid/webkit/ViewManager$ChildView;->width:I

    .line 64
    iput p4, p0, Landroid/webkit/ViewManager$ChildView;->height:I

    .line 65
    return-void
.end method
