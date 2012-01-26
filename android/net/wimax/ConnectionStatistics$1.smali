.class final Landroid/net/wimax/ConnectionStatistics$1;
.super Ljava/lang/Object;
.source "ConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/ConnectionStatistics;
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
        "Landroid/net/wimax/ConnectionStatistics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/ConnectionStatistics;
    .registers 5
    .parameter "in"

    .prologue
    .line 196
    new-instance v0, Landroid/net/wimax/ConnectionStatistics;

    invoke-direct {v0}, Landroid/net/wimax/ConnectionStatistics;-><init>()V

    .line 197
    .local v0, info:Landroid/net/wimax/ConnectionStatistics;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxBytes:J
    invoke-static {v0, v1, v2}, Landroid/net/wimax/ConnectionStatistics;->access$002(Landroid/net/wimax/ConnectionStatistics;J)J

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxPackets:J
    invoke-static {v0, v1, v2}, Landroid/net/wimax/ConnectionStatistics;->access$102(Landroid/net/wimax/ConnectionStatistics;J)J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxBytes:J
    invoke-static {v0, v1, v2}, Landroid/net/wimax/ConnectionStatistics;->access$202(Landroid/net/wimax/ConnectionStatistics;J)J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxPackets:J
    invoke-static {v0, v1, v2}, Landroid/net/wimax/ConnectionStatistics;->access$302(Landroid/net/wimax/ConnectionStatistics;J)J

    .line 201
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/net/wimax/ConnectionStatistics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/ConnectionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wimax/ConnectionStatistics;
    .registers 3
    .parameter "size"

    .prologue
    .line 205
    new-array v0, p1, [Landroid/net/wimax/ConnectionStatistics;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/net/wimax/ConnectionStatistics$1;->newArray(I)[Landroid/net/wimax/ConnectionStatistics;

    move-result-object v0

    return-object v0
.end method
