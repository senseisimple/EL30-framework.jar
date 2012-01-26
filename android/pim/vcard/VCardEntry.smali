.class public Landroid/pim/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardEntry$Property;,
        Landroid/pim/vcard/VCardEntry$PhotoData;,
        Landroid/pim/vcard/VCardEntry$ImData;,
        Landroid/pim/vcard/VCardEntry$OrganizationData;,
        Landroid/pim/vcard/VCardEntry$PostalData;,
        Landroid/pim/vcard/VCardEntry$EmailData;,
        Landroid/pim/vcard/VCardEntry$PhoneData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardEntry"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnniversary:Ljava/lang/String;

.field private mBirthday:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;

.field private mFormattedName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;

.field private mNickNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticFamilyName:Ljava/lang/String;

.field private mPhoneticFullName:Ljava/lang/String;

.field private mPhoneticGivenName:Ljava/lang/String;

.field private mPhoneticMiddleName:Ljava/lang/String;

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefix:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 70
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-QQ"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-NETMEETING"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 533
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardEntry;-><init>(I)V

    .line 534
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "vcardType"

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/pim/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 538
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .registers 3
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput p1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    .line 542
    iput-object p2, p0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 543
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 581
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 584
    :cond_b
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$EmailData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    return-void
.end method

