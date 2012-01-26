.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addNotification:I = 0x3

.field static final TRANSACTION_animateCollapse:I = 0x8

.field static final TRANSACTION_animateExpand:I = 0x7

.field static final TRANSACTION_disable:I = 0x6

.field static final TRANSACTION_grabScreen:I = 0xb

.field static final TRANSACTION_hideCallOnGoingView:I = 0xa

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_removeNotification:I = 0x5

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_showCallOnGoingView:I = 0x9

.field static final TRANSACTION_updateNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const-string v7, "com.android.internal.statusbar.IStatusBar"

    .line 41
    sparse-switch p1, :sswitch_data_10a

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_a
    return v5

    .line 45
    :sswitch_b
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 46
    goto :goto_a

    .line 50
    :sswitch_12
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    .line 55
    sget-object v5, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 60
    .local v1, _arg1:Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_29
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 62
    goto :goto_a

    .line 58
    .end local v1           #_arg1:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_29

    .line 66
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_33
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 71
    goto :goto_a

    .line 75
    .end local v0           #_arg0:I
    :sswitch_44
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 79
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_63

    .line 80
    sget-object v5, Lcom/android/internal/statusbar/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 85
    .local v1, _arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :goto_5b
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 87
    goto :goto_a

    .line 83
    .end local v1           #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_63
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    goto :goto_5b

    .line 91
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :sswitch_65
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 95
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_84

    .line 96
    sget-object v5, Lcom/android/internal/statusbar/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 101
    .restart local v1       #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :goto_7c
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 103
    goto :goto_a

    .line 99
    .end local v1           #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_84
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    goto :goto_7c

    .line 107
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :sswitch_86
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 110
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeNotification(Landroid/os/IBinder;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 112
    goto/16 :goto_a

    .line 116
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_98
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 121
    goto/16 :goto_a

    .line 125
    .end local v0           #_arg0:I
    :sswitch_aa
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpand()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 128
    goto/16 :goto_a

    .line 132
    :sswitch_b8
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapse()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 135
    goto/16 :goto_a

    .line 139
    :sswitch_c6
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showCallOnGoingView()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 142
    goto/16 :goto_a

    .line 146
    :sswitch_d4
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideCallOnGoingView()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 149
    goto/16 :goto_a

    .line 153
    :sswitch_e2
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 160
    .local v2, _arg2:J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->grabScreen(IIJ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 161
    .local v4, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v4, :cond_105

    .line 163
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_102
    move v5, v6

    .line 169
    goto/16 :goto_a

    .line 167
    :cond_105
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_102

    .line 41
    :sswitch_data_10a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_33
        0x3 -> :sswitch_44
        0x4 -> :sswitch_65
        0x5 -> :sswitch_86
        0x6 -> :sswitch_98
        0x7 -> :sswitch_aa
        0x8 -> :sswitch_b8
        0x9 -> :sswitch_c6
        0xa -> :sswitch_d4
        0xb -> :sswitch_e2
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
