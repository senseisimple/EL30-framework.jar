.class final Landroid/net/wimax/structs/NspInfo$1;
.super Ljava/lang/Object;
.source "NspInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/structs/NspInfo;
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
        "Landroid/net/wimax/structs/NspInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/structs/NspInfo;
    .registers 4
    .parameter "in"

    .prologue
    .line 133
    new-instance v0, Landroid/net/wimax/structs/NspInfo;

    invoke-direct {v0}, Landroid/net/wimax/structs/NspInfo;-><init>()V

    .line 134
    .local v0, info:Landroid/net/wimax/structs/NspInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_fCinr:F
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$002(Landroid/net/wimax/structs/NspInfo;F)F

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_nCinrInDB:I
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$102(Landroid/net/wimax/structs/NspInfo;I)I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_strNetworkName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$202(Landroid/net/wimax/structs/NspInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_nNspId:I
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$302(Landroid/net/wimax/structs/NspInfo;I)I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_strRealm:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$402(Landroid/net/wimax/structs/NspInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_fRssi:F
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$502(Landroid/net/wimax/structs/NspInfo;F)F

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_nRssiInDBm:I
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$602(Landroid/net/wimax/structs/NspInfo;I)I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_nIsActivated:I
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$702(Landroid/net/wimax/structs/NspInfo;I)I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_strBaseStationId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$802(Landroid/net/wimax/structs/NspInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wimax/structs/NspInfo;->m_strNapId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wimax/structs/NspInfo;->access$902(Landroid/net/wimax/structs/NspInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wimax/structs/NspInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/structs/NspInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wimax/structs/NspInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 148
    new-array v0, p1, [Landroid/net/wimax/structs/NspInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wimax/structs/NspInfo$1;->newArray(I)[Landroid/net/wimax/structs/NspInfo;

    move-result-object v0

    return-object v0
.end method
