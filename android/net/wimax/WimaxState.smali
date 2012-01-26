.class public final enum Landroid/net/wimax/WimaxState;
.super Ljava/lang/Enum;
.source "WimaxState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wimax/WimaxState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wimax/WimaxState;

.field public static final enum CONNECTED:Landroid/net/wimax/WimaxState;

.field public static final enum CONNECTING:Landroid/net/wimax/WimaxState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wimax/WimaxState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCONNECTED:Landroid/net/wimax/WimaxState;

.field public static final enum DISCONNECTING:Landroid/net/wimax/WimaxState;

.field public static final enum INITIALIZED:Landroid/net/wimax/WimaxState;

.field public static final enum INITIALIZING:Landroid/net/wimax/WimaxState;

.field public static final enum OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

.field public static final enum READY:Landroid/net/wimax/WimaxState;

.field public static final enum SCANNING:Landroid/net/wimax/WimaxState;

.field public static final enum UNKNOWN:Landroid/net/wimax/WimaxState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    .line 29
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v4}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->INITIALIZING:Landroid/net/wimax/WimaxState;

    .line 30
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v5}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->INITIALIZED:Landroid/net/wimax/WimaxState;

    .line 31
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v6}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->SCANNING:Landroid/net/wimax/WimaxState;

    .line 32
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v7}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    .line 33
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    .line 34
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "OBTAINING_IPADDR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    .line 35
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    .line 36
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "DISCONNECTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->DISCONNECTING:Landroid/net/wimax/WimaxState;

    .line 37
    new-instance v0, Landroid/net/wimax/WimaxState;

    const-string v1, "DISCONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/wimax/WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/net/wimax/WimaxState;

    sget-object v1, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wimax/WimaxState;->INITIALIZING:Landroid/net/wimax/WimaxState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wimax/WimaxState;->INITIALIZED:Landroid/net/wimax/WimaxState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wimax/WimaxState;->SCANNING:Landroid/net/wimax/WimaxState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wimax/WimaxState;->DISCONNECTING:Landroid/net/wimax/WimaxState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wimax/WimaxState;->$VALUES:[Landroid/net/wimax/WimaxState;

    .line 63
    new-instance v0, Landroid/net/wimax/WimaxState$1;

    invoke-direct {v0}, Landroid/net/wimax/WimaxState$1;-><init>()V

    sput-object v0, Landroid/net/wimax/WimaxState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Landroid/net/wimax/WimaxState;
    .registers 6
    .parameter "value"

    .prologue
    .line 40
    invoke-static {}, Landroid/net/wimax/WimaxState;->values()[Landroid/net/wimax/WimaxState;

    move-result-object v0

    .local v0, arr$:[Landroid/net/wimax/WimaxState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_15

    aget-object v1, v0, v2

    .line 41
    .local v1, e:Landroid/net/wimax/WimaxState;
    invoke-virtual {v1}, Landroid/net/wimax/WimaxState;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_12

    move-object v4, v1

    .line 45
    .end local v1           #e:Landroid/net/wimax/WimaxState;
    :goto_11
    return-object v4

    .line 40
    .restart local v1       #e:Landroid/net/wimax/WimaxState;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 45
    .end local v1           #e:Landroid/net/wimax/WimaxState;
    :cond_15
    const/4 v4, 0x0

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wimax/WimaxState;
    .registers 2
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Landroid/net/wimax/WimaxState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wimax/WimaxState;

    return-object p0
.end method

.method public static values()[Landroid/net/wimax/WimaxState;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Landroid/net/wimax/WimaxState;->$VALUES:[Landroid/net/wimax/WimaxState;

    invoke-virtual {v0}, [Landroid/net/wimax/WimaxState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wimax/WimaxState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/net/wimax/WimaxState;->ordinal()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/net/wimax/WimaxState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
