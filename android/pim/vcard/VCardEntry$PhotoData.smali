.class public Landroid/pim/vcard/VCardEntry$PhotoData;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoData"
.end annotation


# static fields
.field public static final FORMAT_FLASH:Ljava/lang/String; = "SWF"


# instance fields
.field public final formatName:Ljava/lang/String;

.field public final isPrimary:Z

.field public final photoBytes:[B

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[BZ)V
    .registers 5
    .parameter "type"
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput p1, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->type:I

    .line 414
    iput-object p2, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->formatName:Ljava/lang/String;

    .line 415
    iput-object p3, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    .line 416
    iput-boolean p4, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    .line 417
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 421
    instance-of v2, p1, Landroid/pim/vcard/VCardEntry$PhotoData;

    if-nez v2, :cond_7

    move v2, v4

    .line 425
    :goto_6
    return v2

    .line 424
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/pim/vcard/VCardEntry$PhotoData;

    move-object v1, v0

    .line 425
    .local v1, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    iget v2, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->type:I

    iget v3, v1, Landroid/pim/vcard/VCardEntry$PhotoData;->type:I

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->formatName:Ljava/lang/String;

    if-nez v2, :cond_2b

    iget-object v2, v1, Landroid/pim/vcard/VCardEntry$PhotoData;->formatName:Ljava/lang/String;

    if-nez v2, :cond_35

    :cond_19
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    iget-boolean v3, v1, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    if-ne v2, v3, :cond_35

    const/4 v2, 0x1

    goto :goto_6

    :cond_2b
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->formatName:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$PhotoData;->formatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_35
    move v2, v4

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 434
    const-string/jumbo v0, "type: %d, format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->formatName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
