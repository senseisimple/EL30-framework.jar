.class public Landroid/net/wifi/WifiConfiguration$ApMode;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApMode"
.end annotation


# static fields
.field public static final BGN:I = 0x0

.field public static final B_ONLY:I = 0x1

.field public static final G_ONLY:I = 0x2

.field public static final N_ONLY:I = 0x3

.field public static final strings:[Ljava/lang/String; = null

.field public static final varName:Ljava/lang/String; = "ap_mode"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BGN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B_ONLY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "G_ONLY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "N_ONLY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration$ApMode;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
