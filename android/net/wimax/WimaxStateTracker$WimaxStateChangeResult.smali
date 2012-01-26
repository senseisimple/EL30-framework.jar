.class Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;
.super Ljava/lang/Object;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WimaxStateChangeResult"
.end annotation


# instance fields
.field info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field state:Landroid/net/wimax/WimaxState;


# direct methods
.method constructor <init>(Landroid/net/wimax/WimaxState;Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/wimax/WimaxState;

    .line 222
    iput-object p2, p0, Landroid/net/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 223
    return-void
.end method