.method private addIm(ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 13
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "type"
    .parameter "propValue"
    .parameter "isPrimary"

    .prologue
    .line 815
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 818
    :cond_b
    iget-object v6, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23
    .parameter "type"
    .parameter "label"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "jobDescription"
    .parameter "symbol"
    .parameter "phoneticName"
    .parameter "officeLocation"
    .parameter "isPrimary"

    .prologue
    .line 611
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 614
    :cond_b
    iget-object v11, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroid/pim/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .parameter "type"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "isPrimary"

    .prologue
    .line 603
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 606
    :cond_b
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .registers 3
    .parameter "nickName"

    .prologue
    .line 574
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    .line 577
    :cond_b
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .registers 4
    .parameter "note"

    .prologue
    .line 822
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 823
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 825
    :cond_c
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 546
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v7, :cond_b

    .line 547
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 549
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, trimed:Ljava/lang/String;
    const/4 v7, 0x6

    if-eq p1, v7, :cond_1f

    iget v7, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7}, Landroid/pim/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 553
    :cond_1f
    move-object v2, v6

    .line 569
    .local v2, formattedNumber:Ljava/lang/String;
    :goto_20
    new-instance v5, Landroid/pim/vcard/VCardEntry$PhoneData;

    invoke-direct {v5, p1, v2, p3, p4}, Landroid/pim/vcard/VCardEntry$PhoneData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 570
    .local v5, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    return-void

    .line 555
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v5           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_2b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 556
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    if-ge v3, v4, :cond_3c

    .line 557
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 560
    .local v1, ch:C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 567
    .end local v1           #ch:C
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_20
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .registers 7
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 829
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_c

    .line 830
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 832
    :cond_c
    new-instance v0, Landroid/pim/vcard/VCardEntry$PhotoData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/pim/vcard/VCardEntry$PhotoData;-><init>(ILjava/lang/String;[BZ)V

    .line 833
    .local v0, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .registers 7
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 591
    :cond_c
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$PostalData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$PostalData;-><init>(ILjava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Landroid/pim/vcard/VCardEntry;
    .registers 2
    .parameter "resolver"

    .prologue
    .line 1591
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;
    .registers 3
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 1596
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 623
    .local v3, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_65

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_65

    .line 624
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_37

    .line 625
    const-string v5, "VCardEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_37
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v5, v6}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 631
    .local v4, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 633
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 635
    .end local v1           #elem:Ljava/lang/String;
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 637
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_64
    return-object v5

    :cond_65
    const/4 v5, 0x0

    goto :goto_64
.end method

.method private constructDisplayName()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1275
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1276
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1294
    :cond_d
    :goto_d
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1295
    const-string v0, ""

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1297
    :cond_15
    return-void

    .line 1277
    :cond_16
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1278
    :cond_26
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    iget-object v4, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_d

    .line 1280
    :cond_39
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1282
    :cond_49
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_d

    .line 1284
    :cond_58
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_71

    .line 1285
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$EmailData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_d

    .line 1286
    :cond_71
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8a

    .line 1287
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PhoneData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_d

    .line 1288
    :cond_8a
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_a8

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a8

    .line 1289
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PostalData;

    iget v1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_d

    .line 1290
    :cond_a8
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 1291
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_d
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    .line 1267
    :cond_b
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 879
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 883
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-ge v0, v2, :cond_d

    .line 898
    .end local v0           #size:I
    :cond_c
    :goto_c
    return-void

    .line 886
    .restart local v0       #size:I
    :cond_d
    const/4 v1, 0x5

    if-le v0, v1, :cond_11

    .line 887
    const/4 v0, 0x5

    .line 890
    :cond_11
    packed-switch v0, :pswitch_data_42

    .line 896
    :goto_14
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    goto :goto_c

    .line 892
    :pswitch_1e
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    .line 893
    :pswitch_27
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    .line 894
    :pswitch_30
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    .line 895
    :pswitch_39
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    goto :goto_14

    .line 890
    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_39
        :pswitch_30
        :pswitch_27
        :pswitch_1e
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V
    .registers 22
    .parameter "type"
    .parameter "label"
    .parameter
    .parameter
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p3, orgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    if-nez p3, :cond_4

    .line 652
    sget-object p3, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 661
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    .line 662
    .local v15, size:I
    packed-switch v15, :pswitch_data_1b0

    .line 734
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 735
    .local v5, companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 736
    .local v6, departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 737
    .local v7, title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 738
    .local v8, jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 739
    .local v9, symbol:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 740
    .local v10, phoneticName:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 754
    .local v11, officeLocation:Ljava/lang/String;
    :goto_51
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v2, v0

    if-nez v2, :cond_15d

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v12, p5

    .line 757
    invoke-direct/range {v2 .. v12}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 786
    :goto_63
    return-void

    .line 664
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_64
    const-string v5, ""

    .line 665
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 666
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 667
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 668
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 669
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 670
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 671
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto :goto_51

    .line 674
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_6d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 675
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 676
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 677
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 678
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 679
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 680
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 681
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto :goto_51

    .line 684
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_7e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 685
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 686
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 687
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 688
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 689
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 690
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 691
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto :goto_51

    .line 694
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_98
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 695
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 696
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 697
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 698
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 699
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 700
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 701
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto :goto_51

    .line 704
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_bb
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 705
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 706
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 707
    .restart local v7       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 708
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 709
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 710
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 711
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto/16 :goto_51

    .line 714
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_e8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 715
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 716
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 717
    .restart local v7       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 718
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 719
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 720
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 721
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto/16 :goto_51

    .line 724
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_11e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 725
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 726
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 727
    .restart local v7       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 728
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 729
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 730
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 731
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto/16 :goto_51

    .line 760
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_166
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 763
    .local v14, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v2, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    if-nez v2, :cond_166

    iget-object v2, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    if-nez v2, :cond_166

    iget-object v2, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-nez v2, :cond_166

    iget-object v2, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    if-nez v2, :cond_166

    iget-object v2, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    if-nez v2, :cond_166

    iget-object v2, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    if-nez v2, :cond_166

    iget-object v2, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    if-nez v2, :cond_166

    .line 772
    iput-object v5, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    .line 773
    iput-object v6, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    .line 774
    iput-object v7, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    .line 775
    iput-object v8, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    .line 776
    iput-object v9, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    .line 777
    iput-object v10, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    .line 778
    iput-object v11, v14, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    .line 779
    move/from16 v0, p5

    move-object v1, v14

    iput-boolean v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    goto/16 :goto_63

    .end local v14           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_1a3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v12, p5

    .line 785
    invoke-direct/range {v2 .. v12}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_63

    .line 662
    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_64
        :pswitch_6d
        :pswitch_7e
        :pswitch_98
        :pswitch_bb
        :pswitch_e8
        :pswitch_11e
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 908
    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 963
    :cond_1a
    :goto_1a
    return-void

    .line 917
    :cond_1b
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    if-lt v2, v5, :cond_1a

    .line 923
    const/4 v3, 0x3

    if-le v2, v3, :cond_27

    .line 924
    const/4 v2, 0x3

    .line 927
    :cond_27
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_44

    .line 928
    const/4 v1, 0x1

    .line 929
    .local v1, onlyFirstElemIsNonEmpty:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_35
    if-ge v0, v2, :cond_44

    .line 930
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_50

    .line 931
    const/4 v1, 0x0

    .line 957
    .end local v0           #i:I
    .end local v1           #onlyFirstElemIsNonEmpty:Z
    :cond_44
    packed-switch v2, :pswitch_data_66

    .line 961
    :goto_47
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_1a

    .line 929
    .restart local v0       #i:I
    .restart local v1       #onlyFirstElemIsNonEmpty:Z
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 959
    .end local v0           #i:I
    .end local v1           #onlyFirstElemIsNonEmpty:Z
    :pswitch_53
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 960
    :pswitch_5c
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_47

    .line 957
    nop

    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_5c
        :pswitch_53
    .end packed-switch
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .registers 10
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 796
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_f

    .line 799
    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 811
    :cond_e
    :goto_e
    return-void

    .line 802
    :cond_f
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 803
    .local v7, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v0, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_e

    .line 804
    :cond_29
    iput-object p1, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    goto :goto_e
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1617
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1618
    .local v3, size:I
    if-le v3, v6, :cond_2f

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1620
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1621
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1622
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    sub-int v5, v3, v6

    if-ge v1, v5, :cond_11

    .line 1624
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1627
    .end local v4           #type:Ljava/lang/String;
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1631
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :goto_2e
    return-object v5

    .line 1628
    .restart local p0
    :cond_2f
    if-ne v3, v6, :cond_3a

    .line 1629
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_2e

    .line 1631
    .restart local p0
    :cond_3a
    const-string v5, ""

    goto :goto_2e
.end method

.method private nameFieldsAreEmpty()Z
    .registers 2

    .prologue
    .line 1600
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 847
    iget v3, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 873
    :cond_21
    :goto_21
    return-void

    .line 854
    :cond_22
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 855
    .local v1, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_21

    .line 856
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_58

    .line 857
    const-string v3, "VCardEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_58
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v4}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 863
    .local v2, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 864
    .local v0, size:I
    const/4 v3, 0x3

    if-le v0, v3, :cond_70

    .line 865
    const/4 v0, 0x3

    .line 867
    :cond_70
    packed-switch v0, :pswitch_data_90

    .line 870
    :goto_73
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_21

    .line 868
    :pswitch_7d
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 869
    :pswitch_86
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_73

    .line 867
    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_86
        :pswitch_7d
    .end packed-switch
