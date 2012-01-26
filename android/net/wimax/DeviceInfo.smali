.class public Landroid/net/wimax/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wimax/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field MacAddress:Ljava/lang/String;

.field strAsicVersion:Ljava/lang/String;

.field strHwVersion:Ljava/lang/String;

.field strMacAddress:Ljava/lang/String;

.field strRfVersion:Ljava/lang/String;

.field strSwVersion:Ljava/lang/String;

.field strVendorName:Ljava/lang/String;

.field strVendorSpecificInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    new-instance v0, Landroid/net/wimax/DeviceInfo$1;

    invoke-direct {v0}, Landroid/net/wimax/DeviceInfo$1;-><init>()V

    sput-object v0, Landroid/net/wimax/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getAsicVersion()Landroid/net/wimax/DeviceVersion;
    .registers 3

    .prologue
    .line 35
    new-instance v0, Landroid/net/wimax/DeviceVersion;

    iget-object v1, p0, Landroid/net/wimax/DeviceInfo;->strAsicVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wimax/DeviceVersion;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, AsicVersion:Landroid/net/wimax/DeviceVersion;
    return-object v0
.end method

.method public getHwVersion()Landroid/net/wimax/DeviceVersion;
    .registers 3

    .prologue
    .line 40
    new-instance v0, Landroid/net/wimax/DeviceVersion;

    iget-object v1, p0, Landroid/net/wimax/DeviceInfo;->strHwVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wimax/DeviceVersion;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, HwVersion:Landroid/net/wimax/DeviceVersion;
    return-object v0
.end method

.method public getMacAddress()[B
    .registers 3

    .prologue
    .line 45
    iget-object v1, p0, Landroid/net/wimax/DeviceInfo;->MacAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 46
    .local v0, temp:[B
    return-object v0
.end method

.method public getMacAddressString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRfVersion()Landroid/net/wimax/DeviceVersion;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Landroid/net/wimax/DeviceVersion;

    iget-object v1, p0, Landroid/net/wimax/DeviceInfo;->strRfVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wimax/DeviceVersion;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, RfVersion:Landroid/net/wimax/DeviceVersion;
    return-object v0
.end method

.method public getSwVersion()Landroid/net/wimax/DeviceVersion;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Landroid/net/wimax/DeviceVersion;

    iget-object v1, p0, Landroid/net/wimax/DeviceInfo;->strSwVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wimax/DeviceVersion;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, SwVersion:Landroid/net/wimax/DeviceVersion;
    return-object v0
.end method

.method public getVendorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strVendorName:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorSpecificInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strVendorSpecificInfo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "AsicVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceInfo;->strAsicVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HwVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceInfo;->strHwVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceInfo;->MacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", strMacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceInfo;->strMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RfVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceInfo;->strRfVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SwVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceInfo;->strSwVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", strVendorName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceInfo;->strVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", strVendorSpecificInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceInfo;->strVendorSpecificInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strAsicVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strHwVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->MacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strRfVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strSwVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strVendorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroid/net/wimax/DeviceInfo;->strVendorSpecificInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return-void
.end method
