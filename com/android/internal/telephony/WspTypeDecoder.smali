.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_XML:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final CONTENT_MIME_TYPE_B_DRM_ROAP_TRIGGER_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+wbxml"

.field public static final CONTENT_MIME_TYPE_B_DRM_ROAP_TRIGGER_XML:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+xml"

.field public static final CONTENT_MIME_TYPE_B_EMN:Ljava/lang/String; = "application/vnd.wap.emn+wbxml"

.field public static final CONTENT_MIME_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_MIME_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_DM_SYNC_WBXML:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final CONTENT_MIME_TYPE_B_PUSH_DM_SYNC_XML:Ljava/lang/String; = "application/vnd.syncml.dm+xml"

.field public static final CONTENT_MIME_TYPE_B_PUSH_PROV_CONNECTIVITY:Ljava/lang/String; = "application/vnd.wap.connectivity-wbxml"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SI:Ljava/lang/String; = "application/vnd.wap.sic"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SL:Ljava/lang/String; = "application/vnd.wap.slc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNCML_NOTI:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final CONTENT_MIME_TYPE_B_SUPL_INIT:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final CONTENT_MIME_TYPE_B_VND_DOCOMO_PF:Ljava/lang/String; = "application/vnd.docomo.pf"

.field public static final CONTENT_MIME_TYPE_B_VND_DOCOMO_SLC:Ljava/lang/String; = "application/vnd.syncml+wbxml"

.field public static final CONTENT_MIME_TYPE_OMA_DM:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_WBXML:I = 0x4b

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_XML:I = 0x4a

.field public static final CONTENT_TYPE_B_EMN:I = 0x30a

.field public static final CONTENT_TYPE_B_MMS:I = 0x3e

.field public static final CONTENT_TYPE_B_PUSH_CO:I = 0x32

.field public static final CONTENT_TYPE_B_PUSH_DM_SYNC_WBXML:I = 0x42

.field public static final CONTENT_TYPE_B_PUSH_DM_SYNC_XML:I = 0x43

.field public static final CONTENT_TYPE_B_PUSH_PROV_CONNECTIVITY:I = 0x36

.field public static final CONTENT_TYPE_B_PUSH_SI:I = 0x2e

.field public static final CONTENT_TYPE_B_PUSH_SL:I = 0x30

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_NOTI:I = 0x44

.field public static final CONTENT_TYPE_B_ROAP_TRIGGER_WBXML:I = 0x316

.field public static final CONTENT_TYPE_B_SUPL_INIT:I = 0x312

.field public static final CONTENT_TYPE_B_VND_DOCOMO_PF:I = 0x310

.field public static final CONTENT_TYPE_B_VND_DOCOMO_SLC:I = 0xb0

.field public static final CONTENT_TYPE_OMA_DM:I = 0x44

.field public static final PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final PDU_TYPE_PUSH:I = 0x6

.field private static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field private static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e

.field public static final WSP_HEADER_ACCEPT:I = 0x0

.field public static final WSP_HEADER_ACCEPT_APPLICATION:I = 0x32

.field public static final WSP_HEADER_ACCEPT_CHARSET:I = 0x1

.field public static final WSP_HEADER_ACCEPT_CHARSET2:I = 0x3b

.field public static final WSP_HEADER_ACCEPT_ENCODING:I = 0x2

.field public static final WSP_HEADER_ACCEPT_ENCODING2:I = 0x3c

.field public static final WSP_HEADER_ACCEPT_LANGUAGE:I = 0x3

.field public static final WSP_HEADER_ACCEPT_RANGES:I = 0x4

.field public static final WSP_HEADER_AGE:I = 0x5

.field public static final WSP_HEADER_ALLOW:I = 0x6

.field public static final WSP_HEADER_AUTHORIZATION:I = 0x7

.field public static final WSP_HEADER_BEARER_INDICATION:I = 0x33

.field public static final WSP_HEADER_CACHE_CONTROL:I = 0x8

.field public static final WSP_HEADER_CACHE_CONTROL2:I = 0x3d

.field public static final WSP_HEADER_CACHE_CONTROL3:I = 0x47

.field public static final WSP_HEADER_CONNECTION:I = 0x9

.field public static final WSP_HEADER_CONTENT_BASE:I = 0xa

