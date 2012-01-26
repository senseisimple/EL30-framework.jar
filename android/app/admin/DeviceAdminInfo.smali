.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "DeviceAdminInfo"

.field public static final USES_POLICY_ALLOW_BLUETOOTH_MODE:I = 0x13

.field public static final USES_POLICY_ALLOW_BROWSER:I = 0x10

.field public static final USES_POLICY_ALLOW_CAMERA:I = 0xb

.field public static final USES_POLICY_ALLOW_DESKTOP_SYNC:I = 0x1f

.field public static final USES_POLICY_ALLOW_HTML_EMAIL:I = 0xf

.field public static final USES_POLICY_ALLOW_INTERNET_SHARING:I = 0x11

.field public static final USES_POLICY_ALLOW_IRDA:I = 0x20

.field public static final USES_POLICY_ALLOW_POPIMAP_EMAIL:I = 0xe

.field public static final USES_POLICY_ALLOW_SMIME_ENCRYPTION_ALGO_NEGOTIATION:I = 0x1d

.field public static final USES_POLICY_ALLOW_SMIME_SOFT_CERTS:I = 0x1e

.field public static final USES_POLICY_ALLOW_STORAGE_CARD:I = 0xa

.field public static final USES_POLICY_ALLOW_TEXT_MESSAGING:I = 0xd

.field public static final USES_POLICY_ALLOW_WIFI:I = 0xc

.field public static final USES_POLICY_ATTACHMENTS_ENABLED:I = 0x8

.field public static final USES_POLICY_ATTACHMENTS_LIMITED:I = 0x9

.field public static final USES_POLICY_FORCE_LOCK:I = 0x3

.field public static final USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final USES_POLICY_MAX_CALENDAR_AGE:I = 0x15

.field public static final USES_POLICY_MAX_EMAIL_AGE:I = 0x16

.field public static final USES_POLICY_MAX_EMAIL_BODY_TRUNC_SIZE:I = 0x17

.field public static final USES_POLICY_MAX_HTMLEMAIL_BODY_TRUNC_SIZE:I = 0x18

.field public static final USES_POLICY_MIN_PASSWORD_COMPLEX_CHARS:I = 0x14

.field public static final USES_POLICY_PASSWORD_EXPIRATION:I = 0x6

.field public static final USES_POLICY_PASSWORD_HISTORY:I = 0x7

.field public static final USES_POLICY_PASSWORD_RECOVERABLE:I = 0x5

.field public static final USES_POLICY_REQUIRE_DEVICE_ENCRYPTION:I = 0x21

.field public static final USES_POLICY_REQUIRE_ENCRYPTED_SMIME_MSGS:I = 0x1a

.field public static final USES_POLICY_REQUIRE_ENCRYPTION_SMIME_ALGORITHM:I = 0x1c

.field public static final USES_POLICY_REQUIRE_MANUAL_SYNC_ROAMING:I = 0x12

.field public static final USES_POLICY_REQUIRE_SIGNED_SMIME_ALGORITHM:I = 0x1b

.field public static final USES_POLICY_REQUIRE_SIGNED_SMIME_MSGS:I = 0x19

.field public static final USES_POLICY_REQUIRE_STORAGECARD_ENCRYPTION:I = 0x22

.field public static final USES_POLICY_RESET_PASSWORD:I = 0x2

.field public static final USES_POLICY_WATCH_LOGIN:I = 0x1

