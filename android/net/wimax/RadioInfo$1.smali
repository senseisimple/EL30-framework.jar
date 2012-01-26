.class final Landroid/net/wimax/RadioInfo$1;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wimax/RadioInfo;
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
        "Landroid/net/wimax/RadioInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/RadioInfo;
    .registers 4
    .parameter "in"

    .prologue
    .line 81
    new-instance v0, Landroid/net/wimax/RadioInfo;

    invoke-direct {v0}, Landroid/net/wimax/RadioInfo;-><init>()V

    .line 82
    .local v0, radioInfo:Landroid/net/wimax/RadioInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/RadioInfo;->m_Temperature:I
    invoke-static {v0, v1}, Landroid/net/wimax/RadioInfo;->access$002(Landroid/net/wimax/RadioInfo;I)I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/RadioInfo;->m_IdleMode:I
    invoke-static {v0, v1}, Landroid/net/wimax/RadioInfo;->access$102(Landroid/net/wimax/RadioInfo;I)I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/RadioInfo;->m_SleepMode:I
    invoke-static {v0, v1}, Landroid/net/wimax/RadioInfo;->access$202(Landroid/net/wimax/RadioInfo;I)I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/RadioInfo;->m_IdleModeTimer:I
    invoke-static {v0, v1}, Landroid/net/wimax/RadioInfo;->access$302(Landroid/net/wimax/RadioInfo;I)I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/wimax/RadioInfo;->m_PseudoMode:I
    invoke-static {v0, v1}, Landroid/net/wimax/RadioInfo;->access$402(Landroid/net/wimax/RadioInfo;I)I

    .line 87
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/net/wimax/RadioInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wimax/RadioInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wimax/RadioInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 91
    new-array v0, p1, [Landroid/net/wimax/RadioInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/net/wimax/RadioInfo$1;->newArray(I)[Landroid/net/wimax/RadioInfo;

    move-result-object v0

    return-object v0
.end method