.field public static final WSP_HEADER_CONTENT_DISPOSITION:I = 0x2e

.field public static final WSP_HEADER_CONTENT_DISPOSITION2:I = 0x45

.field public static final WSP_HEADER_CONTENT_ENCODING:I = 0xb

.field public static final WSP_HEADER_CONTENT_ID:I = 0x40

.field public static final WSP_HEADER_CONTENT_LANGUAGE:I = 0xc

.field public static final WSP_HEADER_CONTENT_LENGTH:I = 0xd

.field public static final WSP_HEADER_CONTENT_LOCATION:I = 0xe

.field public static final WSP_HEADER_CONTENT_MD5:I = 0xf

.field public static final WSP_HEADER_CONTENT_RANGE:I = 0x10

.field public static final WSP_HEADER_CONTENT_RANGE2:I = 0x3e

.field public static final WSP_HEADER_CONTENT_TYPE:I = 0x11

.field public static final WSP_HEADER_COOKIE:I = 0x42

.field public static final WSP_HEADER_DATE:I = 0x12

.field public static final WSP_HEADER_ENCODING_VERSION:I = 0x43

.field public static final WSP_HEADER_ETAG:I = 0x13

.field public static final WSP_HEADER_EXPECT:I = 0x38

.field public static final WSP_HEADER_EXPECT2:I = 0x48

.field public static final WSP_HEADER_EXPIRES:I = 0x14

.field public static final WSP_HEADER_FROM:I = 0x15

.field public static final WSP_HEADER_HOST:I = 0x16

.field public static final WSP_HEADER_IF_MATCH:I = 0x18

.field public static final WSP_HEADER_IF_MODIFIED_SINCE:I = 0x17

.field public static final WSP_HEADER_IF_NONE_MATCH:I = 0x19

.field public static final WSP_HEADER_IF_RANGE:I = 0x1a

.field public static final WSP_HEADER_IF_UNMODIFIED_SINCE:I = 0x1b

.field public static final WSP_HEADER_LAST_MODIFIED:I = 0x1d

.field public static final WSP_HEADER_LOCATION:I = 0x1c

.field public static final WSP_HEADER_MAX_FORWARDS:I = 0x1e

.field public static final WSP_HEADER_PRAGMA:I = 0x1f

.field public static final WSP_HEADER_PROFILE:I = 0x35

.field public static final WSP_HEADER_PROFILE_DIFF:I = 0x36

.field public static final WSP_HEADER_PROFILE_WARNING:I = 0x37

.field public static final WSP_HEADER_PROFILE_WARNING2:I = 0x44

.field public static final WSP_HEADER_PROXY_AUTHENTICATE:I = 0x20

.field public static final WSP_HEADER_PROXY_AUTHORIZATION:I = 0x21

.field public static final WSP_HEADER_PUBLIC:I = 0x22

.field public static final WSP_HEADER_PUSH_FLAG:I = 0x34

.field public static final WSP_HEADER_RANGE:I = 0x23

.field public static final WSP_HEADER_REFERER:I = 0x24

.field public static final WSP_HEADER_RETRY_AFTER:I = 0x25

.field public static final WSP_HEADER_SERVER:I = 0x26

.field public static final WSP_HEADER_SET_COOKIE:I = 0x41

.field public static final WSP_HEADER_TE:I = 0x39

.field public static final WSP_HEADER_TRAILER:I = 0x3a

.field public static final WSP_HEADER_TRANSFER_ENCODING:I = 0x27

.field public static final WSP_HEADER_UPGRADE:I = 0x28

.field public static final WSP_HEADER_USER_AGENT:I = 0x29

.field public static final WSP_HEADER_VARY:I = 0x2a

.field public static final WSP_HEADER_VIA:I = 0x2b

.field public static final WSP_HEADER_WARNING:I = 0x2c

.field public static final WSP_HEADER_WWW_AUTHENTICATE:I = 0x2d

.field public static final WSP_HEADER_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final WSP_HEADER_X_WAP_CONTENT_URI:I = 0x30

.field public static final WSP_HEADER_X_WAP_INITIATOR_URI:I = 0x31

.field public static final WSP_HEADER_X_WAP_LOC_DELIVERY:I = 0x4a