.field public static final USES_POLICY_WIPE_DATA:I = 0x4

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mUsesPolicies:J

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 368
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 369
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 372
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x4

    const-string/jumbo v5, "wipe-data"

    const v6, 0x1040320

    const v7, 0x1040321

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x2

    const-string/jumbo v5, "reset-password"

    const v6, 0x104031c

    const v7, 0x104031d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x0

    const-string v5, "limit-password"

    const v6, 0x1040318

    const v7, 0x1040319

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x5

    const-string/jumbo v5, "recover-password"

    const v6, 0x1040326

    const v7, 0x1040327

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x6

    const-string v5, "expire-password"

    const v6, 0x1040328

    const v7, 0x1040329

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x7

    const-string v5, "history-password"

    const v6, 0x104032a

    const v7, 0x104032b

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x14

    const-string v5, "min-passwordcomplexchars"

    const v6, 0x1040344

    const v7, 0x1040345

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x1

    const-string/jumbo v5, "watch-login"

    const v6, 0x104031a

    const v7, 0x104031b

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x3

    const-string v5, "force-lock"

    const v6, 0x104031e

    const v7, 0x104031f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x8

    const-string v5, "allow-attachments"

    const v6, 0x104032c

    const v7, 0x104032d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x9

    const-string v5, "limit-attachments"

    const v6, 0x104032e

    const v7, 0x104032f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x16

    const-string v5, "max-emailage"

    const v6, 0x1040348

    const v7, 0x1040349

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x17

    const-string v5, "max-emailbodytruncsize"

    const v6, 0x104034a

    const v7, 0x104034b

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xf

    const-string v5, "allow-htmlemail"

    const v6, 0x104033a

    const v7, 0x104033b

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x18

    const-string v5, "max-htmlemailbodytruncsize"

    const v6, 0x104034c

    const v7, 0x104034d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x15

    const-string v5, "max-calendarage"

    const v6, 0x1040346

    const v7, 0x1040347

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x12

    const-string/jumbo v5, "require-manualsyncroaming"

    const v6, 0x1040340

    const v7, 0x1040341

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xe

    const-string v5, "allow-popimapemail"

    const v6, 0x1040338

    const v7, 0x1040339

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xa

    const-string v5, "allow-storagecard"

    const v6, 0x1040330

    const v7, 0x1040331

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xb

    const-string v5, "allow-camera"

    const v6, 0x1040332

    const v7, 0x1040333

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xc

    const-string v5, "allow-wifi"

    const v6, 0x1040334

    const v7, 0x1040335

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xd

    const-string v5, "allow-textmessaging"

    const v6, 0x1040336

    const v7, 0x1040337

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x10

    const-string v5, "allow-browser"

    const v6, 0x104033c

    const v7, 0x104033d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x11

    const-string v5, "allow-internetsharing"

    const v6, 0x104033e

    const v7, 0x104033f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x13

    const-string v5, "allow-bluetoothmode"

    const v6, 0x1040342

    const v7, 0x1040343

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    const/4 v0, 0x0

    .local v0, i:I
    :goto_207
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_22e

    .line 500
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 501
    .local v1, pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 502
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_207

    .line 757
    .end local v1           #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_22e
    new-instance v2, Landroid/app/admin/DeviceAdminInfo$1;

    invoke-direct {v2}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 24
    .parameter "context"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 530
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 531
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    .line 533
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 535
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 537
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_13
    const-string v17, "android.app.device_admin"

    move-object v0, v3

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 538
    if-nez v9, :cond_4f

    .line 539
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "No android.app.device_admin meta-data"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_27} :catch_27

    .line 591
    :catch_27
    move-exception v17

    move-object/from16 v5, v17

    .line 592
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2a
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to create context for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_48

    .line 595
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_48
    move-exception v17

    if-eqz v9, :cond_4e

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4e
    throw v17

    .line 543
    :cond_4f
    :try_start_4f
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 545
    .local v12, res:Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 549
    .local v4, attrs:Landroid/util/AttributeSet;
    :cond_5f
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, type:I
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_71

    const/16 v17, 0x2

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_5f

    .line 552
    :cond_71
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, nodeName:Ljava/lang/String;
    const-string v17, "device-admin"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_88

    .line 554
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Meta-data does not start with device-admin tag"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 558
    :cond_88
    sget-object v17, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 561
    .local v13, sa:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    .line 564
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 566
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 568
    .local v8, outerDepth:I
    :cond_ac
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_169

    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_c7

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_169

    .line 569
    :cond_c7
    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_ac

    const/16 v17, 0x4

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_ac

    .line 572
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 573
    .local v14, tagName:Ljava/lang/String;
    const-string/jumbo v17, "uses-policies"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ac

    .line 574
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 576
    .local v6, innerDepth:I
    :cond_e9
    :goto_e9
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_ac

    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_104

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    move v1, v6

    if-le v0, v1, :cond_ac

    .line 577
    :cond_104
    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_e9

    const/16 v17, 0x4

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_e9

    .line 580
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 581
    .local v11, policyName:Ljava/lang/String;
    sget-object v17, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 582
    .local v16, val:Ljava/lang/Integer;
    if-eqz v16, :cond_13f

    .line 583
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    move-wide/from16 v17, v0

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v20

    shl-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    or-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    goto :goto_e9

    .line 585
    :cond_13f
    const-string v17, "DeviceAdminInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown tag under uses-policies of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catchall {:try_start_4f .. :try_end_168} :catchall_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_168} :catch_27

    goto :goto_e9

    .line 595
    .end local v6           #innerDepth:I
    .end local v11           #policyName:Ljava/lang/String;
    .end local v14           #tagName:Ljava/lang/String;
    .end local v16           #val:Ljava/lang/Integer;
    :cond_169
    if-eqz v9, :cond_16e

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 597
    :cond_16e
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 603
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 632
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()J
    .registers 3

    .prologue
    .line 774
    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    return-wide v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .registers 3
    .parameter "policyIdent"

    .prologue
    .line 701
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 708
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 709
    .local v1, pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 710
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 713
    .end local v1           #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_24
    return-object v2
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 681
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v2, :cond_26

    .line 654
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 655
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 656
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1b

    .line 657
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 658
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 660
    :cond_1b
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 663
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_26
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "pm"

    .prologue
    .line 673
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "pm"

    .prologue
    .line 643
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 730
    return-void
.end method

.method public setPermissions(J)V
    .registers 3
    .parameter "val"

    .prologue
    .line 778
    iput-wide p1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 779
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPolicy(I)Z
    .registers 7
    .parameter "policyIdent"

    .prologue
    const/4 v4, 0x1

    .line 692
    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    shl-int v2, v4, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    move v0, v4

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    const/4 v0, 0x0

    const-string v1, "flags"

    iget-wide v2, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 749
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 751
    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 752
    return-void
.end method
