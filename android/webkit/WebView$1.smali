.class Landroid/webkit/WebView$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 1101
    if-eqz p1, :cond_1a

    .line 1102
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1104
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Landroid/webkit/WebView;->access$000(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)V

    .line 1108
    :cond_1a
    return-void
.end method

.method public onZoom(Z)V
    .registers 3
    .parameter "zoomIn"

    .prologue
    .line 1111
    if-eqz p1, :cond_d

    .line 1112
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    .line 1117
    :goto_7
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)V

    .line 1118
    return-void

    .line 1114
    :cond_d
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto :goto_7
.end method
