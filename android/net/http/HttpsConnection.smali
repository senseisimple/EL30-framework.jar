.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 7
    .parameter "context"
    .parameter "host"
    .parameter "proxy"
    .parameter "requestFeeder"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, p2, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    .line 127
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 133
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 144
    iput-object p3, p0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 145
    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 115
    const-class v0, Landroid/net/http/HttpsConnection;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .registers 8
    .parameter "sessionDir"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, cache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    if-eqz p0, :cond_25

    .line 77
    :try_start_3
    const-string v4, "HttpsConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caching SSL sessions in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    move-result-object v0

    .line 82
    :cond_25
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-direct {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>()V

    .line 85
    .local v2, sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Landroid/net/http/HttpsConnection$1;

    invoke-direct {v5}, Landroid/net/http/HttpsConnection$1;-><init>()V

    aput-object v5, v3, v4

    .line 101
    .local v3, trustManagers:[Ljavax/net/ssl/TrustManager;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 102
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V

    .line 104
    const-class v4, Landroid/net/http/HttpsConnection;

    monitor-enter v4
    :try_end_44
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_44} :catch_4f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_44} :catch_57

    .line 105
    :try_start_44
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 106
    monitor-exit v4

    .line 112
    return-void

    .line 106
    :catchall_4c
    move-exception v5

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v5
    :try_end_4f
    .catch Ljava/security/KeyManagementException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_57

    .line 107
    .end local v2           #sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    .end local v3           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_4f
    move-exception v4

    move-object v1, v4

    .line 108
    .local v1, e:Ljava/security/KeyManagementException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 109
    .end local v1           #e:Ljava/security/KeyManagementException;
    :catch_57
    move-exception v4

    move-object v1, v4

    .line 110
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method closeConnection()V
    .registers 3

    .prologue
    .line 381
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_8

    .line 383
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 387
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 388
    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 396
    :cond_19
    :goto_19
    return-void

    .line 390
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 394
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    const-string v0, "https"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .registers 32
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/16 v22, 0x0

    .line 166
    .local v22, sslSock:Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1e2

    .line 174
    const/16 v17, 0x0

    .line 175
    .local v17, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    const/16 v20, 0x0

    .line 177
    .local v20, proxySock:Ljava/net/Socket;
    :try_start_e
    new-instance v21, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2d} :catch_94

    .line 180
    .end local v20           #proxySock:Ljava/net/Socket;
    .local v21, proxySock:Ljava/net/Socket;
    const v26, 0xea60

    :try_start_30
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 182
    new-instance v18, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3c} :catch_2a6

    .line 183
    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .local v18, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    :try_start_3c
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 184
    .local v16, params:Lorg/apache/http/params/HttpParams;
    const/16 v26, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 186
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_53} :catch_2ad

    .line 201
    const/16 v24, 0x0

    .line 202
    .local v24, statusLine:Lorg/apache/http/StatusLine;
    const/16 v23, 0x0

    .line 203
    .local v23, statusCode:I
    new-instance v13, Landroid/net/http/Headers;

    invoke-direct {v13}, Landroid/net/http/Headers;-><init>()V

    .line 205
    .local v13, headers:Landroid/net/http/Headers;
    :try_start_5c
    new-instance v19, Lorg/apache/http/message/BasicHttpRequest;

    const-string v26, "CONNECT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v19, proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, arr$:[Lorg/apache/http/Header;
    array-length v15, v5

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_7f
    if-ge v14, v15, :cond_ad

    aget-object v11, v5, v14

    .line 210
    .local v11, h:Lorg/apache/http/Header;
    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, headerName:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_91
    .catch Lorg/apache/http/ParseException; {:try_start_5c .. :try_end_91} :catch_151
    .catch Lorg/apache/http/HttpException; {:try_start_5c .. :try_end_91} :catch_165
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_91} :catch_179

    .line 209
    add-int/lit8 v14, v14, 0x1

    goto :goto_7f

    .line 187
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v11           #h:Lorg/apache/http/Header;
    .end local v12           #headerName:Ljava/lang/String;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v23           #statusCode:I
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v20       #proxySock:Ljava/net/Socket;
    :catch_94
    move-exception v26

    move-object/from16 v8, v26

    .line 188
    .local v8, e:Ljava/io/IOException;
    :goto_97
    if-eqz v17, :cond_9c

    .line 189
    invoke-virtual/range {v17 .. v17}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 192
    :cond_9c
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, errorMessage:Ljava/lang/String;
    if-nez v10, :cond_a4

    .line 194
    const-string v10, "failed to establish a connection to the proxy"

    .line 198
    :cond_a4
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 216
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxySock:Ljava/net/Socket;
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v13       #headers:Landroid/net/http/Headers;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v16       #params:Lorg/apache/http/params/HttpParams;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v19       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .restart local v21       #proxySock:Ljava/net/Socket;
    .restart local v23       #statusCode:I
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    :cond_ad
    :try_start_ad
    invoke-virtual/range {v18 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 217
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 224
    :cond_b3
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v24

    .line 225
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_bd
    .catch Lorg/apache/http/ParseException; {:try_start_ad .. :try_end_bd} :catch_151
    .catch Lorg/apache/http/HttpException; {:try_start_ad .. :try_end_bd} :catch_165
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_bd} :catch_179

    move-result v23

    .line 226
    const/16 v26, 0xc8

    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_b3

    .line 253
    const/16 v26, 0xc8

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a4

    .line 255
    :try_start_ce
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v23

    .end local v23           #statusCode:I
    move-object/from16 v0, v23

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v22, v0
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_fc} :catch_18d

    .line 309
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    :goto_fc
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v9

    .line 313
    .local v9, error:Landroid/net/http/SslError;
    if-eqz v9, :cond_281

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 320
    const/16 v27, 0x1

    :try_start_121
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 321
    monitor-exit v26
    :try_end_128
    .catchall {:try_start_121 .. :try_end_128} :catchall_234

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    move-result v6

    .line 324
    .local v6, canHandle:Z
    if-nez v6, :cond_237

    .line 325
    new-instance v26, Ljava/io/IOException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to handle "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 227
    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .restart local v13       #headers:Landroid/net/http/Headers;
    .restart local v16       #params:Lorg/apache/http/params/HttpParams;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    .restart local v23       #statusCode:I
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    :catch_151
    move-exception v26

    move-object/from16 v8, v26

    .line 228
    .local v8, e:Lorg/apache/http/ParseException;
    invoke-virtual {v8}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 229
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_15c

    .line 230
    const-string v10, "failed to send a CONNECT request"

    .line 234
    :cond_15c
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 235
    .end local v8           #e:Lorg/apache/http/ParseException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_165
    move-exception v26

    move-object/from16 v8, v26

    .line 236
    .local v8, e:Lorg/apache/http/HttpException;
    invoke-virtual {v8}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 237
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_170

    .line 238
    const-string v10, "failed to send a CONNECT request"

    .line 242
    :cond_170
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 243
    .end local v8           #e:Lorg/apache/http/HttpException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_179
    move-exception v26

    move-object/from16 v8, v26

    .line 244
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 245
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_184

    .line 246
    const-string v10, "failed to send a CONNECT request"

    .line 250
    :cond_184
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 257
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v23           #statusCode:I
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v19       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    :catch_18d
    move-exception v26

    move-object/from16 v8, v26

    .line 258
    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v22, :cond_193

    .line 259
    throw v22

    .line 262
    :cond_193
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 263
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_19b

    .line 264
    const-string v10, "failed to create an SSL socket"

    .line 267
    :cond_19b
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 271
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v23       #statusCode:I
    :cond_1a4
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v25

    .line 273
    .local v25, version:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v27

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v28

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v23

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 277
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 278
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/net/http/EventHandler;->endData()V

    .line 280
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 284
    const/16 v26, 0x0

    .line 367
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v23           #statusCode:I
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #version:Lorg/apache/http/ProtocolVersion;
    :goto_1e1
    return-object v26

    .line 289
    :cond_1e2
    :try_start_1e2
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v22, v0

    .line 291
    const/16 v26, 0x7530

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 292
    new-instance v26, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    invoke-direct/range {v26 .. v28}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_219
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_219} :catch_21b

    goto/16 :goto_fc

    .line 294
    :catch_21b
    move-exception v26

    move-object/from16 v8, v26

    .line 295
    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v22, :cond_223

    .line 296
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 299
    :cond_223
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 300
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_22b

    .line 301
    const-string v10, "failed to create an SSL socket"

    .line 304
    :cond_22b
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 321
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v9       #error:Landroid/net/http/SslError;
    :catchall_234
    move-exception v27

    :try_start_235
    monitor-exit v26
    :try_end_236
    .catchall {:try_start_235 .. :try_end_236} :catchall_234

    throw v27

    .line 327
    .restart local v6       #canHandle:Z
    :cond_237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 328
    :try_start_23e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v27, v0
    :try_end_244
    .catchall {:try_start_23e .. :try_end_244} :catchall_27d

    if-eqz v27, :cond_26a

    .line 336
    :try_start_246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    const-wide/32 v28, 0x927c0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/Object;->wait(J)V

    .line 337
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v27, v0

    if-eqz v27, :cond_26a

    .line 341
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 342
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z
    :try_end_26a
    .catchall {:try_start_246 .. :try_end_26a} :catchall_27d
    .catch Ljava/lang/InterruptedException; {:try_start_246 .. :try_end_26a} :catch_2a4

    .line 352
    :cond_26a
    :goto_26a
    :try_start_26a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mAborted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_280

    .line 355
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 356
    new-instance v27, Landroid/net/http/SSLConnectionClosedByUserException;

    const-string v28, "connection closed by the user"

    invoke-direct/range {v27 .. v28}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 358
    :catchall_27d
    move-exception v27

    monitor-exit v26
    :try_end_27f
    .catchall {:try_start_26a .. :try_end_27f} :catchall_27d

    throw v27

    :cond_280
    :try_start_280
    monitor-exit v26
    :try_end_281
    .catchall {:try_start_280 .. :try_end_281} :catchall_27d

    .line 362
    .end local v6           #canHandle:Z
    :cond_281
    new-instance v7, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v7}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 363
    .local v7, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 364
    .local v16, params:Lorg/apache/http/params/BasicHttpParams;
    const-string v26, "http.socket.buffer-size"

    const/16 v27, 0x2000

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 365
    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v26, v7

    .line 367
    goto/16 :goto_1e1

    .line 348
    .end local v7           #conn:Landroid/net/http/AndroidHttpClientConnection;
    .end local v16           #params:Lorg/apache/http/params/BasicHttpParams;
    .restart local v6       #canHandle:Z
    :catch_2a4
    move-exception v27

    goto :goto_26a

    .line 187
    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    :catch_2a6
    move-exception v26

    move-object/from16 v8, v26

    move-object/from16 v20, v21

    .end local v21           #proxySock:Ljava/net/Socket;
    .restart local v20       #proxySock:Ljava/net/Socket;
    goto/16 :goto_97

    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxySock:Ljava/net/Socket;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    :catch_2ad
    move-exception v26

    move-object/from16 v8, v26

    move-object/from16 v20, v21

    .end local v21           #proxySock:Ljava/net/Socket;
    .restart local v20       #proxySock:Ljava/net/Socket;
    move-object/from16 v17, v18

    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    goto/16 :goto_97
.end method

.method restartConnection(Z)V
    .registers 5
    .parameter "proceed"

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_4
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_15

    .line 409
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 410
    if-nez p1, :cond_17

    const/4 v1, 0x1

    :goto_e
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 411
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 413
    :cond_15
    monitor-exit v0

    .line 414
    return-void

    :cond_17
    move v1, v2

    .line 410
    goto :goto_e

    .line 413
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .parameter "certificate"

    .prologue
    .line 153
    iput-object p1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 154
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
