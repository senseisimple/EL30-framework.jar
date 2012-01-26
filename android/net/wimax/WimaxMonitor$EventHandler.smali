.class Landroid/net/wimax/WimaxMonitor$EventHandler;
.super Landroid/os/Handler;
.source "WimaxMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/WimaxMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wimax/WimaxMonitor;


# direct methods
.method constructor <init>(Landroid/net/wimax/WimaxMonitor;Landroid/os/Handler$Callback;)V
    .registers 3
    .parameter
    .parameter "callback"

    .prologue
    .line 161
    iput-object p1, p0, Landroid/net/wimax/WimaxMonitor$EventHandler;->this$0:Landroid/net/wimax/WimaxMonitor;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 163
    return-void
.end method
