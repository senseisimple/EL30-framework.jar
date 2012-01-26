.class public Landroid/net/wimax/RadioInfo;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wimax/RadioInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_IdleMode:I

.field private m_IdleModeTimer:I

.field private m_PseudoMode:I

.field private m_SleepMode:I

.field private m_Temperature:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Landroid/net/wimax/RadioInfo$1;

    invoke-direct {v0}, Landroid/net/wimax/RadioInfo$1;-><init>()V

    sput-object v0, Landroid/net/wimax/RadioInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$002(Landroid/net/wimax/RadioInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/RadioInfo;->m_Temperature:I

    return p1
.end method

.method static synthetic access$102(Landroid/net/wimax/RadioInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/RadioInfo;->m_IdleMode:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wimax/RadioInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/RadioInfo;->m_SleepMode:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wimax/RadioInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/RadioInfo;->m_IdleModeTimer:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/wimax/RadioInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/wimax/RadioInfo;->m_PseudoMode:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrent()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_Temperature:I

    return v0
.end method

.method public getPseudoIdentityEnabled()Z
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_PseudoMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getWimaxIdleMode()Z
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_IdleMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getWimaxIdleModeTimer()J
    .registers 3

    .prologue
    .line 51
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_IdleModeTimer:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getWimaxRadioTemperature()F
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_Temperature:I

    int-to-float v0, v0

    return v0
.end method

.method public getWimaxSleepMode()Z
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_SleepMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setValue(IIIII)V
    .registers 6
    .parameter "nTemperature"
    .parameter "nIdleMode"
    .parameter "nSleepMode"
    .parameter "nIdleModeTimer"
    .parameter "npseudoMode"

    .prologue
    .line 24
    iput p1, p0, Landroid/net/wimax/RadioInfo;->m_Temperature:I

    .line 25
    iput p2, p0, Landroid/net/wimax/RadioInfo;->m_IdleMode:I

    .line 26
    iput p3, p0, Landroid/net/wimax/RadioInfo;->m_SleepMode:I

    .line 27
    iput p4, p0, Landroid/net/wimax/RadioInfo;->m_IdleModeTimer:I

    .line 28
    iput p5, p0, Landroid/net/wimax/RadioInfo;->m_PseudoMode:I

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RadioInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "m_Temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/RadioInfo;->m_Temperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_IdleMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/RadioInfo;->m_IdleMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_SleepMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/RadioInfo;->m_SleepMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_IdleModeTimer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/RadioInfo;->m_IdleModeTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_PseudoMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wimax/RadioInfo;->m_PseudoMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_Temperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_IdleMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_SleepMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_IdleModeTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Landroid/net/wimax/RadioInfo;->m_PseudoMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
