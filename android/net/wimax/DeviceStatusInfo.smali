.class public Landroid/net/wimax/DeviceStatusInfo;
.super Ljava/lang/Object;
.source "DeviceStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;,
        Landroid/net/wimax/DeviceStatusInfo$StatusReason;,
        Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wimax/DeviceStatusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enumConnectionProgressInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private enumDeviceStatus:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

.field private enumStatusReason:Landroid/net/wimax/DeviceStatusInfo$StatusReason;

.field private mConnectionProgressInfo:I

.field private mDeviceStatus:I

.field private mStatusReason:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 202
    new-instance v0, Landroid/net/wimax/DeviceStatusInfo$1;

    invoke-direct {v0}, Landroid/net/wimax/DeviceStatusInfo$1;-><init>()V

    sput-object v0, Landroid/net/wimax/DeviceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method constructor <init>(III)V
    .registers 4
    .parameter "deviceStatus"
    .parameter "statusReason"
    .parameter "connectionProgressInfo"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wimax/DeviceStatusInfo;->setDeviceStatus(III)V

    .line 113
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionProgressInfo()Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    .registers 7

    .prologue
    .line 163
    iget-object v4, p0, Landroid/net/wimax/DeviceStatusInfo;->enumConnectionProgressInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-static {}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->values()[Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    move-result-object v0

    .local v0, arr$:[Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 164
    .local v1, eInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    invoke-virtual {v1}, Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v4

    iget v5, p0, Landroid/net/wimax/DeviceStatusInfo;->mConnectionProgressInfo:I

    if-ne v4, v5, :cond_16

    move-object v4, v1

    .line 168
    .end local v1           #eInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    :goto_15
    return-object v4

    .line 163
    .restart local v1       #eInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 168
    .end local v1           #eInfo:Landroid/net/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    :cond_19
    const/4 v4, 0x0

    goto :goto_15
.end method

.method public getDeviceStatus()Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    .registers 7

    .prologue
    .line 120
    iget-object v4, p0, Landroid/net/wimax/DeviceStatusInfo;->enumDeviceStatus:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    invoke-static {}, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->values()[Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;

    move-result-object v0

    .local v0, arr$:[Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 121
    .local v1, eDeviceStatus:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    invoke-virtual {v1}, Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;->ordinal()I

    move-result v4

    iget v5, p0, Landroid/net/wimax/DeviceStatusInfo;->mDeviceStatus:I

    if-ne v4, v5, :cond_16

    move-object v4, v1

    .line 125
    .end local v1           #eDeviceStatus:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    :goto_15
    return-object v4

    .line 120
    .restart local v1       #eDeviceStatus:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 125
    .end local v1           #eDeviceStatus:Landroid/net/wimax/DeviceStatusInfo$DeviceStatus;
    :cond_19
    const/4 v4, 0x0

    goto :goto_15
.end method

.method public getStatusReason()Landroid/net/wimax/DeviceStatusInfo$StatusReason;
    .registers 7

    .prologue
    .line 148
    iget-object v4, p0, Landroid/net/wimax/DeviceStatusInfo;->enumStatusReason:Landroid/net/wimax/DeviceStatusInfo$StatusReason;

    invoke-static {}, Landroid/net/wimax/DeviceStatusInfo$StatusReason;->values()[Landroid/net/wimax/DeviceStatusInfo$StatusReason;

    move-result-object v0

    .local v0, arr$:[Landroid/net/wimax/DeviceStatusInfo$StatusReason;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 149
    .local v1, eStatusReason:Landroid/net/wimax/DeviceStatusInfo$StatusReason;
    invoke-virtual {v1}, Landroid/net/wimax/DeviceStatusInfo$StatusReason;->ordinal()I

    move-result v4

    iget v5, p0, Landroid/net/wimax/DeviceStatusInfo;->mStatusReason:I

    if-ne v4, v5, :cond_16

    move-object v4, v1

    .line 153
    .end local v1           #eStatusReason:Landroid/net/wimax/DeviceStatusInfo$StatusReason;
    :goto_15
    return-object v4

    .line 148
    .restart local v1       #eStatusReason:Landroid/net/wimax/DeviceStatusInfo$StatusReason;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 153
    .end local v1           #eStatusReason:Landroid/net/wimax/DeviceStatusInfo$StatusReason;
    :cond_19
    const/4 v4, 0x0

    goto :goto_15
.end method

.method setDeviceStatus(III)V
    .registers 4
    .parameter "deviceStatus"
    .parameter "statusReason"
    .parameter "connectionProgressInfo"

    .prologue
    .line 137
    iput p1, p0, Landroid/net/wimax/DeviceStatusInfo;->mDeviceStatus:I

    .line 138
    iput p2, p0, Landroid/net/wimax/DeviceStatusInfo;->mStatusReason:I

    .line 139
    iput p3, p0, Landroid/net/wimax/DeviceStatusInfo;->mConnectionProgressInfo:I

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceStatusInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "DeviceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/DeviceStatusInfo;->mDeviceStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", StatusReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/DeviceStatusInfo;->mStatusReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ConnectionProgressInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/DeviceStatusInfo;->mConnectionProgressInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 193
    iget v0, p0, Landroid/net/wimax/DeviceStatusInfo;->mDeviceStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/net/wimax/DeviceStatusInfo;->mStatusReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Landroid/net/wimax/DeviceStatusInfo;->mConnectionProgressInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
