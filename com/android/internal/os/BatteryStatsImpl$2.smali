.class final Lcom/android/internal/os/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/os/BatteryStatsImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 3
    .parameter "in"

    .prologue
    .line 5658
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5656
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$2;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/os/BatteryStatsImpl;
    .registers 3
    .parameter "size"

    .prologue
    .line 5662
    new-array v0, p1, [Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5656
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$2;->newArray(I)[Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    return-object v0
.end method
