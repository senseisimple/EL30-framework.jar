.class Landroid/telephony/PhoneStateListener$2;
.super Landroid/os/Handler;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_80

    .line 390
    .end local p0
    :goto_7
    return-void

    .line 354
    .restart local p0
    :sswitch_8
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/telephony/ServiceState;

    invoke-virtual {v0, p0}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_7

    .line 357
    .restart local p0
    :sswitch_12
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    goto :goto_7

    .line 360
    :sswitch_1a
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_25

    move v1, v3

    :goto_21
    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto :goto_7

    :cond_25
    move v1, v2

    goto :goto_21

    .line 363
    :sswitch_27
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_32

    move v1, v3

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto :goto_7

    :cond_32
    move v1, v2

    goto :goto_2e

    .line 366
    :sswitch_34
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/telephony/CellLocation;

    invoke-virtual {v0, p0}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    goto :goto_7

    .line 369
    .restart local p0
    :sswitch_3e
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_7

    .line 372
    .restart local p0
    :sswitch_4a
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 373
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    goto :goto_7

    .line 376
    :sswitch_5b
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    goto :goto_7

    .line 380
    :sswitch_63
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneStateListener;->onDunDataConnectionStateChanged(II)V

    goto :goto_7

    .line 383
    :sswitch_6d
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDunDataActivity(I)V

    goto :goto_7

    .line 387
    :sswitch_75
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p0}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_7

    .line 352
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_12
        0x4 -> :sswitch_1a
        0x8 -> :sswitch_27
        0x10 -> :sswitch_34
        0x20 -> :sswitch_3e
        0x40 -> :sswitch_4a
        0x80 -> :sswitch_5b
        0x100 -> :sswitch_75
        0x200 -> :sswitch_6d
        0x400 -> :sswitch_63
    .end sparse-switch
.end method
