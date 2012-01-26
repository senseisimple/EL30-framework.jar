.class public Landroid/media/VolumeCustomizer;
.super Ljava/lang/Object;
.source "VolumeCustomizer.java"


# static fields
.field public static final AF:I = 0x3

.field public static final ALARM:I = 0x4

.field public static final BLUETOOTH_SCO:I = 0x6

.field public static final BOOTSOUND:I = 0x6

.field public static final CAMCORDING:I = 0x4

.field public static final DTMF:I = 0x8

.field public static final ENFORCED:I = 0x7

.field public static final FILE_NAME_EARPIECE:Ljava/lang/String; = "/system/etc/audio/stream_earpiece.txt"

.field public static final FILE_NAME_HEADSET:Ljava/lang/String; = "/system/etc/audio/stream_headset.txt"

.field public static final FILE_NAME_SITUATION:Ljava/lang/String; = "/system/etc/audio/situation.txt"

.field public static final FILE_NAME_SPEAKER:Ljava/lang/String; = "/system/etc/audio/stream_speaker.txt"

.field public static final H3GP:I = 0xb

.field public static final KEYTONE:I = 0x0

.field public static final MAX_STREAM_3GP:I = 0x7

.field public static final MAX_STREAM_ALARM:I = 0x9

.field public static final MAX_STREAM_BLUETOOTH_SCO:I = 0x11

.field public static final MAX_STREAM_DTMF:I = 0x11

.field public static final MAX_STREAM_MIDI:I = 0x11

.field public static final MAX_STREAM_MUSIC:I = 0x11

.field public static final MAX_STREAM_NOTIFICATION:I = 0x9

.field public static final MAX_STREAM_RING:I = 0x9

.field public static final MAX_STREAM_SYSTEM:I = 0x9

.field public static final MAX_STREAM_SYSTEM_ENFORCED:I = 0x9

.field public static final MAX_STREAM_TTS:I = 0x11

.field public static final MAX_STREAM_VOICE_CALL:I = 0x7

.field public static final MIDI:I = 0xa

.field public static final MUSIC:I = 0x3

.field public static final NOTIFI:I = 0x5

.field public static final RING:I = 0x2

.field public static final SET_STREAM_EARPIECE:I = 0x4

.field public static final SET_STREAM_HEADSET:I = 0x2

.field public static final SET_STREAM_SITUATION:I = 0x3

.field public static final SET_STREAM_SPEAKER:I = 0x1

.field public static final SHUTTER:I = 0x2

.field public static final SITUATION_MIDI:I = 0x7

.field public static final SRS_CSHP:I = 0x0

.field public static final SRS_WOW_EXTREME:I = 0x1

.field public static final SRS_WOW_NORMAL:I = 0x2

.field public static final SYSTEM:I = 0x1

.field public static final TEMP1:I = 0x8

.field public static final TEMP2:I = 0x9

.field public static final TEMP3:I = 0xa

.field public static final TEMP4:I = 0xb

.field public static final TOUCH_TONE:I = 0x5

.field public static final TTS:I = 0x9

.field public static final VOICE_CALL:I = 0x0

.field public static final VOLUMEKEY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-string/jumbo v0, "volcustomjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native HwCodecRead(II)I
.end method

.method public static native HwCodecWrite(III)I
.end method

.method public static native getHwCodecTuningControl()I
.end method

.method public static native getSituationVolume(II)F
.end method

.method public static native reloadVolumeTable(I)I
.end method

.method public static native setHwCodecTuningControl(I)I
.end method

.method public static native setSoundSolution(I)I
.end method
