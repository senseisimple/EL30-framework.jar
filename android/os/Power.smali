.class public Landroid/os/Power;
.super Ljava/lang/Object;
.source "Power.java"


# static fields
.field public static final BRIGHTNESS_DIM:I = 0x14

.field public static final BRIGHTNESS_LOW_BATTERY:I = 0x19

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xfa

.field public static final FULL_WAKE_LOCK:I = 0x2

.field public static final LOW_BATTERY_THRESHOLD:I = 0xa

.field public static final PARTIAL_WAKE_LOCK:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static native acquireDVFSlock(II)I
.end method

.method public static native acquireWakeLock(ILjava/lang/String;)V
.end method

.method public static reboot(Ljava/lang/String;)V
    .registers 1
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Landroid/os/Power;->rebootNative(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private static native rebootNative(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native releaseWakeLock(Ljava/lang/String;)V
.end method

.method public static native setLastUserActivityTimeout(J)I
.end method

.method public static native setScreenState(Z)I
.end method

.method public static native shutdown()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
