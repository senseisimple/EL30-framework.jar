.class public Lcom/android/internal/telephony/SimPBEntryResult;
.super Ljava/lang/Object;
.source "SimPBEntryResult.java"


# static fields
.field private static final GSM_TEXT_ENC_ASCII:I = 0x1

.field private static final GSM_TEXT_ENC_GSM7BIT:I = 0x2

.field private static final GSM_TEXT_ENC_HEX:I = 0x4

.field private static final GSM_TEXT_ENC_UCS2:I = 0x3

.field public static final INDEX_ANR:I = 0x1

.field public static final INDEX_ANRA:I = 0x2

.field public static final INDEX_ANRB:I = 0x3

.field public static final INDEX_EMAIL:I = 0x2

.field public static final INDEX_NAME:I = 0x0

.field public static final INDEX_NUMBER:I = 0x0

.field public static final INDEX_SNE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final NUM_OF_ALPHA:I = 0x3

.field public static final NUM_OF_NUMBER:I = 0x4


# instance fields
.field alphaTags:[Ljava/lang/String;

.field dataTypeAlphas:[I

.field dataTypeNumbers:[I

.field lengthAlphas:[I

.field lengthNumbers:[I

.field nextIndex:I

.field numbers:[Ljava/lang/String;

.field recordIndex:I


# direct methods
.method public constructor <init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V
    .registers 19
    .parameter "lengthAlphas"
    .parameter "dataTypeAlphas"
    .parameter "alphaTags"
    .parameter "lengthNumbers"
    .parameter "dataTypeNumbers"
    .parameter "numbers"
    .parameter "recordIndex"
    .parameter "nextIndex"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->lengthAlphas:[I

    .line 50
    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->dataTypeAlphas:[I

    .line 51
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    .line 53
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->lengthNumbers:[I

    .line 54
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->dataTypeNumbers:[I

    .line 55
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    .line 57
    const/4 v4, 0x0

    .local v4, i:I
    :goto_22
    const/4 v5, 0x3

    if-ge v4, v5, :cond_93

    .line 59
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->lengthAlphas:[I

    aget v6, p1, v4

    aput v6, v5, v4

    .line 60
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->dataTypeAlphas:[I

    aget v6, p2, v4

    aput v6, v5, v4

    .line 62
    aget-object v5, p3, v4

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 64
    .local v2, alphaTagByte:[B
    aget v5, p2, v4

    packed-switch v5, :pswitch_data_c6

    .line 88
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v4

    .line 89
    const-string v5, "GSM"

    const-string v6, "SimPBEntryResult: default Unknown type"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 67
    :pswitch_4c
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v4

    .line 68
    const-string v5, "GSM"

    const-string v6, "Not supported encoding type"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 71
    :pswitch_5a
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x0

    aget v7, p1, v4

    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    goto :goto_49

    .line 76
    :pswitch_66
    :try_start_66
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    aget v8, p1, v4

    const-string v9, "UTF-16"

    invoke-direct {v6, v2, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v4
    :try_end_74
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_66 .. :try_end_74} :catch_75

    goto :goto_49

    .line 78
    :catch_75
    move-exception v5

    move-object v3, v5

    .line 79
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v4

    .line 80
    const-string v5, "GSM"

    const-string v6, "SimPBEntryResult - implausible UnsupportedEncodingException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 84
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    :pswitch_85
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v4

    .line 85
    const-string v5, "GSM"

    const-string v6, "Not supported encoding type"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 96
    .end local v2           #alphaTagByte:[B
    :cond_93
    const/4 v4, 0x0

    :goto_94
    const/4 v5, 0x4

    if-ge v4, v5, :cond_bb

    .line 97
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->lengthNumbers:[I

    aget v6, p4, v4

    aput v6, v5, v4

    .line 98
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->dataTypeNumbers:[I

    aget v6, p5, v4

    aput v6, v5, v4

    .line 100
    aget v5, p4, v4

    if-eqz v5, :cond_ab

    aget-object v5, p6, v4

    if-nez v5, :cond_b4

    .line 101
    :cond_ab
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v4

    .line 96
    :goto_b1
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 103
    :cond_b4
    iget-object v5, p0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    aget-object v6, p6, v4

    aput-object v6, v5, v4

    goto :goto_b1

    .line 106
    :cond_bb
    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    .line 107
    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    .line 109
    return-void

    .line 64
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_5a
        :pswitch_66
        :pswitch_85
    .end packed-switch
.end method
