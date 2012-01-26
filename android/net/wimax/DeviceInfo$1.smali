.class final Landroid/net/wimax/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/DeviceInfo;
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
        "Landroid/net/wimax/DeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/DeviceInfo;
    .registers 4
    .parameter "in"

    .prologue
    .line 108
    new-instance v0, Landroid/net/wimax/DeviceInfo;

    invoke-direct {v0}, Landroid/net/wimax/DeviceInfo;-><init>()V

    .line 110
    .local v0, info:Landroid/net/wimax/DeviceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wimax/DeviceInfo;->strAsicVersion:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wimax/DeviceInfo;->strHwVersion:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wimax/DeviceInfo;->MacAddress:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wimax/DeviceInfo;->strMacAddress:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wimax/DeviceInfo;->strRfVersion:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wimax/DeviceInfo;->strSwVersion:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wimax/DeviceInfo;->strVendorName:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wimax/DeviceInfo;->strVendorSpecificInfo:Ljava/lang/String;

    .line 131
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/net/wimax/DeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wimax/DeviceInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 135
    new-array v0, p1, [Landroid/net/wimax/DeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/net/wimax/DeviceInfo$1;->newArray(I)[Landroid/net/wimax/DeviceInfo;

    move-result-object v0

    return-object v0
.end method