.field public static final WSP_HEADER_X_WAP_LOC_INVOCATION:I = 0x49

.field public static final WSP_HEADER_X_WAP_SECURITY:I = 0x46

.field public static final WSP_HEADER_X_WAP_TOD:I = 0x3f

.field public static final X_WAP_APPLICATION_ID_X_OMA_DOCOMO_EMN_UA:I = 0x9

.field public static final X_WAP_APPLICATION_ID_X_OMA_DOCOMO_SP_MAIL_UA:I = 0x9056

.field public static final X_WAP_APPLICATION_ID_X_OMA_DOCOMO_STORAGESERVICE_UA:I = 0x905f

.field public static final X_WAP_APPLICATION_ID_X_OMA_DOCOMO_SYNCML_DM:I = 0x7

.field public static final X_WAP_APPLICATION_ID_X_OMA_DOCOMO_XMD_MAIL_UA:I = 0x905c


# instance fields
.field dataLength:I

.field stringValue:Ljava/lang/String;

.field unsigned32bit:J

.field wspData:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .parameter "pdu"

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    .line 234
    return-void
.end method


# virtual methods
.method public decodeConstrainedEncoding(I)Z
    .registers 4
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_c

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    .line 405
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v0

    goto :goto_b
.end method

.method public decodeContentLength(I)Z
    .registers 3
    .parameter "startIndex"

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentLocation(I)Z
    .registers 3
    .parameter "startIndex"

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentType(I)Z
    .registers 7
    .parameter "startIndex"

    .prologue
    const/4 v4, 0x1

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    move-result v3

    .line 435
    :goto_b
    return v3

    .line 424
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    .line 425
    .local v2, mediaPrefixLength:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v0

    .line 426
    .local v0, mediaFieldLength:J
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v3

    if-ne v3, v4, :cond_26

    .line 427
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 428
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v3, v4

    .line 429
    goto :goto_b

    .line 431
    :cond_26
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v3

    if-ne v3, v4, :cond_35

    .line 432
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v3, v4

    .line 433
    goto :goto_b

    .line 435
    :cond_35
    const/4 v3, 0x0

    goto :goto_b
.end method

.method public decodeExtensionMedia(I)Z
    .registers 9
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 375
    move v0, p1

    .line 376
    .local v0, index:I
    iput v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 377
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 378
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    array-length v1, v3

    .line 379
    .local v1, length:I
    if-ge v0, v1, :cond_19

    move v2, v6

    .line 381
    .local v2, rtrn:Z
    :goto_e
    if-ge v0, v1, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1b

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .end local v2           #rtrn:Z
    :cond_19
    move v2, v4

    .line 379
    goto :goto_e

    .line 385
    .restart local v2       #rtrn:Z
    :cond_1b
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 386
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, p1, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 388
    return v2
.end method

.method public decodeIntegerValue(I)Z
    .registers 4
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    .line 313
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    move-result v0

    goto :goto_8
.end method

.method public decodeLongInteger(I)Z
    .registers 8
    .parameter "startIndex"

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, p1

    and-int/lit16 v1, v2, 0xff

    .line 289
    .local v1, lengthMultiOctet:I
    const/16 v2, 0x1e

    if-le v1, v2, :cond_c

    .line 290
    const/4 v2, 0x0

    .line 297
    :goto_b
    return v2

    .line 292
    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 293
    const/4 v0, 0x1

    .local v0, i:I
    :goto_11
    if-gt v0, v1, :cond_27

    .line 294
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 296
    :cond_27
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 297
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public decodeShortInteger(I)Z
    .registers 5
    .parameter "startIndex"

    .prologue
    const/4 v2, 0x1

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_b

    .line 270
    const/4 v0, 0x0

    .line 274
    :goto_a
    return v0

    .line 272
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 273
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v0, v2

    .line 274
    goto :goto_a
.end method

.method public decodeTextString(I)Z
    .registers 9
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    .line 246
    move v0, p1

    .line 247
    .local v0, index:I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_b

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 250
    :cond_b
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_29

    .line 252
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 256
    :goto_28
    return v6

    .line 254
    :cond_29
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v3, v6

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    goto :goto_28
.end method

