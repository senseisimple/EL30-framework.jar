.class Landroid/media/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 10
    .parameter "error"

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    sparse-switch p1, :sswitch_data_3e

    .line 236
    :cond_7
    :goto_7
    return-void

    .line 220
    :sswitch_8
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v7, 0x5dc

    move v5, v4

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 223
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0, v4}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Z)Z

    goto :goto_7

    .line 227
    :sswitch_23
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 228
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x6

    move v5, v4

    move v7, v4

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 230
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Z)Z

    goto :goto_7

    .line 218
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_23
        0x64 -> :sswitch_8
    .end sparse-switch
.end method
