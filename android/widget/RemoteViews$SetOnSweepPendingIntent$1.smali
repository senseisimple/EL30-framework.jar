.class Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnSweepPendingIntent;)V
    .registers 2
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 508
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    :cond_8
    :goto_8
    :pswitch_8
    move v0, v8

    .line 529
    :goto_9
    return v0

    .line 510
    :pswitch_a
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    goto :goto_8

    .line 513
    :pswitch_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 515
    .local v6, currentPoint:F
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    iget v0, v0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->direction:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    iget v1, v1, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    sub-float v1, v6, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    .line 518
    :try_start_29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_3e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_29 .. :try_end_3e} :catch_40

    :goto_3e
    move v0, v8

    .line 525
    goto :goto_9

    .line 522
    :catch_40
    move-exception v0

    move-object v7, v0

    .line 523
    .local v7, e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 508
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method