.method public decodeUintvarInteger(I)Z
    .registers 8
    .parameter "startIndex"

    .prologue
    const/4 v5, 0x7

    .line 326
    move v0, p1

    .line 328
    .local v0, index:I
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 329
    :goto_6
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_25

    .line 330
    sub-int v1, v0, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_15

    .line 331
    const/4 v1, 0x0

    .line 338
    :goto_14
    return v1

    .line 333
    :cond_15
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 336
    :cond_25
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 337
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 338
    const/4 v1, 0x1

    goto :goto_14
.end method

.method public decodeValueLength(I)Z
    .registers 5
    .parameter "startIndex"

    .prologue
    const/16 v1, 0x1f

    const/4 v2, 0x1

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v1, :cond_d

    .line 352
    const/4 v0, 0x0

    .line 361
    :goto_c
    return v0

    .line 354
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    if-ge v0, v1, :cond_1e

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 356
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    :goto_1c
    move v0, v2

    .line 361
    goto :goto_c

    .line 358
    :cond_1e
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    .line 359
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    goto :goto_1c
.end method

.method public decodeXWapApplicationId(I)Z
    .registers 4
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    if-ne v0, v1, :cond_c

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    .line 478
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    goto :goto_b
.end method

.method public decodeXWapContentURI(I)Z
    .registers 3
    .parameter "startIndex"

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeXWapInitiatorURI(I)Z
    .registers 3
    .parameter "startIndex"

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public getDecodedDataLength()I
    .registers 2

    .prologue
    .line 511
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    return v0
.end method

