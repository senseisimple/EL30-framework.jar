.class Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 67
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 68
    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 80
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .registers 16
    .parameter "buf"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 84
    if-nez p1, :cond_5

    .line 147
    :cond_4
    return-void

    .line 89
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v7, v9, 0x80

    .line 90
    .local v7, tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v9, :cond_4a

    .line 95
    new-array v2, v13, [B

    .line 96
    .local v2, data:[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v9, :cond_48

    move v9, v13

    :goto_1b
    aput-byte v9, v2, v12

    .line 129
    :goto_1d
    array-length v9, v2

    const/16 v10, 0x80

    if-lt v9, v10, :cond_2c

    array-length v9, v2

    const/16 v10, 0xff

    if-gt v9, v10, :cond_2c

    .line 130
    const/16 v9, 0x81

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    :cond_2c
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 136
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_a1

    .line 137
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    :goto_3b
    move-object v0, v2

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3e
    if-ge v4, v5, :cond_4

    aget-byte v1, v0, v4

    .line 145
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_48
    move v9, v12

    .line 96
    goto :goto_1b

    .line 97
    .end local v2           #data:[B
    :cond_4a
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v9, :cond_9d

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9d

    .line 99
    :try_start_56
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_63

    .line 100
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v10, "UTF-16BE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1d

    .line 101
    .end local v2           #data:[B
    :cond_63
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_96

    .line 102
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 104
    .local v6, size:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v8

    .line 106
    .local v8, tempData:[B
    array-length v9, v8

    if-le v9, v13, :cond_89

    .line 107
    array-length v9, v8

    sub-int/2addr v9, v13

    new-array v2, v9, [B

    .line 108
    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    array-length v11, v8

    sub-int/2addr v11, v13

    invoke-static {v8, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_83
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_56 .. :try_end_83} :catch_84
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_56 .. :try_end_83} :catch_91

    goto :goto_1d

    .line 120
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_84
    move-exception v9

    move-object v3, v9

    .line 121
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v12, [B

    .line 124
    .restart local v2       #data:[B
    goto :goto_1d

    .line 110
    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #size:I
    .restart local v8       #tempData:[B
    :cond_89
    :try_start_89
    new-array v2, v6, [B

    .line 111
    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_90
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_89 .. :try_end_90} :catch_84
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_89 .. :try_end_90} :catch_91

    goto :goto_1d

    .line 122
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_91
    move-exception v9

    move-object v3, v9

    .line 123
    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    new-array v2, v12, [B

    .line 124
    .restart local v2       #data:[B
    goto :goto_1d

    .line 118
    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_96
    :try_start_96
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_9b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_96 .. :try_end_9b} :catch_84
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_96 .. :try_end_9b} :catch_91

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1d

    .line 126
    .end local v2           #data:[B
    :cond_9d
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto/16 :goto_1d

    .line 138
    :cond_a1
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_a9

    .line 139
    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3b

    .line 141
    :cond_a9
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3b
.end method
