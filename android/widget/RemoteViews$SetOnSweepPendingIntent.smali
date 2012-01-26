.class Landroid/widget/RemoteViews$SetOnSweepPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnSweepPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x7


# instance fields
.field basisPoint:F

.field direction:I

.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;I)V
    .registers 6
    .parameter
    .parameter "id"
    .parameter "pendingIntent"
    .parameter "direction"

    .prologue
    .line 480
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 481
    iput p2, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->viewId:I

    .line 482
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 483
    iput p4, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->direction:I

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    .line 485
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .parameter
    .parameter "parcel"

    .prologue
    .line 487
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->viewId:I

    .line 489
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->direction:I

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    .line 492
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .registers 5
    .parameter "root"

    .prologue
    .line 504
    iget v2, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_14

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_14

    .line 506
    new-instance v1, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnSweepPendingIntent;)V

    .line 532
    .local v1, touchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    .end local v1           #touchListener:Landroid/view/View$OnTouchListener;
    :cond_14
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 495
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 498
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->direction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 500
    return-void
.end method
