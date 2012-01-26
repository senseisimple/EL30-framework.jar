.class public Landroid/net/wimax/WimaxInfo;
.super Ljava/lang/Object;
.source "WimaxInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wimax/WimaxInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WimaxInfo"


# instance fields
.field private mBSID:Ljava/lang/String;

.field private mCINR:I

.field private mConnectionTime:Ljava/lang/String;

.field private mFrequency:I

.field private mIPAddress:I

.field private mLinkSpeed:I

.field private mMacAddress:Ljava/lang/String;

.field private mNAPID:Ljava/lang/String;

.field private mNSPID:I

.field private mRSSI:I

.field private mTxPower:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 248
    new-instance v0, Landroid/net/wimax/WimaxInfo$1;

    invoke-direct {v0}, Landroid/net/wimax/WimaxInfo$1;-><init>()V

    sput-object v0, Landroid/net/wimax/WimaxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Landroid/net/wimax/WimaxInfo;->mNSPID:I

    .line 52
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wimax/WimaxInfo;->mBSID:Ljava/lang/String;

    .line 53
    const-string v0, "000000"

    iput-object v0, p0, Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;

    .line 54
    iput v1, p0, Landroid/net/wimax/WimaxInfo;->mFrequency:I

    .line 55
    const/16 v0, -0x270f

    iput v0, p0, Landroid/net/wimax/WimaxInfo;->mRSSI:I

    .line 56
    iput v1, p0, Landroid/net/wimax/WimaxInfo;->mCINR:I

    .line 57
    iput v1, p0, Landroid/net/wimax/WimaxInfo;->mTxPower:I

    .line 58
    iput v1, p0, Landroid/net/wimax/WimaxInfo;->mIPAddress:I

    .line 59
    const-string v0, "00:00:00"

    iput-object v0, p0, Landroid/net/wimax/WimaxInfo;->mConnectionTime:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wimax/WimaxInfo;->mLinkSpeed:I

    .line 61
    return-void
.end method

.method static synthetic access$002(Landroid/net/wimax/WimaxInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mNSPID:I

    return p1
.end method

.method static synthetic access$102(Landroid/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/wimax/WimaxInfo;->mBSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/wimax/WimaxInfo;->mConnectionTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Landroid/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/wimax/WimaxInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getBSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wimax/WimaxInfo;->mBSID:Ljava/lang/String;

    return-object v0
.end method

.method public getCINR()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mCINR:I

    return v0
.end method

.method public getConnectionTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/net/wimax/WimaxInfo;->mConnectionTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFREQ()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mFrequency:I

    return v0
.end method

.method public getIPAddress()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mIPAddress:I

    return v0
.end method

.method public getIpAddress()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mIPAddress:I

    return v0
.end method

.method public getLinkSpeed()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mLinkSpeed:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/net/wimax/WimaxInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNAPID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;

    return-object v0
.end method

.method public getNSPID()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mNSPID:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mRSSI:I

    return v0
.end method

.method public getTxPower()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mTxPower:I

    return v0
.end method

.method setBSID(Ljava/lang/String;)V
    .registers 9
    .parameter "BSID"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    iput-object p1, p0, Landroid/net/wimax/WimaxInfo;->mBSID:Ljava/lang/String;

    .line 76
    if-eqz p1, :cond_3a

    .line 78
    new-array v0, v6, [C

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v5

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 79
    .local v0, cNAPID:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;

    .line 85
    .end local v0           #cNAPID:[C
    :goto_39
    return-void

    .line 83
    :cond_3a
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;

    goto :goto_39
.end method

.method setCINR(I)V
    .registers 2
    .parameter "cinr"

    .prologue
    .line 132
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mCINR:I

    .line 133
    return-void
.end method

.method setConnectionTime(Ljava/lang/String;)V
    .registers 2
    .parameter "ConnectionTime"

    .prologue
    .line 165
    iput-object p1, p0, Landroid/net/wimax/WimaxInfo;->mConnectionTime:Ljava/lang/String;

    .line 166
    return-void
.end method

.method setFREQ(I)V
    .registers 2
    .parameter "FREQ"

    .prologue
    .line 104
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mFrequency:I

    .line 105
    return-void
.end method

.method setIPAddress(I)V
    .registers 2
    .parameter "IPAddress"

    .prologue
    .line 156
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mIPAddress:I

    .line 157
    return-void
.end method

.method setIpAddress(I)V
    .registers 2
    .parameter "address"

    .prologue
    .line 200
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mIPAddress:I

    .line 201
    return-void
.end method

.method setLinkSpeed(I)V
    .registers 2
    .parameter "linkSpeed"

    .prologue
    .line 184
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mLinkSpeed:I

    .line 185
    return-void
.end method

.method setMacAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "macAddress"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/net/wimax/WimaxInfo;->mMacAddress:Ljava/lang/String;

    .line 193
    return-void
.end method

.method setNSPID(I)V
    .registers 2
    .parameter "NSPID"

    .prologue
    .line 65
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mNSPID:I

    .line 66
    return-void
.end method

.method setRssi(I)V
    .registers 2
    .parameter "rssi"

    .prologue
    .line 116
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mRSSI:I

    .line 117
    return-void
.end method

.method setTxPower(I)V
    .registers 2
    .parameter "TxPower"

    .prologue
    .line 147
    iput p1, p0, Landroid/net/wimax/WimaxInfo;->mTxPower:I

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 209
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 212
    .local v0, none:Ljava/lang/String;
    const-string v2, "NSPID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wimax/WimaxInfo;->mNSPID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "BSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wimax/WimaxInfo;->mBSID:Ljava/lang/String;

    if-nez v3, :cond_9b

    move-object v3, v0

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", NAPID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;

    if-nez v3, :cond_9e

    move-object v3, v0

    :goto_2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wimax/WimaxInfo;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wimax/WimaxInfo;->mRSSI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", CINR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wimax/WimaxInfo;->mCINR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Tx Power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wimax/WimaxInfo;->mTxPower:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wimax/WimaxInfo;->mIPAddress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Connection Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wimax/WimaxInfo;->mConnectionTime:Ljava/lang/String;

    if-nez v3, :cond_a1

    move-object v3, v0

    :goto_78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wimax/WimaxInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wimax/WimaxInfo;->mMacAddress:Ljava/lang/String;

    if-nez v3, :cond_a4

    move-object v3, v0

    :goto_93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 212
    :cond_9b
    iget-object v3, p0, Landroid/net/wimax/WimaxInfo;->mBSID:Ljava/lang/String;

    goto :goto_1e

    :cond_9e
    iget-object v3, p0, Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;

    goto :goto_2d

    :cond_a1
    iget-object v3, p0, Landroid/net/wimax/WimaxInfo;->mConnectionTime:Ljava/lang/String;

    goto :goto_78

    :cond_a4
    iget-object v3, p0, Landroid/net/wimax/WimaxInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_93
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 234
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mNSPID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Landroid/net/wimax/WimaxInfo;->mBSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Landroid/net/wimax/WimaxInfo;->mNAPID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mRSSI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mCINR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mIPAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Landroid/net/wimax/WimaxInfo;->mConnectionTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget v0, p0, Landroid/net/wimax/WimaxInfo;->mLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Landroid/net/wimax/WimaxInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return-void
.end method
