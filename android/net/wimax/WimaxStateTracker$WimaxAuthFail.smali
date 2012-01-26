.class Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;
.super Ljava/lang/Object;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WimaxAuthFail"
.end annotation


# instance fields
.field nErrorCode:I

.field strError:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "nErrorCode"
    .parameter "strError"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p1, p0, Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    .line 231
    iput-object p2, p0, Landroid/net/wimax/WimaxStateTracker$WimaxAuthFail;->strError:Ljava/lang/String;

    .line 232
    return-void
.end method
