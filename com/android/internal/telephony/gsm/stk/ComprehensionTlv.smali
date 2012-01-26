.class Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "[ComprehensionTlv]"


# instance fields
.field private mCr:Z

.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(IZI[BI)V
    .registers 6
    .parameter "tag"
    .parameter "cr"
    .parameter "length"
    .parameter "data"
    .parameter "valueIndex"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mTag:I

    .line 53
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mCr:Z

    .line 54
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mLength:I

    .line 55
    iput p5, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mValueIndex:I

    .line 56
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mRawValue:[B

    .line 57
    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .registers 15
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    move v5, p1

    .line 124
    .local v5, curIndex:I
    :try_start_5
    array-length v8, p0
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_6} :catch_8a

    .line 129
    .local v8, endIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #curIndex:I
    .local v6, curIndex:I
    :try_start_8
    aget-byte v0, p0, v5
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_a} :catch_5f

    and-int/lit16 v9, v0, 0xff

    .line 130
    .local v9, temp:I
    sparse-switch v9, :sswitch_data_c2

    .line 150
    move v1, v9

    .line 151
    .local v1, tag:I
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_49

    move v2, v11

    .line 152
    .local v2, cr:Z
    :goto_15
    and-int/lit16 v1, v1, -0x81

    .line 158
    :goto_17
    add-int/lit8 v5, v6, 0x1

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    :try_start_19
    aget-byte v0, p0, v6

    and-int/lit16 v9, v0, 0xff

    .line 159
    if-ge v9, v12, :cond_4b

    .line 160
    move v3, v9

    .line 188
    .local v3, length:I
    :cond_20
    :goto_20
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;-><init>(IZI[BI)V
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_26} :catch_8a

    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    :goto_26
    return-object v0

    .line 140
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    :sswitch_27
    const/4 v0, 0x0

    move v5, v6

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    goto :goto_26

    .line 142
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    :sswitch_2a
    :try_start_2a
    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v6, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v1, v0, v4

    .line 144
    .restart local v1       #tag:I
    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_47

    move v2, v11

    .line 145
    .restart local v2       #cr:Z
    :goto_3f
    const v0, -0x8001

    and-int/2addr v1, v0

    .line 146
    add-int/lit8 v5, v6, 0x2

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    move v6, v5

    .line 147
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    goto :goto_17

    .end local v2           #cr:Z
    :cond_47
    move v2, v10

    .line 144
    goto :goto_3f

    :cond_49
    move v2, v10

    .line 151
    goto :goto_15

    .line 161
    .end local v6           #curIndex:I
    .restart local v2       #cr:Z
    .restart local v5       #curIndex:I
    :cond_4b
    const/16 v0, 0x81

    if-ne v9, v0, :cond_6a

    .line 162
    add-int/lit8 v6, v5, 0x1

    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    aget-byte v0, p0, v5

    and-int/lit16 v3, v0, 0xff

    .line 163
    .restart local v3       #length:I
    if-ge v3, v12, :cond_be

    .line 164
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_5f} :catch_5f

    .line 190
    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    .end local v9           #temp:I
    :catch_5f
    move-exception v0

    move-object v7, v0

    move v5, v6

    .line 191
    .end local v6           #curIndex:I
    .end local v8           #endIndex:I
    .restart local v5       #curIndex:I
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_62
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 167
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #tag:I
    .restart local v2       #cr:Z
    .restart local v8       #endIndex:I
    .restart local v9       #temp:I
    :cond_6a
    const/16 v0, 0x82

    if-ne v9, v0, :cond_8d

    .line 168
    :try_start_6e
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 170
    .restart local v3       #length:I
    add-int/lit8 v5, v5, 0x2

    .line 171
    const/16 v0, 0x100

    if-ge v3, v0, :cond_20

    .line 172
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 190
    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    .end local v8           #endIndex:I
    .end local v9           #temp:I
    :catch_8a
    move-exception v0

    move-object v7, v0

    goto :goto_62

    .line 175
    .restart local v1       #tag:I
    .restart local v2       #cr:Z
    .restart local v8       #endIndex:I
    .restart local v9       #temp:I
    :cond_8d
    const/16 v0, 0x83

    if-ne v9, v0, :cond_b6

    .line 176
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 179
    .restart local v3       #length:I
    add-int/lit8 v5, v5, 0x3

    .line 180
    const/high16 v0, 0x1

    if-ge v3, v0, :cond_20

    .line 181
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 185
    .end local v3           #length:I
    :cond_b6
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0
    :try_end_be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6e .. :try_end_be} :catch_8a

    .end local v5           #curIndex:I
    .restart local v3       #length:I
    .restart local v6       #curIndex:I
    :cond_be
    move v5, v6

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    goto/16 :goto_20

    .line 130
    nop

    :sswitch_data_c2
    .sparse-switch
        0x0 -> :sswitch_27
        0x7f -> :sswitch_2a
        0x80 -> :sswitch_27
        0xff -> :sswitch_27
    .end sparse-switch
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .registers 7
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    array-length v1, p0

    .line 91
    .local v1, endIndex:I
    :goto_6
    if-ge p1, v1, :cond_20

    .line 92
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 99
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_18

    .line 100
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget v3, v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mValueIndex:I

    iget v4, v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mLength:I

    add-int p1, v3, v4

    goto :goto_6

    .line 103
    :cond_18
    const-string v3, "[ComprehensionTlv]"

    const-string/jumbo v4, "stop decoding"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v0           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_20
    return-object v2
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mLength:I

    return v0
.end method

.method public getRawValue()[B
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mRawValue:[B

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mTag:I

    return v0
.end method

.method public getValueIndex()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mValueIndex:I

    return v0
.end method

.method public isComprehensionRequired()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mCr:Z

    return v0
.end method
