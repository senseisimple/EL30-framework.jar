.class final Landroid/net/wimax/WimaxInfo$1;
.super Ljava/lang/Object;
.source "WimaxInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/WimaxInfo;
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
        "Landroid/net/wimax/WimaxInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/WimaxInfo;
    .registers 4
    .parameter "in"

    .prologue
    .line 251
    new-instance v0, Landroid/net/wimax/WimaxInfo;

    invoke-direct {v0}, Landroid/net/wimax/WimaxInfo;-><init>()V

    .line 252
    .local v0, info:Landroid/net/wimax/WimaxInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/WimaxInfo;->mNSPID:I
    invoke-static {v0, v1}, Landroid/net/wimax/WimaxInfo;->access$002(Landroid/net/wimax/WimaxInfo;I)I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wimax/WimaxInfo;->mBSID:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wimax/WimaxInfo;->access$102(Landroid/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wimax/WimaxInfo;->access$202(Landroid/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxInfo;->setFREQ(I)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxInfo;->setRssi(I)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxInfo;->setCINR(I)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxInfo;->setTxPower(I)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxInfo;->setIPAddress(I)V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wimax/WimaxInfo;->mConnectionTime:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wimax/WimaxInfo;->access$302(Landroid/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxInfo;->setLinkSpeed(I)V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wimax/WimaxInfo;->mMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wimax/WimaxInfo;->access$402(Landroid/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Landroid/net/wimax/WimaxInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/WimaxInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wimax/WimaxInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 267
    new-array v0, p1, [Landroid/net/wimax/WimaxInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Landroid/net/wimax/WimaxInfo$1;->newArray(I)[Landroid/net/wimax/WimaxInfo;

    move-result-object v0

    return-object v0
.end method
