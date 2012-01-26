.class Landroid/net/wimax/WimaxMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WimaxMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/WimaxMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wimax/WimaxMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wimax/WimaxMonitor;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Landroid/net/wimax/WimaxMonitor$MonitorThread;->this$0:Landroid/net/wimax/WimaxMonitor;

    .line 105
    const-string v0, "WimaxMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Landroid/net/wimax/WimaxMonitor$MonitorThread;->this$0:Landroid/net/wimax/WimaxMonitor;

    #getter for: Landroid/net/wimax/WimaxMonitor;->m_bLog:Z
    invoke-static {v0}, Landroid/net/wimax/WimaxMonitor;->access$000(Landroid/net/wimax/WimaxMonitor;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "WimaxMonitor"

    const-string v1, "<----- MonitorThread Start ----->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_f
    return-void
.end method
