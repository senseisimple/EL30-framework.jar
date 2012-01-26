.class Landroid/location/AGPSManager$ListenerTransport$1;
.super Landroid/os/Handler;
.source "AGPSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/AGPSManager$ListenerTransport;-><init>(Landroid/location/AGPSManager;Landroid/location/AGPSListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/AGPSManager$ListenerTransport;

.field final synthetic val$this$0:Landroid/location/AGPSManager;


# direct methods
.method constructor <init>(Landroid/location/AGPSManager$ListenerTransport;Landroid/location/AGPSManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Landroid/location/AGPSManager$ListenerTransport$1;->this$1:Landroid/location/AGPSManager$ListenerTransport;

    iput-object p2, p0, Landroid/location/AGPSManager$ListenerTransport$1;->val$this$0:Landroid/location/AGPSManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/location/AGPSManager$ListenerTransport$1;->this$1:Landroid/location/AGPSManager$ListenerTransport;

    #calls: Landroid/location/AGPSManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/location/AGPSManager$ListenerTransport;->access$000(Landroid/location/AGPSManager$ListenerTransport;Landroid/os/Message;)V

    .line 113
    return-void
.end method
