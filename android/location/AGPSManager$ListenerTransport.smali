.class Landroid/location/AGPSManager$ListenerTransport;
.super Landroid/location/IAGPSListener$Stub;
.source "AGPSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/AGPSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_CONN_CHANGED:I = 0x1

.field private static final TYPE_LBSREQUEST_CHANGED:I = 0x3

.field private static final TYPE_NMEA_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/AGPSListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/location/AGPSManager;


# direct methods
.method constructor <init>(Landroid/location/AGPSManager;Landroid/location/AGPSListener;)V
    .registers 5
    .parameter
    .parameter "listener"

    .prologue
    .line 106
    iput-object p1, p0, Landroid/location/AGPSManager$ListenerTransport;->this$0:Landroid/location/AGPSManager;

    invoke-direct {p0}, Landroid/location/IAGPSListener$Stub;-><init>()V

    .line 107
    const-string v0, "AGpsManager"

    const-string v1, "Constructor: ListenerTransport AGPS "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p2, p0, Landroid/location/AGPSManager$ListenerTransport;->mListener:Landroid/location/AGPSListener;

    .line 109
    new-instance v0, Landroid/location/AGPSManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/AGPSManager$ListenerTransport$1;-><init>(Landroid/location/AGPSManager$ListenerTransport;Landroid/location/AGPSManager;)V

    iput-object v0, p0, Landroid/location/AGPSManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const-string v8, "AGpsManager"

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_58

    .line 164
    :goto_7
    return-void

    .line 147
    :pswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, Nmea:Ljava/lang/String;
    const-string v0, "AGpsManager"

    const-string v0, "TYPE_NMEA_CHANGED"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Landroid/location/AGPSManager$ListenerTransport;->mListener:Landroid/location/AGPSListener;

    invoke-interface {v0, v6}, Landroid/location/AGPSListener;->onNMEAChanged(Ljava/lang/String;)V

    goto :goto_7

    .line 154
    .end local v6           #Nmea:Ljava/lang/String;
    :pswitch_19
    iget-object v0, p0, Landroid/location/AGPSManager$ListenerTransport;->this$0:Landroid/location/AGPSManager;

    iget-object v0, v0, Landroid/location/AGPSManager;->b:Landroid/os/Bundle;

    const-string v7, "NotifyType"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 155
    .local v1, NotifyType:I
    iget-object v0, p0, Landroid/location/AGPSManager$ListenerTransport;->this$0:Landroid/location/AGPSManager;

    iget-object v0, v0, Landroid/location/AGPSManager;->b:Landroid/os/Bundle;

    const-string v7, "RequestorType"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, RequestorType:I
    iget-object v0, p0, Landroid/location/AGPSManager$ListenerTransport;->this$0:Landroid/location/AGPSManager;

    iget-object v0, v0, Landroid/location/AGPSManager;->b:Landroid/os/Bundle;

    const-string v7, "RequestorName"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, RequestorName:Ljava/lang/String;
    iget-object v0, p0, Landroid/location/AGPSManager$ListenerTransport;->this$0:Landroid/location/AGPSManager;

    iget-object v0, v0, Landroid/location/AGPSManager;->b:Landroid/os/Bundle;

    const-string v7, "ClientType"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 158
    .local v4, ClientType:I
    iget-object v0, p0, Landroid/location/AGPSManager$ListenerTransport;->this$0:Landroid/location/AGPSManager;

    iget-object v0, v0, Landroid/location/AGPSManager;->b:Landroid/os/Bundle;

    const-string v7, "ClientName"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, ClientName:Ljava/lang/String;
    const-string v0, "AGpsManager"

    const-string v0, "TYPE_LBSREQUEST_CHANGED"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Landroid/location/AGPSManager$ListenerTransport;->mListener:Landroid/location/AGPSListener;

    invoke-interface/range {v0 .. v5}, Landroid/location/AGPSListener;->onLBSRequest(IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    .line 145
    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_8
        :pswitch_19
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/location/AGPSManager$ListenerTransport;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/location/AGPSManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLBSRequest(IILjava/lang/String;ILjava/lang/String;)V
    .registers 10
    .parameter "NotifyType"
    .parameter "RequestorType"
    .parameter "RequestorName"
    .parameter "ClientType"
    .parameter "ClientName"

    .prologue
    .line 119
    const-string v2, "AGpsManager"

    const-string/jumbo v3, "onConnectionRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 122
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "NotifyType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v2, "RequestorType"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v2, "ClientType"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v2, "RequestorName"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "ClientName"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object v2, p0, Landroid/location/AGPSManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method

.method public onNMEAChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "Nmea"

    .prologue
    .line 135
    const-string v1, "AGpsManager"

    const-string/jumbo v2, "onNMEARequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Landroid/location/AGPSManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method
