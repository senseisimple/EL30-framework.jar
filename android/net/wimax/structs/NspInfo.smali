.class public Landroid/net/wimax/structs/NspInfo;
.super Ljava/lang/Object;
.source "NspInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wimax/structs/NspInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_bIsActivated:Z

.field private m_fCinr:F

.field private m_fRssi:F

.field private m_nCinrInDB:I

.field private m_nIsActivated:I

.field private m_nNspId:I

.field private m_nRssiInDBm:I

.field private m_strBaseStationId:Ljava/lang/String;

.field private m_strNapId:Ljava/lang/String;

.field private m_strNetworkName:Ljava/lang/String;

.field private m_strRealm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 130
    new-instance v0, Landroid/net/wimax/structs/NspInfo$1;

    invoke-direct {v0}, Landroid/net/wimax/structs/NspInfo$1;-><init>()V

    sput-object v0, Landroid/net/wimax/structs/NspInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strNapId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic access$002(Landroid/net/wimax/structs/NspInfo;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/structs/NspInfo;->m_fCinr:F

    return p1
.end method

.method static synthetic access$102(Landroid/net/wimax/structs/NspInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/structs/NspInfo;->m_nCinrInDB:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wimax/structs/NspInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Landroid/net/wimax/structs/NspInfo;->m_strNetworkName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wimax/structs/NspInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/structs/NspInfo;->m_nNspId:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/wimax/structs/NspInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Landroid/net/wimax/structs/NspInfo;->m_strRealm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/wimax/structs/NspInfo;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/structs/NspInfo;->m_fRssi:F

    return p1
.end method

.method static synthetic access$602(Landroid/net/wimax/structs/NspInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/structs/NspInfo;->m_nRssiInDBm:I

    return p1
.end method

.method static synthetic access$702(Landroid/net/wimax/structs/NspInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/structs/NspInfo;->m_nIsActivated:I

    return p1
.end method

.method static synthetic access$802(Landroid/net/wimax/structs/NspInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Landroid/net/wimax/structs/NspInfo;->m_strBaseStationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Landroid/net/wimax/structs/NspInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Landroid/net/wimax/structs/NspInfo;->m_strNapId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseStationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strBaseStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCinr()F
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_fCinr:F

    return v0
.end method

.method public getCinrInDB()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_nCinrInDB:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getNapId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strNapId:Ljava/lang/String;

    return-object v0
.end method

.method public getNspId()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_nNspId:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()F
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_fRssi:F

    return v0
.end method

.method public getRssiInDBm()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_nRssiInDBm:I

    return v0
.end method

.method public isActivated()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 60
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_nIsActivated:I

    if-ne v0, v1, :cond_a

    .line 61
    iput-boolean v1, p0, Landroid/net/wimax/structs/NspInfo;->m_bIsActivated:Z

    .line 65
    :goto_7
    iget-boolean v0, p0, Landroid/net/wimax/structs/NspInfo;->m_bIsActivated:Z

    return v0

    .line 63
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wimax/structs/NspInfo;->m_bIsActivated:Z

    goto :goto_7
.end method

.method public setNapId(Ljava/lang/String;)V
    .registers 2
    .parameter "sNapID"

    .prologue
    .line 78
    iput-object p1, p0, Landroid/net/wimax/structs/NspInfo;->m_strNapId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setValue(FILjava/lang/String;ILjava/lang/String;FIZLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "Cinr"
    .parameter "CinrInDB"
    .parameter "strName"
    .parameter "NspId"
    .parameter "Realm"
    .parameter "Rssi"
    .parameter "RssiInDBm"
    .parameter "isActivated"
    .parameter "BaseStationId"
    .parameter "NapId"

    .prologue
    .line 86
    iput p1, p0, Landroid/net/wimax/structs/NspInfo;->m_fCinr:F

    .line 87
    iput p2, p0, Landroid/net/wimax/structs/NspInfo;->m_nCinrInDB:I

    .line 88
    iput-object p3, p0, Landroid/net/wimax/structs/NspInfo;->m_strNetworkName:Ljava/lang/String;

    .line 89
    iput p4, p0, Landroid/net/wimax/structs/NspInfo;->m_nNspId:I

    .line 90
    iput-object p5, p0, Landroid/net/wimax/structs/NspInfo;->m_strRealm:Ljava/lang/String;

    .line 91
    iput p6, p0, Landroid/net/wimax/structs/NspInfo;->m_fRssi:F

    .line 92
    iput p7, p0, Landroid/net/wimax/structs/NspInfo;->m_nRssiInDBm:I

    .line 93
    iput-object p9, p0, Landroid/net/wimax/structs/NspInfo;->m_strBaseStationId:Ljava/lang/String;

    .line 94
    iput-object p10, p0, Landroid/net/wimax/structs/NspInfo;->m_strNapId:Ljava/lang/String;

    .line 95
    iput-boolean p8, p0, Landroid/net/wimax/structs/NspInfo;->m_bIsActivated:Z

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NspInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "m_fCinr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/structs/NspInfo;->m_fCinr:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nCinrInDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/structs/NspInfo;->m_nCinrInDB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_strNetworkName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/structs/NspInfo;->m_strNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nNspId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/structs/NspInfo;->m_nNspId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_strRealm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/structs/NspInfo;->m_strRealm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_fRssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/structs/NspInfo;->m_fRssi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nRssiInDBm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/structs/NspInfo;->m_nRssiInDBm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nIsActivated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/structs/NspInfo;->m_nIsActivated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_strBaseStationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/structs/NspInfo;->m_strBaseStationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_strNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/structs/NspInfo;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 117
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_fCinr:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 118
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_nCinrInDB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_nNspId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_fRssi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 123
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_nRssiInDBm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/net/wimax/structs/NspInfo;->m_nIsActivated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strBaseStationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Landroid/net/wimax/structs/NspInfo;->m_strNapId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return-void
.end method
