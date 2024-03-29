.class public Landroid/drm/mobile2/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Landroid/drm/mobile2/HttpConstants;


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final DEBUG:Z = false

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "DrmLicenseHttpManger"

.field private static final TEMP:Ljava/lang/String; = "\u0000"

.field private static client:Landroid/net/http/AndroidHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/drm/mobile2/HttpManager;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .registers 5
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 435
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 438
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 443
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .end local v0           #country:Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public static closeHttpConnection()Z
    .registers 2

    .prologue
    .line 363
    sget-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_b

    .line 364
    sget-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 365
    const/4 v0, 0x1

    .line 368
    :goto_a
    return v0

    .line 367
    :cond_b
    const-string v0, "DrmLicenseHttpManger"

    const-string v1, "Android HTTP CLient is already NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static createHttpClient()Landroid/net/http/AndroidHttpClient;
    .registers 7

    .prologue
    const-string v6, "DrmLicenseHttpManger"

    .line 399
    invoke-static {}, Landroid/drm/mobile2/HttpConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, userAgent:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 401
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 402
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Landroid/drm/mobile2/HttpConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 407
    .local v2, soTimeout:I
    const-string v4, "DrmLicenseHttpManger"

    const/4 v4, 0x3

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 408
    const-string v4, "DrmLicenseHttpManger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_44
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 412
    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 421
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/drm/mobile2/HttpManager;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 424
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 426
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_1f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Landroid/drm/mobile2/HttpManager;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 430
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    const-string v0, "DrmLicenseHttpManger"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I
    .registers 33
    .parameter "context"
    .parameter "session"
    .parameter "url"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "body"
    .parameter "header"
    .parameter "headerlen"
    .parameter "bodylen"
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p2, :cond_a

    .line 97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "URL must not be null."

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    .restart local p0
    .restart local p1
    :cond_a
    const/16 v16, 0x0

    .line 100
    .local v16, multiPart:Z
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v17, out:Ljava/io/ByteArrayOutputStream;
    const-string v4, "DrmLicenseHttpManger"

    const-string/jumbo v5, "testing the Httpconnetion"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/16 v19, 0x0

    .line 104
    .local v19, strheader:Ljava/lang/StringBuilder;
    const-string v4, "DrmLicenseHttpManger"

    const-string v5, "httpConnection: params list"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ttoken\t\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\turl\t\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tmethod\t\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_1bb

    const-string v6, "POST"

    :goto_6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tisProxySet\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tproxyHost\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tproxyPort\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tbody\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\theader\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v4, 0x2

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_1c9

    if-eqz p7, :cond_1c9

    .line 119
    const/4 v4, 0x0

    const/16 v5, 0x3e

    const-string v6, "</roap:"

    move-object/from16 v0, p7

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p7

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p7

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p7

    .line 120
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t junk removed body\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_140
    const/4 v6, 0x0

    .line 129
    .local v6, status:Lorg/apache/http/StatusLine;
    :try_start_141
    new-instance v4, Ljava/net/URI;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 130
    .local v4, hostUrl:Ljava/net/URI;
    new-instance v7, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    .end local v4           #hostUrl:Ljava/net/URI;
    const-string v8, "http"

    invoke-direct {v7, v5, v4, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    .local v7, target:Lorg/apache/http/HttpHost;
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->createHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    sput-object v4, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .line 135
    const/4 v4, 0x0

    .line 136
    .local v4, req:Lorg/apache/http/HttpRequest;
    const-string v4, "DrmLicenseHttpManger"

    .end local v4           #req:Lorg/apache/http/HttpRequest;
    const-string v5, "extracting the headers"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    packed-switch p3, :pswitch_data_88a

    .line 154
    const-string p0, "DrmLicenseHttpManger"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown HTTP method: "

    .end local p2
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Must be one of POST["

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] or GET["

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]."

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catchall {:try_start_141 .. :try_end_1a3} :catchall_74d
    .catch Ljava/net/URISyntaxException; {:try_start_141 .. :try_end_1a3} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_141 .. :try_end_1a3} :catch_6b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_141 .. :try_end_1a3} :catch_6de
    .catch Ljava/net/SocketException; {:try_start_141 .. :try_end_1a3} :catch_703
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_1a3} :catch_728

    .line 157
    const/16 p0, -0x1

    .line 352
    sget-object p1, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p1, :cond_35f

    .line 355
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p0, 0x1

    move-object/from16 p2, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p0

    move/from16 p0, v16

    .line 359
    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local v16           #multiPart:Z
    .end local p4
    .end local p5
    .end local p6
    .end local p7
    .end local p8
    .end local p9
    .end local p10
    .local p0, multiPart:Z
    :goto_1ba
    return p4

    .line 107
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, url:Ljava/lang/String;
    .local p3, method:I
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_1bb
    const/4 v6, 0x1

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_1c5

    const-string v6, "GET"

    goto/16 :goto_6d

    :cond_1c5
    const-string v6, "UNKNOWN"

    goto/16 :goto_6d

    .line 124
    :cond_1c9
    const-string v4, "DrmLicenseHttpManger"

    const-string v5, "body is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_140

    .line 139
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    :pswitch_1d2
    :try_start_1d2
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 140
    .local v5, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance p2, Lorg/apache/http/entity/BasicHttpEntity;

    .end local p2           #url:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 141
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    if-eqz p7, :cond_1ff

    .line 142
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 143
    .local v4, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 144
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    int-to-long v8, v4

    move-object/from16 v0, p2

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 146
    :cond_1ff
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 147
    move-object/from16 p2, v5

    .local p2, req:Lorg/apache/http/HttpRequest;
    move-object/from16 v4, p2

    .line 161
    .end local v5           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #req:Lorg/apache/http/HttpRequest;
    .local v4, req:Lorg/apache/http/HttpRequest;
    :goto_209
    sget-object p2, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p2 .. p2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    .line 162
    .local p2, params:Lorg/apache/http/params/HttpParams;
    if-eqz p4, :cond_24a

    .line 163
    const-string v5, "DrmLicenseHttpManger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "proxy is set:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v5, Lorg/apache/http/HttpHost;

    move-object v0, v5

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 167
    :cond_24a
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 169
    const-string p2, "DrmLicenseHttpManger"

    .end local p2           #params:Lorg/apache/http/params/HttpParams;
    const-string v5, "GET Params"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string p2, "Accept-Language"

    sget-object v5, Landroid/drm/mobile2/HttpManager;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string p2, "Accept-Encoding"

    const-string v5, "gzip"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/16 p2, 0x1

    move/from16 v0, p3

    move/from16 v1, p2

    if-ne v0, v1, :cond_36b

    .line 186
    const-string p2, "Accept"

    const-string v5, "application/vnd.oma.drm.roap-trigger+xml"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string p2, "Cookie"

    const-string/jumbo v5, "phone=919880438077"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_28f
    const-string p2, "DrmLicenseHttpManger"

    const-string v5, " Before Execute"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object p2, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p2

    move-object v1, v7

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 195
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    :try_end_2a6
    .catchall {:try_start_1d2 .. :try_end_2a6} :catchall_74d
    .catch Ljava/net/URISyntaxException; {:try_start_1d2 .. :try_end_2a6} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_1d2 .. :try_end_2a6} :catch_6b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d2 .. :try_end_2a6} :catch_6de
    .catch Ljava/net/SocketException; {:try_start_1d2 .. :try_end_2a6} :catch_703
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_2a6} :catch_728

    move-result-object v18

    .line 197
    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local v18, status:Lorg/apache/http/StatusLine;
    :try_start_2a7
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 198
    .local v9, statusCode:I
    const-string p2, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 p2, 0xc8

    move v0, v9

    move/from16 v1, p2

    if-eq v0, v1, :cond_3d0

    .line 200
    const/16 p2, 0x12d

    move v0, v9

    move/from16 v1, p2

    if-eq v0, v1, :cond_2dc

    const/16 p2, 0x12e

    move v0, v9

    move/from16 v1, p2

    if-ne v0, v1, :cond_3a9

    .line 201
    :cond_2dc
    const-string p2, "Location"

    .line 202
    .local p2, locationHeader:Ljava/lang/String;
    const/4 v6, 0x0

    .line 203
    .local v6, locationHeaderValue:Ljava/lang/String;
    const/4 v5, 0x0

    .line 204
    .local v5, result:I
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    .end local p2           #locationHeader:Ljava/lang/String;
    if-eqz p2, :cond_2f8

    .line 205
    const-string p2, "Location"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    .line 206
    .local p2, locHeader:Lorg/apache/http/Header;
    if-eqz p2, :cond_2f8

    .line 207
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 210
    .end local p2           #locHeader:Lorg/apache/http/Header;
    :cond_2f8
    const-string p2, "DrmLicenseHttpManger"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locHeader value :"

    .end local v5           #result:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string p2, "DrmLicenseHttpManger"

    const-string v4, "We got 302 making another connection"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    .line 213
    invoke-static/range {v4 .. v15}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I
    :try_end_336
    .catchall {:try_start_2a7 .. :try_end_336} :catchall_772
    .catch Ljava/net/URISyntaxException; {:try_start_2a7 .. :try_end_336} :catch_3c6
    .catch Ljava/lang/IllegalStateException; {:try_start_2a7 .. :try_end_336} :catch_832
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a7 .. :try_end_336} :catch_806
    .catch Ljava/net/SocketException; {:try_start_2a7 .. :try_end_336} :catch_7da
    .catch Ljava/lang/Exception; {:try_start_2a7 .. :try_end_336} :catch_7ae

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local v9           #statusCode:I
    move-result p0

    .line 352
    .local p0, result:I
    sget-object p1, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p1           #session:I
    if-eqz p1, :cond_39d

    .line 355
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #result:I
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p0, 0x1

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p0

    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .local p0, multiPart:Z
    goto/16 :goto_1ba

    .line 150
    .local v6, status:Lorg/apache/http/StatusLine;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, url:Ljava/lang/String;
    .local p3, method:I
    :pswitch_34e
    :try_start_34e
    const-string v4, "DrmLicenseHttpManger"

    const-string v5, "GET MEthod"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 152
    .local v4, req:Lorg/apache/http/HttpRequest;
    goto/16 :goto_209

    .end local v4           #req:Lorg/apache/http/HttpRequest;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #session:I
    .end local p2           #url:Ljava/lang/String;
    :cond_35f
    move-object/from16 p2, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p0

    move/from16 p0, v16

    .line 356
    .end local v16           #multiPart:Z
    .local p0, multiPart:Z
    goto/16 :goto_1ba

    .line 189
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v4       #req:Lorg/apache/http/HttpRequest;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p3, method:I
    :cond_36b
    const-string p2, "Content-Type"

    const-string v5, "application/vnd.oma.drm.roap-pdu+xml"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_376
    .catchall {:try_start_34e .. :try_end_376} :catchall_74d
    .catch Ljava/net/URISyntaxException; {:try_start_34e .. :try_end_376} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_34e .. :try_end_376} :catch_6b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34e .. :try_end_376} :catch_6de
    .catch Ljava/net/SocketException; {:try_start_34e .. :try_end_376} :catch_703
    .catch Ljava/lang/Exception; {:try_start_34e .. :try_end_376} :catch_728

    goto/16 :goto_28f

    .line 341
    .end local v4           #req:Lorg/apache/http/HttpRequest;
    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #session:I
    :catch_378
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .line 342
    .end local v16           #multiPart:Z
    .end local p5
    .end local p6
    .end local p7
    .end local p8
    .end local p9
    .end local p10
    .local p0, e:Ljava/net/URISyntaxException;
    .local p1, multiPart:Z
    :goto_381
    :try_start_381
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_384
    .catchall {:try_start_381 .. :try_end_384} :catchall_7a0

    .line 352
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/net/URISyntaxException;
    if-eqz p0, :cond_766

    .line 355
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .local v20, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_1ba

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .local v6, locationHeaderValue:Ljava/lang/String;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_39d
    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p0

    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .local p0, multiPart:Z
    goto/16 :goto_1ba

    .line 220
    .end local v6           #locationHeaderValue:Ljava/lang/String;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p3, method:I
    :cond_3a9
    :try_start_3a9
    new-instance p0, Ljava/io/IOException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #session:I
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HTTP error: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 341
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local v9           #statusCode:I
    .end local p8
    :catch_3c6
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .local p1, multiPart:Z
    goto :goto_381

    .line 223
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .restart local p0       #context:Landroid/content/Context;
    .local p1, session:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p8
    :cond_3d0
    const-string p0, "DrmLicenseHttpManger"

    .end local p0           #context:Landroid/content/Context;
    const-string p2, "After Execute"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    .line 225
    .local p0, a:[Lorg/apache/http/Header;
    new-instance p8, Ljava/lang/StringBuilder;

    .end local p8
    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3e4
    .catchall {:try_start_3a9 .. :try_end_3e4} :catchall_772
    .catch Ljava/net/URISyntaxException; {:try_start_3a9 .. :try_end_3e4} :catch_3c6
    .catch Ljava/lang/IllegalStateException; {:try_start_3a9 .. :try_end_3e4} :catch_832
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a9 .. :try_end_3e4} :catch_806
    .catch Ljava/net/SocketException; {:try_start_3a9 .. :try_end_3e4} :catch_7da
    .catch Ljava/lang/Exception; {:try_start_3a9 .. :try_end_3e4} :catch_7ae

    .line 226
    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p8, strheader:Ljava/lang/StringBuilder;
    const/16 p2, 0x0

    .local p2, i:I
    move/from16 p3, v16

    .end local v16           #multiPart:Z
    .end local p4           #isProxySet:Z
    .end local p5
    .end local p6
    .local p3, multiPart:Z
    :goto_3e8
    :try_start_3e8
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p4, v0

    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_46f

    .line 227
    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Content-Type"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_420

    .line 228
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "Header is Content-Type"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo p5, "multipart/related"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_420

    .line 230
    const/16 p3, 0x1

    .line 231
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "MultiPart True"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_420
    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ":"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    aget-object p5, p0, p2

    invoke-interface/range {p5 .. p5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\r\n"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string p4, "DrmLicenseHttpManger"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "headers are:"

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    aget-object p6, p0, p2

    invoke-interface/range {p6 .. p6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    aget-object p6, p0, p2

    invoke-interface/range {p6 .. p6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p6

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46b
    .catchall {:try_start_3e8 .. :try_end_46b} :catchall_77e
    .catch Ljava/net/URISyntaxException; {:try_start_3e8 .. :try_end_46b} :catch_85e
    .catch Ljava/lang/IllegalStateException; {:try_start_3e8 .. :try_end_46b} :catch_83d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e8 .. :try_end_46b} :catch_811
    .catch Ljava/net/SocketException; {:try_start_3e8 .. :try_end_46b} :catch_7e5
    .catch Ljava/lang/Exception; {:try_start_3e8 .. :try_end_46b} :catch_7b9

    .line 226
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3e8

    .line 238
    :cond_46f
    if-eqz p3, :cond_484

    .line 239
    :try_start_471
    const-string p0, "Transfer-Encoding:chunked"

    .end local p0           #a:[Lorg/apache/http/Header;
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\r\n"

    .end local p2           #i:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_484
    const-string p0, "DrmLicenseHttpManger"

    const-string p2, "######sending headers 1st..######"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz p3, :cond_4a9

    .line 242
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    .line 243
    .end local v7           #target:Lorg/apache/http/HttpHost;
    const-string p0, "DrmLicenseHttpManger"

    const-string p2, "######headers sent 1st..######"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_4a9
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 247
    .local p0, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    .line 249
    .local p2, inputstream:Ljava/io/InputStream;
    sget p4, Landroid/drm/mobile2/HttpConfig;->MAX_DATA_LEN:I

    move/from16 v0, p4

    new-array v0, v0, [B

    move-object/from16 p7, v0
    :try_end_4b9
    .catchall {:try_start_471 .. :try_end_4b9} :catchall_78a
    .catch Ljava/net/URISyntaxException; {:try_start_471 .. :try_end_4b9} :catch_869
    .catch Ljava/lang/IllegalStateException; {:try_start_471 .. :try_end_4b9} :catch_848
    .catch Ljava/lang/IllegalArgumentException; {:try_start_471 .. :try_end_4b9} :catch_81c
    .catch Ljava/net/SocketException; {:try_start_471 .. :try_end_4b9} :catch_7f0
    .catch Ljava/lang/Exception; {:try_start_471 .. :try_end_4b9} :catch_7c4

    .line 250
    .local p7, res:[B
    if-eqz p0, :cond_886

    .line 252
    :try_start_4bb
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p4

    if-eqz p4, :cond_570

    .line 255
    const/16 p4, 0x0

    .line 258
    .end local p9
    .local p4, n:I
    :goto_4c3
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    .line 259
    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 260
    const/16 p5, -0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_52d

    .line 261
    const-string p5, "DrmLicenseHttpManger"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "chunked data:bytes read sofar"

    move-object/from16 v0, p6

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p5

    move-object/from16 v0, p5

    array-length v0, v0

    move v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    .line 265
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_511
    .catchall {:try_start_4bb .. :try_end_511} :catchall_512

    goto :goto_4c3

    .line 335
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p4           #n:I
    .end local p7           #res:[B
    .end local p10
    :catchall_512
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    :goto_517
    if-eqz p0, :cond_521

    .line 336
    :try_start_519
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 337
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_521
    throw p2
    :try_end_522
    .catchall {:try_start_519 .. :try_end_522} :catchall_796
    .catch Ljava/net/URISyntaxException; {:try_start_519 .. :try_end_522} :catch_522
    .catch Ljava/lang/IllegalStateException; {:try_start_519 .. :try_end_522} :catch_853
    .catch Ljava/lang/IllegalArgumentException; {:try_start_519 .. :try_end_522} :catch_827
    .catch Ljava/net/SocketException; {:try_start_519 .. :try_end_522} :catch_7fb
    .catch Ljava/lang/Exception; {:try_start_519 .. :try_end_522} :catch_7cf

    .line 341
    :catch_522
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_381

    .line 268
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .local p4, n:I
    .restart local p7       #res:[B
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    .restart local p10
    :cond_52d
    :try_start_52d
    const-string p4, "DrmLicenseHttpManger"

    .end local p4           #n:I
    const-string p5, "Last chunked data:"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, " sending last chunk data"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_545
    .catchall {:try_start_52d .. :try_end_545} :catchall_512

    .line 276
    const/16 p1, 0x0

    .line 277
    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_547
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 278
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_54d
    .catchall {:try_start_547 .. :try_end_54d} :catchall_6a4

    .line 335
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p7           #res:[B
    .end local p10
    :goto_54d
    if-eqz p0, :cond_87e

    .line 336
    :try_start_54f
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 337
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_557
    .catchall {:try_start_54f .. :try_end_557} :catchall_796
    .catch Ljava/net/URISyntaxException; {:try_start_54f .. :try_end_557} :catch_522
    .catch Ljava/lang/IllegalStateException; {:try_start_54f .. :try_end_557} :catch_853
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54f .. :try_end_557} :catch_827
    .catch Ljava/net/SocketException; {:try_start_54f .. :try_end_557} :catch_7fb
    .catch Ljava/lang/Exception; {:try_start_54f .. :try_end_557} :catch_7cf

    move-object/from16 p0, p1

    .line 352
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    :goto_559
    sget-object p1, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p1, :cond_874

    .line 355
    sget-object p1, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p1, 0x1

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move/from16 p4, p1

    move-object/from16 p1, p0

    .end local p0           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_1ba

    .line 284
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .restart local p7       #res:[B
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    .restart local p9
    .restart local p10
    :cond_570
    :try_start_570
    const-string p4, "DrmLicenseHttpManger"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "content length:"

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p9

    .end local p9
    move-object/from16 v0, p5

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p4

    const-wide/16 p9, 0x0

    cmp-long p4, p4, p9

    if-lez p4, :cond_882

    .line 288
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "content length is present"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/16 p4, 0x0

    .line 290
    .local p4, n1:I
    const/16 p5, 0x0

    .line 291
    .local p5, offset:I
    const/16 p6, 0x1

    .line 293
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p10
    .local p6, progress:I
    :cond_5a7
    :goto_5a7
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    .line 294
    const/16 p9, -0x1

    move/from16 v0, p4

    move/from16 v1, p9

    if-eq v0, v1, :cond_61d

    .line 295
    add-int p5, p5, p4

    .line 296
    const/16 p9, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    move/from16 v2, p9

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 297
    if-eqz p3, :cond_615

    .line 298
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p9

    move-wide/from16 v0, p9

    long-to-int v0, v0

    move/from16 p9, v0

    div-int/lit8 p9, p9, 0xa

    mul-int p9, p9, p6

    move/from16 v0, p5

    move/from16 v1, p9

    if-lt v0, v1, :cond_5a7

    .line 299
    add-int/lit8 p6, p6, 0x1

    .line 300
    const-string p9, "DrmLicenseHttpManger"

    new-instance p10, Ljava/lang/StringBuilder;

    invoke-direct/range {p10 .. p10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending part "

    move-object/from16 v0, p10

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p10

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p10

    invoke-virtual/range {p10 .. p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p9

    move-object/from16 v0, p9

    array-length v0, v0

    move v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    .line 304
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_5a7

    .line 308
    :cond_615
    const-string p9, "DrmLicenseHttpManger"

    const-string p10, "Not MultiPartData"

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a7

    .line 311
    :cond_61d
    const-string p5, "DrmLicenseHttpManger"

    .end local p5           #offset:I
    new-instance p6, Ljava/lang/StringBuilder;

    .end local p6           #progress:I
    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "data read finished:(int)entity.getContentLength()"

    .end local p7           #res:[B
    invoke-virtual/range {p6 .. p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p9

    move-wide/from16 v0, p9

    long-to-int v0, v0

    move/from16 p7, v0

    invoke-virtual/range {p6 .. p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string p5, "DrmLicenseHttpManger"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "data read finished:(int)entity.getContentLength()"

    invoke-virtual/range {p6 .. p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4           #n1:I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string p4, "DrmLicenseHttpManger"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "data read finished:(int)entity.getContentLength()"

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p6

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p5, "NO NEED TO SEND DATA NOW DATA HAS BEEN SENT ALREADY"

    invoke-virtual/range {p4 .. p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    if-nez p3, :cond_6a7

    .line 317
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p4

    move-wide/from16 v0, p4

    long-to-int v0, v0

    move v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_69a
    .catchall {:try_start_570 .. :try_end_69a} :catchall_512

    .line 325
    :goto_69a
    const/16 p1, 0x0

    .line 326
    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_69c
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 327
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_6a2
    .catchall {:try_start_69c .. :try_end_6a2} :catchall_6a4

    goto/16 :goto_54d

    .line 335
    :catchall_6a4
    move-exception p2

    goto/16 :goto_517

    .line 321
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .local p1, session:I
    :cond_6a7
    :try_start_6a7
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, " MultiPartData already sent to the engine so sending last \r\n to engine"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_6b8
    .catchall {:try_start_6a7 .. :try_end_6b8} :catchall_512

    goto :goto_69a

    .line 343
    .end local v9           #statusCode:I
    .end local v18           #status:Lorg/apache/http/StatusLine;
    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    .end local p1           #session:I
    .end local p2           #inputstream:Ljava/io/InputStream;
    .local v6, status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .local p8, header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_6b9
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .line 344
    .end local v16           #multiPart:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .local p0, e:Ljava/lang/IllegalStateException;
    .local p1, multiPart:Z
    :goto_6c2
    :try_start_6c2
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_6c5
    .catchall {:try_start_6c2 .. :try_end_6c5} :catchall_7a0

    .line 352
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/lang/IllegalStateException;
    if-eqz p0, :cond_766

    .line 355
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .restart local v20       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_1ba

    .line 345
    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_6de
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .line 346
    .end local v16           #multiPart:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .local p0, e:Ljava/lang/IllegalArgumentException;
    .local p1, multiPart:Z
    :goto_6e7
    :try_start_6e7
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_6ea
    .catchall {:try_start_6e7 .. :try_end_6ea} :catchall_7a0

    .line 352
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/lang/IllegalArgumentException;
    if-eqz p0, :cond_766

    .line 355
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .restart local v20       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_1ba

    .line 347
    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_703
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .line 348
    .end local v16           #multiPart:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .local p0, e:Ljava/net/SocketException;
    .local p1, multiPart:Z
    :goto_70c
    :try_start_70c
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_70f
    .catchall {:try_start_70c .. :try_end_70f} :catchall_7a0

    .line 352
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/net/SocketException;
    if-eqz p0, :cond_766

    .line 355
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .restart local v20       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_1ba

    .line 349
    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_728
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .line 350
    .end local v16           #multiPart:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .local p0, e:Ljava/lang/Exception;
    .local p1, multiPart:Z
    :goto_731
    :try_start_731
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_734
    .catchall {:try_start_731 .. :try_end_734} :catchall_7a0

    .line 352
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/lang/Exception;
    if-eqz p0, :cond_766

    .line 355
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .restart local v20       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_1ba

    .line 352
    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catchall_74d
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .end local p4           #isProxySet:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local p0       #multiPart:Z
    :goto_758
    sget-object p5, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p5, :cond_765

    .line 355
    sget-object p4, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p4 .. p4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 356
    const/16 p4, 0x1

    goto/16 :goto_1ba

    :cond_765
    throw p4

    .end local p0           #multiPart:Z
    .local p1, multiPart:Z
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    .local p3, status:Lorg/apache/http/StatusLine;
    .local p4, strheader:Ljava/lang/StringBuilder;
    :cond_766
    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .restart local p0       #multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .line 359
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    :goto_76e
    const/16 p4, -0x1

    goto/16 :goto_1ba

    .line 352
    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catchall_772
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .restart local p0       #multiPart:Z
    goto :goto_758

    .end local p4           #isProxySet:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .local p8, strheader:Ljava/lang/StringBuilder;
    :catchall_77e
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto :goto_758

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #multiPart:Z
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catchall_78a
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .restart local p0       #multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto :goto_758

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #multiPart:Z
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catchall_796
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .restart local p0       #multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto :goto_758

    .end local v9           #statusCode:I
    .end local p0           #multiPart:Z
    .local p1, multiPart:Z
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    .local p3, status:Lorg/apache/http/StatusLine;
    .local p4, strheader:Ljava/lang/StringBuilder;
    :catchall_7a0
    move-exception p0

    move-object/from16 v20, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .restart local p0       #multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p4, v20

    goto :goto_758

    .line 349
    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_7ae
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .local p1, multiPart:Z
    goto/16 :goto_731

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_7b9
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_731

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_7c4
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_731

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_7cf
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_731

    .line 347
    .end local v9           #statusCode:I
    .end local p1           #multiPart:Z
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_7da
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .restart local p1       #multiPart:Z
    goto/16 :goto_70c

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_7e5
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_70c

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_7f0
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_70c

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_7fb
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_70c

    .line 345
    .end local v9           #statusCode:I
    .end local p1           #multiPart:Z
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_806
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .restart local p1       #multiPart:Z
    goto/16 :goto_6e7

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_811
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_6e7

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_81c
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_6e7

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_827
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_6e7

    .line 343
    .end local v9           #statusCode:I
    .end local p1           #multiPart:Z
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_832
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .restart local p1       #multiPart:Z
    goto/16 :goto_6c2

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_83d
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_6c2

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_848
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_6c2

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_853
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_6c2

    .line 341
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    .restart local p9
    .restart local p10
    :catch_85e
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_381

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_869
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_381

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p1           #multiPart:Z
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :cond_874
    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p1, p0

    .end local p0           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_76e

    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :cond_87e
    move-object/from16 p0, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_559

    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p7, res:[B
    .restart local p10
    :cond_882
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_54d

    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .local p1, session:I
    .restart local p9
    :cond_886
    move-object/from16 p0, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_559

    .line 137
    :pswitch_data_88a
    .packed-switch 0x1
        :pswitch_34e
        :pswitch_1d2
    .end packed-switch
.end method

.method private static sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    .registers 10
    .parameter "h"
    .parameter "length"
    .parameter "status"
    .parameter "data"
    .parameter "header"
    .parameter "session"

    .prologue
    .line 372
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 373
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/drm/mobile2/DrmHttpEvent;

    invoke-direct {v0}, Landroid/drm/mobile2/DrmHttpEvent;-><init>()V

    .line 374
    .local v0, event:Landroid/drm/mobile2/DrmHttpEvent;
    invoke-virtual {v0, p3}, Landroid/drm/mobile2/DrmHttpEvent;->setBody([B)V

    .line 375
    invoke-virtual {v0, p1}, Landroid/drm/mobile2/DrmHttpEvent;->setBodylen(I)V

    .line 376
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setEvent(I)V

    .line 377
    invoke-virtual {v0, p4}, Landroid/drm/mobile2/DrmHttpEvent;->setHeader(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p5}, Landroid/drm/mobile2/DrmHttpEvent;->setSession(I)V

    .line 379
    if-nez p4, :cond_31

    .line 380
    const-string v2, "DrmLicenseHttpManger"

    const-string/jumbo v3, "sending null hedear"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setHeaderlen(I)V

    .line 384
    :goto_28
    invoke-virtual {v0, p2}, Landroid/drm/mobile2/DrmHttpEvent;->setStatus(I)V

    .line 385
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    return-void

    .line 383
    :cond_31
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setHeaderlen(I)V

    goto :goto_28
.end method