.method public getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;
    .registers 21
    .parameter "generalHeaderStartIndex"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/HashMap",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 540
    .local v8, ret:Ljava/util/HashMap;
    move/from16 v7, p1

    .line 543
    .local v7, pos:I
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v11

    if-nez v11, :cond_b1

    .line 545
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v11

    if-eqz v11, :cond_98

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, headerName:Ljava/lang/String;
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "text header found pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 551
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, headerValue:Ljava/lang/String;
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     text value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    if-eqz v5, :cond_79

    .line 555
    invoke-virtual {v8, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 558
    goto :goto_7

    .line 560
    .end local v5           #headerValue:Ljava/lang/String;
    :cond_7f
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot decode header value text pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v3           #headerName:Ljava/lang/String;
    :goto_97
    return-object v8

    .line 564
    :cond_98
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot decode header name text pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 568
    :cond_b1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    .line 569
    .local v3, headerName:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 570
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "int header found pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0x%02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    long-to-int v11, v3

    packed-switch v11, :pswitch_data_68c

    .line 808
    :pswitch_f0
    const-string v11, "WAP PUSH"

    const-string v12, "Unknown header name"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_f7
    add-int v11, p2, p3

    if-lt v7, v11, :cond_7

    .line 814
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "decoding Push PDU end. header start "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pos: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_97

    .line 577
    :pswitch_12f
    const-wide/16 v11, 0x46

    cmp-long v11, v3, v11

    if-nez v11, :cond_18a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-ne v11, v12, :cond_18a

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    int-to-long v5, v11

    .line 579
    .local v5, headerValue:J
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     specific value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0x%02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    add-int/lit8 v7, v7, 0x1

    .line 582
    goto/16 :goto_f7

    .line 583
    .end local v5           #headerValue:J
    :cond_18a
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot decode header value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 601
    :pswitch_1a4
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v11

    if-eqz v11, :cond_1f6

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    .line 603
    .restart local v5       #headerValue:J
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     int value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0x%02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 607
    goto/16 :goto_f7

    .line 608
    .end local v5           #headerValue:J
    :cond_1f6
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot decode header value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 637
    :pswitch_210
    const-wide/16 v11, 0x8

    cmp-long v11, v3, v11

    if-eqz v11, :cond_222

    const-wide/16 v11, 0x3d

    cmp-long v11, v3, v11

    if-eqz v11, :cond_222

    const-wide/16 v11, 0x47

    cmp-long v11, v3, v11

    if-nez v11, :cond_238

    :cond_222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-lt v11, v12, :cond_238

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x75

    if-le v11, v12, :cond_271

    :cond_238
    const-wide/16 v11, 0x1f

    cmp-long v11, v3, v11

    if-nez v11, :cond_249

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-eq v11, v12, :cond_271

    :cond_249
    const-wide/16 v11, 0x38

    cmp-long v11, v3, v11

    if-eqz v11, :cond_255

    const-wide/16 v11, 0x48

    cmp-long v11, v3, v11

    if-nez v11, :cond_260

    :cond_255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-eq v11, v12, :cond_271

    :cond_260
    const-wide/16 v11, 0x39

    cmp-long v11, v3, v11

    if-nez v11, :cond_2bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x7f

    if-ne v11, v12, :cond_2bb

    .line 647
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    int-to-long v5, v11

    .line 648
    .restart local v5       #headerValue:J
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     specific value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0x%02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    add-int/lit8 v7, v7, 0x1

    .line 652
    goto/16 :goto_f7

    .end local v5           #headerValue:J
    :cond_2bb
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v11

    if-eqz v11, :cond_310

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v9

    .line 654
    .local v9, valueLength:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_305

    .line 655
    long-to-int v11, v9

    new-array v2, v11, [B

    .line 656
    .local v2, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    const/4 v12, 0x0

    long-to-int v13, v9

    invoke-static {v11, v7, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     length value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .end local v2           #data:[B
    :cond_305
    int-to-long v11, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v13, v9

    add-long/2addr v11, v13

    long-to-int v7, v11

    .line 662
    goto/16 :goto_f7

    .line 663
    .end local v9           #valueLength:J
    :cond_310
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot decode header value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 689
    :pswitch_32a
    const-wide/16 v11, 0x4

    cmp-long v11, v3, v11

    if-nez v11, :cond_346

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-eq v11, v12, :cond_384

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x7f

    if-eq v11, v12, :cond_384

    :cond_346
    const-wide/16 v11, 0x9

    cmp-long v11, v3, v11

    if-nez v11, :cond_357

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-eq v11, v12, :cond_384

    :cond_357
    const-wide/16 v11, 0xb

    cmp-long v11, v3, v11

    if-nez v11, :cond_373

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-lt v11, v12, :cond_373

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x7e

    if-le v11, v12, :cond_384

    :cond_373
    const-wide/16 v11, 0x27

    cmp-long v11, v3, v11

    if-nez v11, :cond_3ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-ne v11, v12, :cond_3ce

    .line 700
    :cond_384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    int-to-long v5, v11

    .line 701
    .restart local v5       #headerValue:J
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     specific value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0x%02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    add-int/lit8 v7, v7, 0x1

    .line 705
    goto/16 :goto_f7

    .end local v5           #headerValue:J
    :cond_3ce
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v11

    if-eqz v11, :cond_40e

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, headerValue:Ljava/lang/String;
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     text value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    if-eqz v5, :cond_407

    .line 709
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_407
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 712
    goto/16 :goto_f7

    .line 713
    .end local v5           #headerValue:Ljava/lang/String;
    :cond_40e
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot decode header value text pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 726
    :pswitch_428
    const-wide/16 v11, 0xc

    cmp-long v11, v3, v11

    if-nez v11, :cond_439

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-eq v11, v12, :cond_44a

    :cond_439
    const-wide/16 v11, 0x32

    cmp-long v11, v3, v11

    if-nez v11, :cond_47a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-ne v11, v12, :cond_47a

    .line 730
    :cond_44a
    const-string v5, "*"

    .line 731
    .restart local v5       #headerValue:Ljava/lang/String;
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     specific value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    add-int/lit8 v7, v7, 0x1

    .line 735
    goto/16 :goto_f7

    .end local v5           #headerValue:Ljava/lang/String;
    :cond_47a
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v11

    if-eqz v11, :cond_4cc

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    .line 737
    .local v5, headerValue:J
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     int value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0x%02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 741
    goto/16 :goto_f7

    .end local v5           #headerValue:J
    :cond_4cc
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v11

    if-eqz v11, :cond_50c

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, headerValue:Ljava/lang/String;
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     text value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    if-eqz v5, :cond_505

    .line 745
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_505
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 749
    goto/16 :goto_f7

    .line 750
    .end local v5           #headerValue:Ljava/lang/String;
    :cond_50c
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot decode header value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 767
    :pswitch_526
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-eqz v11, :cond_53e

    const-wide/16 v11, 0x1

    cmp-long v11, v3, v11

    if-eqz v11, :cond_53e

    const-wide/16 v11, 0x3b

    cmp-long v11, v3, v11

    if-eqz v11, :cond_53e

    const-wide/16 v11, 0x3

    cmp-long v11, v3, v11

    if-nez v11, :cond_549

    :cond_53e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x80

    if-eq v11, v12, :cond_55a

    :cond_549
    const-wide/16 v11, 0x2

    cmp-long v11, v3, v11

    if-nez v11, :cond_58a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    aget-byte v11, v11, v7

    const/16 v12, -0x7d

    if-ne v11, v12, :cond_58a

    .line 773
    :cond_55a
    const-string v5, "*"

    .line 774
    .restart local v5       #headerValue:Ljava/lang/String;
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     specific value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    add-int/lit8 v7, v7, 0x1

    .line 778
    goto/16 :goto_f7

    .end local v5           #headerValue:Ljava/lang/String;
    :cond_58a
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v11

    if-eqz v11, :cond_5df

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v9

    .line 780
    .restart local v9       #valueLength:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_5d4

    .line 781
    long-to-int v11, v9

    new-array v2, v11, [B

    .line 782
    .restart local v2       #data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    move-object v11, v0

    const/4 v12, 0x0

    long-to-int v13, v9

    invoke-static {v11, v7, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     length value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .end local v2           #data:[B
    :cond_5d4
    int-to-long v11, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v13, v9

    add-long/2addr v11, v13

    long-to-int v7, v11

    .line 788
    goto/16 :goto_f7

    .end local v9           #valueLength:J
    :cond_5df
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v11

    if-eqz v11, :cond_631

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    .line 790
    .local v5, headerValue:J
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     int value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0x%02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 794
    goto/16 :goto_f7

    .end local v5           #headerValue:J
    :cond_631
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v11

    if-eqz v11, :cond_671

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, headerValue:Ljava/lang/String;
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "     text value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    if-eqz v5, :cond_66a

    .line 798
    long-to-int v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_66a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v11

    add-int/2addr v7, v11

    .line 802
    goto/16 :goto_f7

    .line 803
    .end local v5           #headerValue:Ljava/lang/String;
    :cond_671
    const-string v11, "WAP PUSH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot decode header value pos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 573
    nop

    :pswitch_data_68c
    .packed-switch 0x0
        :pswitch_526
        :pswitch_526
        :pswitch_526
        :pswitch_526
        :pswitch_32a
        :pswitch_1a4
        :pswitch_1a4
        :pswitch_210
        :pswitch_210
        :pswitch_32a
        :pswitch_f0
        :pswitch_32a
        :pswitch_428
        :pswitch_1a4
        :pswitch_32a
        :pswitch_210
        :pswitch_210
        :pswitch_526
        :pswitch_1a4
        :pswitch_32a
        :pswitch_1a4
        :pswitch_32a
        :pswitch_32a
        :pswitch_1a4
        :pswitch_32a
        :pswitch_32a
        :pswitch_428
        :pswitch_1a4
        :pswitch_32a
        :pswitch_1a4
        :pswitch_1a4
        :pswitch_210
        :pswitch_210
        :pswitch_210
        :pswitch_428
        :pswitch_210
        :pswitch_32a
        :pswitch_210
        :pswitch_32a
        :pswitch_32a
        :pswitch_32a
        :pswitch_32a
        :pswitch_428
        :pswitch_32a
        :pswitch_526
        :pswitch_210
        :pswitch_210
        :pswitch_428
        :pswitch_32a
        :pswitch_32a
        :pswitch_428
        :pswitch_1a4
        :pswitch_1a4
        :pswitch_32a
        :pswitch_210
        :pswitch_526
        :pswitch_210
        :pswitch_210
        :pswitch_428
        :pswitch_526
        :pswitch_526
        :pswitch_210
        :pswitch_210
        :pswitch_1a4
        :pswitch_32a
        :pswitch_210
        :pswitch_210
        :pswitch_526
        :pswitch_526
        :pswitch_210
        :pswitch_12f
        :pswitch_210
        :pswitch_210
        :pswitch_210
        :pswitch_210
    .end packed-switch
.end method

.method public getValue32()J
    .registers 3

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    return-object v0
.end method