.end method


# virtual methods
.method public addProperty(Landroid/pim/vcard/VCardEntry$Property;)V
    .registers 36
    .parameter "property"

    .prologue
    .line 966
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$000(Landroid/pim/vcard/VCardEntry$Property;)Ljava/lang/String;

    move-result-object v26

    .line 967
    .local v26, propName:Ljava/lang/String;
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$100(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/Map;

    move-result-object v9

    .line 968
    .local v9, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyValueList:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$200(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/List;

    move-result-object v8

    .line 969
    .local v8, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyBytes:[B
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$300(Landroid/pim/vcard/VCardEntry$Property;)[B

    move-result-object v25

    .line 970
    .local v25, propBytes:[B
    const/16 v22, 0x1

    .line 972
    .local v22, isEmpty:Z
    const/16 v20, 0x0

    .end local p1
    .local v20, i:I
    :goto_14
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_31

    .line 973
    move-object v0, v8

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2e

    .line 974
    const/16 v22, 0x0

    .line 972
    :cond_2e
    add-int/lit8 v20, v20, 0x1

    goto :goto_14

    .line 977
    :cond_31
    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_38

    .line 1261
    :cond_37
    :goto_37
    return-void

    .line 981
    :cond_38
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 983
    .local v15, propValue:Ljava/lang/String;
    const-string v5, "VERSION"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 985
    const-string v5, "FN"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 986
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_37

    .line 987
    :cond_5f
    const-string v5, "NAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_77

    .line 990
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_37

    .line 991
    :cond_77
    const-string v5, "N"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 992
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_37

    .line 993
    :cond_8a
    const-string v5, "SORT-STRING"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 994
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_37

    .line 995
    :cond_9b
    const-string v5, "NICKNAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    const-string v5, "X-NICKNAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 997
    :cond_b1
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto :goto_37

    .line 998
    :cond_b8
    const-string v5, "SOUND"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 999
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1000
    .local v27, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_37

    const-string v5, "X-IRMC-N"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1006
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v15, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    .line 1008
    .local v24, phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_37

    .line 1012
    .end local v24           #phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_ea
    const-string v5, "ADR"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c3

    .line 1013
    const/16 v33, 0x1

    .line 1014
    .local v33, valuesAreAllEmpty:Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_fb
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 1015
    .local v32, value:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_fb

    .line 1016
    const/16 v33, 0x0

    .line 1020
    .end local v32           #value:Ljava/lang/String;
    :cond_10f
    if-nez v33, :cond_37

    .line 1024
    const/4 v6, -0x1

    .line 1025
    .local v6, type:I
    const-string v7, ""

    .line 1026
    .local v7, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1027
    .local v10, isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1028
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_1b5

    .line 1029
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_123
    :goto_123
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1030
    .local v29, typeString:Ljava/lang/String;
    move-object/from16 v30, v29

    .line 1031
    .local v30, typeStringOrigin:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    .line 1032
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_142

    .line 1033
    const/4 v10, 0x1

    goto :goto_123

    .line 1034
    :cond_142
    const-string v5, "HOME"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_151

    .line 1035
    const/4 v6, 0x1

    .line 1036
    const-string v7, ""

    goto :goto_123

    .line 1037
    :cond_151
    const-string v5, "WORK"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, "COMPANY"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 1042
    :cond_167
    const/4 v6, 0x2

    .line 1043
    const-string v7, ""

    goto :goto_123

    .line 1044
    :cond_16b
    const-string v5, "PARCEL"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_123

    const-string v5, "DOM"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_123

    const-string v5, "INTL"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_123

    .line 1048
    const-string v5, "OTHER"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19b

    .line 1049
    const/4 v6, 0x3

    .line 1050
    const-string v7, ""

    goto :goto_123

    .line 1052
    :cond_19b
    const-string v5, "X-"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    if-gez v6, :cond_1b0

    .line 1053
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 1057
    :cond_1b0
    const/4 v6, 0x0

    .line 1058
    move-object/from16 v7, v30

    goto/16 :goto_123

    .line 1063
    .end local v29           #typeString:Ljava/lang/String;
    .end local v30           #typeStringOrigin:Ljava/lang/String;
    :cond_1b5
    if-gez v6, :cond_1b8

    .line 1064
    const/4 v6, 0x1

    .line 1067
    :cond_1b8
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_37

    .line 1068
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v33           #valuesAreAllEmpty:Z
    :cond_1c3
    const-string v5, "EMAIL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_259

    .line 1069
    const/4 v6, -0x1

    .line 1070
    .restart local v6       #type:I
    const/4 v7, 0x0

    .line 1071
    .restart local v7       #label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1072
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1073
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_24b

    .line 1074
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_1df
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1075
    .restart local v29       #typeString:Ljava/lang/String;
    move-object/from16 v30, v29

    .line 1076
    .restart local v30       #typeStringOrigin:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    .line 1077
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fe

    .line 1078
    const/4 v10, 0x1

    goto :goto_1df

    .line 1079
    :cond_1fe
    const-string v5, "HOME"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20b

    .line 1080
    const/4 v6, 0x1

    goto :goto_1df

    .line 1081
    :cond_20b
    const-string v5, "WORK"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_218

    .line 1082
    const/4 v6, 0x2

    goto :goto_1df

    .line 1083
    :cond_218
    const-string v5, "CELL"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_225

    .line 1084
    const/4 v6, 0x4

    goto :goto_1df

    .line 1085
    :cond_225
    const-string v5, "OTHER"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_232

    .line 1086
    const/4 v6, 0x3

    goto :goto_1df

    .line 1088
    :cond_232
    const-string v5, "X-"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_247

    if-gez v6, :cond_247

    .line 1089
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 1094
    :cond_247
    const/4 v6, 0x0

    .line 1095
    move-object/from16 v7, v30

    goto :goto_1df

    .line 1099
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #typeString:Ljava/lang/String;
    .end local v30           #typeStringOrigin:Ljava/lang/String;
    :cond_24b
    if-gez v6, :cond_24e

    .line 1100
    const/4 v6, 0x3

    .line 1102
    :cond_24e
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v15

    move-object v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_37

    .line 1103
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_259
    const-string v5, "ORG"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_311

    const/4 v10, 0x0

    .line 1104
    .restart local v10       #isPrimary:Z
    const-string v5, "SC-02B"

    const-string v6, "SPH-D700"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2db

    .line 1105
    const/4 v6, -0x1

    .line 1106
    .restart local v6       #type:I
    const/4 v7, 0x0

    .line 1107
    .restart local v7       #label:Ljava/lang/String;
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1108
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_2d1

    .line 1109
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_27f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1110
    .restart local v29       #typeString:Ljava/lang/String;
    move-object/from16 v30, v29

    .line 1111
    .restart local v30       #typeStringOrigin:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    .line 1112
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29e

    .line 1113
    const/4 v10, 0x1

    goto :goto_27f

    .line 1114
    :cond_29e
    const-string v5, "WORK"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ab

    .line 1115
    const/4 v6, 0x1

    goto :goto_27f

    .line 1116
    :cond_2ab
    const-string v5, "OTHER"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b8

    .line 1117
    const/4 v6, 0x2

    goto :goto_27f

    .line 1119
    :cond_2b8
    const-string v5, "X-"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2cd

    if-gez v6, :cond_2cd

    .line 1120
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 1125
    :cond_2cd
    const/4 v6, 0x0

    .line 1126
    move-object/from16 v7, v30

    goto :goto_27f

    .line 1130
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #typeString:Ljava/lang/String;
    .end local v30           #typeStringOrigin:Ljava/lang/String;
    :cond_2d1
    if-gez v6, :cond_2d4

    .line 1131
    const/4 v6, 0x1

    :cond_2d4
    move-object/from16 v5, p0

    .line 1133
    invoke-direct/range {v5 .. v10}, Landroid/pim/vcard/VCardEntry;->handleOrgValue(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_37

    .line 1136
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2db
    const/4 v6, 0x1

    .line 1137
    .restart local v6       #type:I
    const/4 v10, 0x0

    .line 1138
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1139
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_304

    .line 1140
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_2eb
    :goto_2eb
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_304

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1141
    .restart local v29       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2eb

    .line 1142
    const/4 v10, 0x1

    goto :goto_2eb

    .line 1146
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #typeString:Ljava/lang/String;
    :cond_304
    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v11, p0

    move-object v14, v8

    move-object v15, v9

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Landroid/pim/vcard/VCardEntry;->handleOrgValue(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_37

    .line 1148
    .end local v6           #type:I
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_311
    const-string v5, "TITLE"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_324

    .line 1149
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 1150
    :cond_324
    const-string v5, "ROLE"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 1153
    const-string v5, "PHOTO"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_345

    const-string v5, "LOGO"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_395

    .line 1155
    :cond_345
    const-string v5, "VALUE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 1156
    .local v23, paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_35a

    const-string v5, "URL"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 1159
    :cond_35a
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1160
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 1161
    .local v19, formatName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1162
    .restart local v10       #isPrimary:Z
    if-eqz v27, :cond_389

    .line 1163
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_36b
    :goto_36b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_389

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1164
    .local v31, typeValue:Ljava/lang/String;
    const-string v5, "PREF"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_384

    .line 1165
    const/4 v10, 0x1

    goto :goto_36b

    .line 1166
    :cond_384
    if-nez v19, :cond_36b

    .line 1167
    move-object/from16 v19, v31

    goto :goto_36b

    .line 1171
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v31           #typeValue:Ljava/lang/String;
    :cond_389
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_37

    .line 1173
    .end local v10           #isPrimary:Z
    .end local v19           #formatName:Ljava/lang/String;
    .end local v23           #paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_395
    const-string v5, "TEL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3de

    .line 1174
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1175
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v27

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/pim/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    .line 1179
    .local v28, typeObject:Ljava/lang/Object;
    move-object/from16 v0, v28

    instance-of v0, v0, Ljava/lang/Integer;

    move v5, v0

    if-eqz v5, :cond_3d6

    .line 1180
    check-cast v28, Ljava/lang/Integer;

    .end local v28           #typeObject:Ljava/lang/Object;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1181
    .restart local v6       #type:I
    const/4 v7, 0x0

    .line 1188
    .restart local v7       #label:Ljava/lang/String;
    :goto_3bd
    if-eqz v27, :cond_3dc

    const-string v5, "PREF"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3dc

    .line 1189
    const/4 v10, 0x1

    .line 1193
    .restart local v10       #isPrimary:Z
    :goto_3cb
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v15

    move-object v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_37

    .line 1183
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .restart local v28       #typeObject:Ljava/lang/Object;
    :cond_3d6
    const/4 v6, 0x0

    .line 1184
    .restart local v6       #type:I
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #label:Ljava/lang/String;
    goto :goto_3bd

    .line 1191
    .end local v28           #typeObject:Ljava/lang/Object;
    :cond_3dc
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_3cb

    .line 1194
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3de
    const-string v5, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40f

    .line 1196
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1197
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v6, 0x7

    .line 1199
    .restart local v6       #type:I
    if-eqz v27, :cond_40d

    const-string v5, "PREF"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40d

    .line 1200
    const/4 v10, 0x1

    .line 1204
    .restart local v10       #isPrimary:Z
    :goto_400
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v15

    move-object v3, v6

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_37

    .line 1202
    .end local v10           #isPrimary:Z
    :cond_40d
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_400

    .line 1205
    .end local v6           #type:I
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_40f
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47c

    .line 1206
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1207
    .local v12, protocol:I
    const/4 v10, 0x0

    .line 1208
    .restart local v10       #isPrimary:Z
    const/4 v6, -0x1

    .line 1209
    .restart local v6       #type:I
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1210
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_46e

    .line 1211
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_439
    :goto_439
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1212
    .restart local v29       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_452

    .line 1213
    const/4 v10, 0x1

    goto :goto_439

    .line 1214
    :cond_452
    if-gez v6, :cond_439

    .line 1215
    const-string v5, "HOME"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_461

    .line 1216
    const/4 v6, 0x1

    goto :goto_439

    .line 1217
    :cond_461
    const-string v5, "WORK"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_439

    .line 1218
    const/4 v6, 0x2

    goto :goto_439

    .line 1223
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #typeString:Ljava/lang/String;
    :cond_46e
    if-gez v6, :cond_471

    .line 1224
    const/4 v6, 0x1

    .line 1226
    :cond_471
    const/4 v13, 0x0

    move-object/from16 v11, p0

    move v14, v6

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Landroid/pim/vcard/VCardEntry;->addIm(ILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_37

    .line 1227
    .end local v6           #type:I
    .end local v10           #isPrimary:Z
    .end local v12           #protocol:I
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_47c
    const-string v5, "NOTE"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48f

    .line 1228
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 1229
    :cond_48f
    const-string v5, "URL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b6

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_4ac

    .line 1231
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 1233
    :cond_4ac
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    .line 1234
    :cond_4b6
    const-string v5, "BDAY"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51b

    .line 1235
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_514

    const-string v5, "-"

    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_514

    .line 1237
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .local v17, BdayBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const/16 v5, 0x2d

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1240
    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const/16 v5, 0x2d

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_37

    .line 1247
    .end local v17           #BdayBuilder:Ljava/lang/StringBuilder;
    :cond_514
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_37

    .line 1249
    :cond_51b
    const-string v5, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52d

    .line 1250
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto/16 :goto_37

    .line 1251
    :cond_52d
    const-string v5, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53f

    .line 1252
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    goto/16 :goto_37

    .line 1253
    :cond_53f
    const-string v5, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_551

    .line 1254
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto/16 :goto_37

    .line 1255
    :cond_551
    const-string v5, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1256
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v15, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 1258
    .local v18, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_37
.end method

.method public consolidateFields()V
    .registers 2

    .prologue
    .line 1303
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1305
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1306
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    .line 1308
    :cond_f
    return-void
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1688
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1724
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1725
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1727
    :cond_7
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1700
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1644
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1664
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1648
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1712
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1652
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1684
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1692
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1708
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1696
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1668
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1680
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1672
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1676
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1716
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1656
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1660
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .registers 2

    .prologue
    .line 1613
    invoke-virtual {p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public pushIntoContentResolver(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 33
    .parameter "resolver"

    .prologue
    .line 1311
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .local v23, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1317
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v20, 0x0

    .line 1318
    .local v20, myGroupsId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v3, v0

    if-eqz v3, :cond_174

    .line 1319
    const-string v3, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1320
    const-string v3, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1323
    const-string v3, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1324
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "sourceid"

    aput-object v6, v5, v3

    const-string/jumbo v6, "title=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "System Group: My Contacts"

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1329
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_65

    :try_start_5a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1330
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_16d

    move-result-object v20

    .line 1333
    :cond_65
    if-eqz v10, :cond_6a

    .line 1334
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1342
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6a
    :goto_6a
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    invoke-direct/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->nameFieldsAreEmpty()Z

    move-result v3

    if-nez v3, :cond_113

    .line 1345
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1346
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1347
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1349
    const-string v3, "data2"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1350
    const-string v3, "data3"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1351
    const-string v3, "data5"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1352
    const-string v3, "data4"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1353
    const-string v3, "data6"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_182

    .line 1358
    :cond_e2
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1359
    const-string v3, "data9"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1360
    const-string v3, "data8"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1365
    :cond_100
    :goto_100
    const-string v3, "data1"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1366
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    :cond_113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_199

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_199

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_12e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_199

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1371
    .local v21, nickName:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1372
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1373
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1374
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1375
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1376
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12e

    .line 1333
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #nickName:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_16d
    move-exception v3

    if-eqz v10, :cond_173

    .line 1334
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_173
    throw v3

    .line 1339
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_174
    const-string v3, "account_name"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1340
    const-string v3, "account_type"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_6a

    .line 1361
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_100

    .line 1362
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_100

    .line 1380
    :cond_199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_20f

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_1a9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/pim/vcard/VCardEntry$PhoneData;

    .line 1382
    .local v25, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1383
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1384
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1386
    const-string v3, "data2"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1387
    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v3, v0

    if-nez v3, :cond_1e9

    .line 1388
    const-string v3, "data3"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1390
    :cond_1e9
    const-string v3, "data1"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1391
    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_204

    .line 1392
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1394
    :cond_204
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a9

    .line 1398
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v25           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_2f3

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_21f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 1400
    .local v24, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1401
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1402
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1403
    const-string v3, "data2"

    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1404
    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v3, v0

    if-nez v3, :cond_25f

    .line 1405
    const-string v3, "data3"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1407
    :cond_25f
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_270

    .line 1408
    const-string v3, "data1"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1410
    :cond_270
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_281

    .line 1411
    const-string v3, "data5"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1413
    :cond_281
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_292

    .line 1414
    const-string v3, "data4"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1416
    :cond_292
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_2a3

    .line 1417
    const-string v3, "data6"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1419
    :cond_2a3
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_2b4

    .line 1420
    const-string v3, "data7"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1422
    :cond_2b4
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_2c5

    .line 1423
    const-string v3, "data8"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1425
    :cond_2c5
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_2d6

    .line 1426
    const-string v3, "data9"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1428
    :cond_2d6
    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_2e7

    .line 1429
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1431
    :cond_2e7
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21f

    .line 1435
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_2f3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_35a

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_303
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/pim/vcard/VCardEntry$EmailData;

    .line 1437
    .local v14, emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1438
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1439
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1441
    const-string v3, "data2"

    iget v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1442
    iget v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    if-nez v3, :cond_33a

    .line 1443
    const-string v3, "data3"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->label:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1445
    :cond_33a
    const-string v3, "data1"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1446
    iget-boolean v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->isPrimary:Z

    if-eqz v3, :cond_34f

    .line 1447
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1449
    :cond_34f
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_303

    .line 1453
    .end local v14           #emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_35a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_393

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_36a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_393

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/pim/vcard/VCardEntry$PostalData;

    .line 1455
    .local v27, postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1456
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v3, v0

    move v0, v3

    move-object v1, v9

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/pim/vcard/VCardUtils;->insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;)V

    .line 1458
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36a

    .line 1462
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v27           #postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    :cond_393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_418

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_3a3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_418

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/pim/vcard/VCardEntry$ImData;

    .line 1464
    .local v18, imData:Landroid/pim/vcard/VCardEntry$ImData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1465
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1466
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1467
    const-string v3, "data2"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1468
    const-string v3, "data5"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1469
    const-string v3, "data1"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1470
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3fc

    .line 1471
    const-string v3, "data6"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1473
    :cond_3fc
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_40d

    .line 1474
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1476
    :cond_40d
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a3

    .line 1480
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #imData:Landroid/pim/vcard/VCardEntry$ImData;
    :cond_418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_45d

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_428
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1482
    .local v22, note:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1483
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1484
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/note"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1485
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1486
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_428

    .line 1490
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #note:Ljava/lang/String;
    :cond_45d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_4b4

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_46d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/pim/vcard/VCardEntry$PhotoData;

    .line 1492
    .local v26, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1493
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1494
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1495
    const-string v3, "data15"

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1496
    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_4a9

    .line 1497
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1499
    :cond_4a9
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46d

    .line 1503
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v26           #photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    :cond_4b4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_503

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_4c4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_503

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1505
    .local v30, website:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1506
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1507
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/website"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1508
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1511
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1512
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c4

    .line 1516
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v30           #website:Ljava/lang/String;
    :cond_503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_541

    .line 1517
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1518
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1519
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1520
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1521
    const-string v3, "data2"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1522
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    :cond_541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57f

    .line 1526
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1527
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1528
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1529
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1530
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1531
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    :cond_57f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_619

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local p0
    :cond_58f
    :goto_58f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_619

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1536
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v29

    .line 1537
    .local v29, size:I
    const/4 v3, 0x2

    move/from16 v0, v29

    move v1, v3

    if-lt v0, v1, :cond_58f

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58f

    .line 1539
    const/16 v3, 0x10

    move/from16 v0, v29

    move v1, v3

    if-le v0, v1, :cond_5c2

    .line 1540
    const/16 v29, 0x10

    .line 1541
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-interface {v11, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 1545
    :cond_5c2
    const/4 v15, 0x0

    .line 1546
    .local v15, i:I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_5c7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1547
    .local v12, customPropertyValue:Ljava/lang/String;
    if-nez v15, :cond_5f0

    .line 1548
    move-object/from16 v19, v12

    .line 1549
    .local v19, mimeType:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1550
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1551
    const-string v3, "mimetype"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1558
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_5ed
    :goto_5ed
    add-int/lit8 v15, v15, 0x1

    goto :goto_5c7

    .line 1553
    :cond_5f0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5ed

    .line 1554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_5ed

    .line 1560
    .end local v12           #customPropertyValue:Ljava/lang/String;
    :cond_60d
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_58f

    .line 1564
    .end local v11           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v29           #size:I
    :cond_619
    if-eqz v20, :cond_643

    .line 1565
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1566
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1567
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1568
    const-string v3, "group_sourceid"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1569
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    :cond_643
    :try_start_643
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v28

    .line 1578
    .local v28, results:[Landroid/content/ContentProviderResult;
    if-eqz v28, :cond_65b

    move-object/from16 v0, v28

    array-length v0, v0

    move v3, v0

    if-eqz v3, :cond_65b

    const/4 v3, 0x0

    aget-object v3, v28, v3

    if-nez v3, :cond_65d

    :cond_65b
    const/4 v3, 0x0

    .line 1586
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :goto_65c
    return-object v3

    .line 1578
    .restart local v28       #results:[Landroid/content/ContentProviderResult;
    :cond_65d
    const/4 v3, 0x0

    aget-object v3, v28, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_662
    .catch Landroid/os/RemoteException; {:try_start_643 .. :try_end_662} :catch_663
    .catch Landroid/content/OperationApplicationException; {:try_start_643 .. :try_end_662} :catch_683

    goto :goto_65c

    .line 1581
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :catch_663
    move-exception v3

    move-object v13, v3

    .line 1582
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v3, 0x0

    goto :goto_65c

    .line 1584
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_683
    move-exception v3

    move-object v13, v3

    .line 1585
    .local v13, e:Landroid/content/OperationApplicationException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const/4 v3, 0x0

    goto :goto_65c
.end method
