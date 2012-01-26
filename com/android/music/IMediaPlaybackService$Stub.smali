.class public abstract Lcom/android/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/android/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.music.IMediaPlaybackService"

.field static final TRANSACTION_duration:I = 0xb

.field static final TRANSACTION_enqueue:I = 0x13

.field static final TRANSACTION_getAlbumId:I = 0x10

.field static final TRANSACTION_getAlbumName:I = 0xf

.field static final TRANSACTION_getArtistId:I = 0x12

.field static final TRANSACTION_getArtistName:I = 0x11

.field static final TRANSACTION_getAudioId:I = 0x18

.field static final TRANSACTION_getMediaMountedCount:I = 0x1f

.field static final TRANSACTION_getPath:I = 0x17

.field static final TRANSACTION_getQueue:I = 0x14

.field static final TRANSACTION_getQueuePosition:I = 0x4

.field static final TRANSACTION_getRepeatMode:I = 0x1e

.field static final TRANSACTION_getShuffleMode:I = 0x1a

.field static final TRANSACTION_getTrackName:I = 0xe

.field static final TRANSACTION_isPlaying:I = 0x5

.field static final TRANSACTION_moveQueueItem:I = 0x15

.field static final TRANSACTION_next:I = 0xa

.field static final TRANSACTION_open:I = 0x3

.field static final TRANSACTION_openFile:I = 0x1

.field static final TRANSACTION_openFileAsync:I = 0x2

.field static final TRANSACTION_pause:I = 0x7

.field static final TRANSACTION_play:I = 0x8

.field static final TRANSACTION_position:I = 0xc

.field static final TRANSACTION_prev:I = 0x9

.field static final TRANSACTION_removeTrack:I = 0x1c

.field static final TRANSACTION_removeTracks:I = 0x1b

.field static final TRANSACTION_seek:I = 0xd

.field static final TRANSACTION_setQueuePosition:I = 0x16

.field static final TRANSACTION_setRepeatMode:I = 0x1d

.field static final TRANSACTION_setShuffleMode:I = 0x19

.field static final TRANSACTION_stop:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.android.music.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/android/music/IMediaPlaybackService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/music/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/music/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.android.music.IMediaPlaybackService"

    .line 38
    sparse-switch p1, :sswitch_data_252

    .line 313
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 42
    :sswitch_c
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_b

    .line 47
    :sswitch_13
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    move v2, v6

    .line 52
    .local v2, _arg1:Z
    :goto_23
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->openFile(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 54
    goto :goto_b

    .end local v2           #_arg1:Z
    :cond_2b
    move v2, v8

    .line 51
    goto :goto_23

    .line 58
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2d
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->openFileAsync(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 63
    goto :goto_b

    .line 67
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3e
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 71
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->open([JI)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 74
    goto :goto_b

    .line 78
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_53
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v3

    .line 80
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 82
    goto :goto_b

    .line 86
    .end local v3           #_result:I
    :sswitch_64
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 88
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_78

    move v5, v6

    :goto_73
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 90
    goto :goto_b

    :cond_78
    move v5, v8

    .line 89
    goto :goto_73

    .line 94
    .end local v3           #_result:Z
    :sswitch_7a
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->stop()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 97
    goto :goto_b

    .line 101
    :sswitch_87
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->pause()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 104
    goto/16 :goto_b

    .line 108
    :sswitch_95
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->play()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 111
    goto/16 :goto_b

    .line 115
    :sswitch_a3
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->prev()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 118
    goto/16 :goto_b

    .line 122
    :sswitch_b1
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->next()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 125
    goto/16 :goto_b

    .line 129
    :sswitch_bf
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 131
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 133
    goto/16 :goto_b

    .line 137
    .end local v3           #_result:J
    :sswitch_d1
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v3

    .line 139
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 141
    goto/16 :goto_b

    .line 145
    .end local v3           #_result:J
    :sswitch_e3
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 148
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 149
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 151
    goto/16 :goto_b

    .line 155
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_f9
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 159
    goto/16 :goto_b

    .line 163
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_10b
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 167
    goto/16 :goto_b

    .line 171
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_11d
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 173
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 175
    goto/16 :goto_b

    .line 179
    .end local v3           #_result:J
    :sswitch_12f
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 183
    goto/16 :goto_b

    .line 187
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_141
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v3

    .line 189
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 191
    goto/16 :goto_b

    .line 195
    .end local v3           #_result:J
    :sswitch_153
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 199
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 202
    goto/16 :goto_b

    .line 206
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_169
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v3

    .line 208
    .local v3, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    move v5, v6

    .line 210
    goto/16 :goto_b

    .line 214
    .end local v3           #_result:[J
    :sswitch_17b
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 221
    goto/16 :goto_b

    .line 225
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_191
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 230
    goto/16 :goto_b

    .line 234
    .end local v0           #_arg0:I
    :sswitch_1a3
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 238
    goto/16 :goto_b

    .line 242
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1b5
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v3

    .line 244
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 246
    goto/16 :goto_b

    .line 250
    .end local v3           #_result:J
    :sswitch_1c7
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 255
    goto/16 :goto_b

    .line 259
    .end local v0           #_arg0:I
    :sswitch_1d9
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 261
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 263
    goto/16 :goto_b

    .line 267
    .end local v3           #_result:I
    :sswitch_1eb
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v3

    .line 273
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 275
    goto/16 :goto_b

    .line 279
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_result:I
    :sswitch_205
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 282
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/music/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v3

    .line 283
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 285
    goto/16 :goto_b

    .line 289
    .end local v0           #_arg0:J
    .end local v3           #_result:I
    :sswitch_21b
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 294
    goto/16 :goto_b

    .line 298
    .end local v0           #_arg0:I
    :sswitch_22d
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 300
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 302
    goto/16 :goto_b

    .line 306
    .end local v3           #_result:I
    :sswitch_23f
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 308
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 310
    goto/16 :goto_b

    .line 38
    nop

    :sswitch_data_252
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_53
        0x5 -> :sswitch_64
        0x6 -> :sswitch_7a
        0x7 -> :sswitch_87
        0x8 -> :sswitch_95
        0x9 -> :sswitch_a3
        0xa -> :sswitch_b1
        0xb -> :sswitch_bf
        0xc -> :sswitch_d1
        0xd -> :sswitch_e3
        0xe -> :sswitch_f9
        0xf -> :sswitch_10b
        0x10 -> :sswitch_11d
        0x11 -> :sswitch_12f
        0x12 -> :sswitch_141
        0x13 -> :sswitch_153
        0x14 -> :sswitch_169
        0x15 -> :sswitch_17b
        0x16 -> :sswitch_191
        0x17 -> :sswitch_1a3
        0x18 -> :sswitch_1b5
        0x19 -> :sswitch_1c7
        0x1a -> :sswitch_1d9
        0x1b -> :sswitch_1eb
        0x1c -> :sswitch_205
        0x1d -> :sswitch_21b
        0x1e -> :sswitch_22d
        0x1f -> :sswitch_23f
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
