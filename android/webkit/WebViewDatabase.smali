.class public Landroid/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# static fields
.field private static final CACHE_CONTENTDISPOSITION_COL:Ljava/lang/String; = "contentdisposition"

.field private static final CACHE_CONTENTLENGTH_COL:Ljava/lang/String; = "contentlength"

.field private static final CACHE_CROSSDOMAIN_COL:Ljava/lang/String; = "crossdomain"

.field private static final CACHE_DATABASE_FILE:Ljava/lang/String; = "webviewCache.db"

.field private static final CACHE_DATABASE_VERSION:I = 0x4

.field private static final CACHE_ENCODING_COL:Ljava/lang/String; = "encoding"

.field private static final CACHE_ETAG_COL:Ljava/lang/String; = "etag"

.field private static final CACHE_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final CACHE_EXPIRES_STRING_COL:Ljava/lang/String; = "expiresstring"

.field private static final CACHE_FILE_PATH_COL:Ljava/lang/String; = "filepath"

.field private static final CACHE_HTTP_STATUS_COL:Ljava/lang/String; = "httpstatus"

.field private static final CACHE_LAST_MODIFY_COL:Ljava/lang/String; = "lastmodify"

.field private static final CACHE_LOCATION_COL:Ljava/lang/String; = "location"

.field private static final CACHE_MIMETYPE_COL:Ljava/lang/String; = "mimetype"

.field private static final CACHE_URL_COL:Ljava/lang/String; = "url"

.field private static final COOKIES_DOMAIN_COL:Ljava/lang/String; = "domain"

.field private static final COOKIES_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final COOKIES_NAME_COL:Ljava/lang/String; = "name"

.field private static final COOKIES_PATH_COL:Ljava/lang/String; = "path"

.field private static final COOKIES_SECURE_COL:Ljava/lang/String; = "secure"

.field private static final COOKIES_VALUE_COL:Ljava/lang/String; = "value"

.field private static final DATABASE_FILE:Ljava/lang/String; = "webview.db"

.field private static final DATABASE_VERSION:I = 0xa

.field private static final FORMDATA_NAME_COL:Ljava/lang/String; = "name"

.field private static final FORMDATA_URLID_COL:Ljava/lang/String; = "urlid"

.field private static final FORMDATA_VALUE_COL:Ljava/lang/String; = "value"

.field private static final FORMURL_URL_COL:Ljava/lang/String; = "url"

.field private static final HTTPAUTH_HOST_COL:Ljava/lang/String; = "host"

.field private static final HTTPAUTH_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final HTTPAUTH_REALM_COL:Ljava/lang/String; = "realm"

.field private static final HTTPAUTH_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final ID_COL:Ljava/lang/String; = "_id"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"

.field private static final PASSWORD_HOST_COL:Ljava/lang/String; = "host"

.field private static final PASSWORD_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final PASSWORD_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final TABLE_COOKIES_ID:I = 0x0

.field private static final TABLE_FORMDATA_ID:I = 0x3

.field private static final TABLE_FORMURL_ID:I = 0x2

.field private static final TABLE_HTTPAUTH_ID:I = 0x4

.field private static final TABLE_PASSWORD_ID:I = 0x1

.field private static mCacheContentDispositionColIndex:I

.field private static mCacheContentLengthColIndex:I

.field private static mCacheCrossDomainColIndex:I

.field private static mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mCacheETagColIndex:I

.field private static mCacheEncodingColIndex:I

.field private static mCacheExpiresColIndex:I

.field private static mCacheExpiresStringColIndex:I

.field private static mCacheFilePathColIndex:I

.field private static mCacheHttpStatusColIndex:I

.field private static mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private static mCacheLastModifyColIndex:I

.field private static mCacheLocationColIndex:I

.field private static mCacheMimeTypeColIndex:I

.field private static mCacheTransactionRefcount:I

.field private static mCacheUrlColIndex:I

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mInstance:Landroid/webkit/WebViewDatabase;

.field private static final mTableNames:[Ljava/lang/String;


# instance fields
.field private final mCookieLock:Ljava/lang/Object;

.field private final mFormLock:Ljava/lang/Object;

.field private final mHttpAuthLock:Ljava/lang/Object;

.field private final mPasswordLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 60
    sput-object v0, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    .line 62
    sput-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    sput-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cookies"

    aput-object v1, v0, v3

    const-string/jumbo v1, "password"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "formurl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "formdata"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "httpauth"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method private static bootstrapCacheDatabase()V
    .registers 2

    .prologue
    .line 377
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_12

    .line 378
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE cache (_id INTEGER PRIMARY KEY, url TEXT, filepath TEXT, lastmodify TEXT, etag TEXT, expires INTEGER, expiresstring TEXT, mimetype TEXT, encoding TEXT,httpstatus INTEGER, location TEXT, contentlength INTEGER, contentdisposition TEXT, crossdomain TEXT, UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX cacheUrlIndex ON cache (url)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 393
    :cond_12
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .registers 6
    .parameter "context"

    .prologue
    const-string/jumbo v1, "webviewCache.db"

    const-string/jumbo v1, "webview.db"

    .line 182
    const-class v1, Landroid/webkit/WebViewDatabase;

    monitor-enter v1

    :try_start_9
    sget-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    if-nez v2, :cond_118

    .line 183
    new-instance v2, Landroid/webkit/WebViewDatabase;

    invoke-direct {v2}, Landroid/webkit/WebViewDatabase;-><init>()V

    sput-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_134

    .line 185
    :try_start_14
    const-string/jumbo v2, "webview.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_134
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_1f} :catch_11c

    .line 197
    :cond_1f
    :goto_1f
    :try_start_1f
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3f

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3f

    .line 198
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_134

    .line 200
    :try_start_32
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeDatabase()V

    .line 201
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_137

    .line 203
    :try_start_3a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    :cond_3f
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_49

    .line 210
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_134

    .line 214
    :cond_49
    :try_start_49
    const-string/jumbo v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_134
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_54} :catch_13e

    .line 226
    :cond_54
    :goto_54
    :try_start_54
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_79

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_79

    .line 228
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_134

    .line 230
    :try_start_66
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeCacheDatabase()V

    .line 231
    invoke-static {}, Landroid/webkit/WebViewDatabase;->bootstrapCacheDatabase()V

    .line 232
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_156

    .line 234
    :try_start_71
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 239
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 242
    :cond_79
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_118

    .line 244
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA read_uncommitted = true;"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 251
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache"

    invoke-direct {v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 253
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    .line 255
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    .line 257
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "lastmodify"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    .line 259
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "etag"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    .line 261
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "expires"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    .line 263
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "expiresstring"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    .line 265
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    .line 267
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "encoding"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    .line 269
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "httpstatus"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    .line 271
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    .line 273
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "contentlength"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    .line 275
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "contentdisposition"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    .line 277
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "crossdomain"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    .line 282
    :cond_118
    sget-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;
    :try_end_11a
    .catchall {:try_start_71 .. :try_end_11a} :catchall_134

    monitor-exit v1

    return-object v2

    .line 187
    :catch_11c
    move-exception v2

    move-object v0, v2

    .line 189
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_11e
    const-string/jumbo v2, "webview.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 190
    const-string/jumbo v2, "webview.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_132
    .catchall {:try_start_11e .. :try_end_132} :catchall_134

    goto/16 :goto_1f

    .line 182
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_134
    move-exception v2

    monitor-exit v1

    throw v2

    .line 203
    :catchall_137
    move-exception v2

    :try_start_138
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 216
    :catch_13e
    move-exception v2

    move-object v0, v2

    .line 218
    .restart local v0       #e:Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "webviewCache.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 219
    const-string/jumbo v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_54

    .line 234
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_156
    move-exception v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_15d
    .catchall {:try_start_138 .. :try_end_15d} :catchall_134
.end method

.method private hasEntries(I)Z
    .registers 15
    .parameter "tableId"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 396
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    move v0, v11

    .line 411
    :goto_7
    return v0

    .line 400
    :cond_8
    const/4 v8, 0x0

    .line 401
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 403
    .local v10, ret:Z
    :try_start_a
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 405
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_1e} :catch_2b

    move-result v0

    if-ne v0, v12, :cond_29

    move v10, v12

    .line 409
    :goto_22
    if-eqz v8, :cond_27

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_27
    :goto_27
    move v0, v10

    .line 411
    goto :goto_7

    :cond_29
    move v10, v11

    .line 405
    goto :goto_22

    .line 406
    :catch_2b
    move-exception v0

    move-object v9, v0

    .line 407
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2d
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "hasEntries"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3b

    .line 409
    if-eqz v8, :cond_27

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_3b
    move-exception v0

    if-eqz v8, :cond_41

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0
.end method

.method private static upgradeCacheDatabase()V
    .registers 4

    .prologue
    .line 366
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 367
    .local v0, oldVersion:I
    if-eqz v0, :cond_33

    .line 368
    const-string/jumbo v1, "webviewdatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading cache database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_33
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 374
    return-void
.end method

.method private static upgradeDatabase()V
    .registers 12

    .prologue
    const-string v11, "DROP TABLE IF EXISTS "

    const-string v10, "CREATE TABLE "

    const-string v9, " INTEGER PRIMARY KEY, "

    const-string v8, " ("

    const-string v7, " TEXT, "

    .line 286
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 287
    .local v2, oldVersion:I
    if-eqz v2, :cond_3d

    .line 288
    const-string/jumbo v3, "webviewdatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", which will destroy old data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_3d
    const/16 v3, 0x8

    if-ne v3, v2, :cond_41

    :cond_41
    const/4 v1, 0x0

    .line 293
    .local v1, justPasswords:Z
    const/16 v3, 0x9

    if-ne v3, v2, :cond_e9

    const/4 v3, 0x1

    move v0, v3

    .line 294
    .local v0, justAuth:Z
    :goto_48
    if-eqz v0, :cond_ed

    .line 295
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 363
    :goto_e8
    return-void

    .line 293
    .end local v0           #justAuth:Z
    :cond_e9
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_48

    .line 307
    .restart local v0       #justAuth:Z
    :cond_ed
    if-nez v1, :cond_16a

    .line 308
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    :cond_16a
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 323
    if-nez v1, :cond_37a

    .line 325
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "expires"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "secure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE INDEX cookiesIndex ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (path)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "urlid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "urlid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT IGNORE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    :cond_37a
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_e8
.end method


# virtual methods
.method addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 7
    .parameter "url"
    .parameter "c"

    .prologue
    .line 678
    if-eqz p1, :cond_6

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7

    .line 698
    :cond_6
    :goto_6
    return-void

    .line 682
    :cond_7
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 683
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 684
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 685
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 686
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 687
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    iget-wide v2, p2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 688
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 689
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 690
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 691
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    iget v2, p2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 692
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 693
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    iget-wide v2, p2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 694
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 696
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 697
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    goto :goto_6
.end method

.method addCookie(Landroid/webkit/CookieManager$Cookie;)V
    .registers 8
    .parameter "cookie"

    .prologue
    .line 504
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    if-eqz v1, :cond_10

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_11

    .line 521
    :cond_10
    :goto_10
    return-void

    .line 509
    :cond_11
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    :try_start_14
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .local v0, cookieVal:Landroid/content/ContentValues;
    const-string v2, "domain"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string/jumbo v2, "path"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string/jumbo v2, "name"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string/jumbo v2, "value"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-wide v2, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4b

    .line 516
    const-string v2, "expires"

    iget-wide v3, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    :cond_4b
    const-string/jumbo v2, "secure"

    iget-boolean v3, p1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 519
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 520
    monitor-exit v1

    goto :goto_10

    .end local v0           #cookieVal:Landroid/content/ContentValues;
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_14 .. :try_end_66} :catchall_64

    throw v2
.end method

.method clearCache()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 704
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 709
    :goto_5
    return-void

    .line 708
    :cond_6
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5
.end method

.method clearCookies()V
    .registers 6

    .prologue
    .line 538
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 545
    :goto_4
    return-void

    .line 542
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_8
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 544
    monitor-exit v0

    goto :goto_4

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method clearExpiredCookies(J)V
    .registers 11
    .parameter "now"

    .prologue
    .line 568
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_5

    .line 577
    :goto_4
    return-void

    .line 572
    :cond_5
    const-string v0, "expires <= ?"

    .line 573
    .local v0, expires:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires <= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    monitor-exit v1

    goto :goto_4

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v2
.end method

.method public clearFormData()V
    .registers 6

    .prologue
    .line 1163
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 1171
    :goto_4
    return-void

    .line 1167
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_8
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1169
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1170
    monitor-exit v0

    goto :goto_4

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public clearHttpAuthUsernamePassword()V
    .registers 6

    .prologue
    .line 1003
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 1010
    :goto_4
    return-void

    .line 1007
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1008
    :try_start_8
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1009
    monitor-exit v0

    goto :goto_4

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method clearSessionCookies()V
    .registers 7

    .prologue
    .line 551
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_5

    .line 560
    :goto_4
    return-void

    .line 555
    :cond_5
    const-string v0, "expires ISNULL"

    .line 556
    .local v0, sessionExpired:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires ISNULL"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 559
    monitor-exit v1

    goto :goto_4

    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public clearUsernamePassword()V
    .registers 6

    .prologue
    .line 906
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 913
    :goto_4
    return-void

    .line 910
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_8
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 912
    monitor-exit v0

    goto :goto_4

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "domain"
    .parameter "path"
    .parameter "name"

    .prologue
    .line 485
    if-eqz p1, :cond_6

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    .line 496
    :cond_6
    :goto_6
    return-void

    .line 489
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_a
    const-string v0, "(domain == ?) AND (path == ?) AND (name == ?)"

    .line 493
    .local v0, where:Ljava/lang/String;
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "(domain == ?) AND (path == ?) AND (name == ?)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 495
    monitor-exit v1

    goto :goto_6

    .end local v0           #where:Ljava/lang/String;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw v2
.end method

.method endCacheTransaction()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 600
    sget v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    sub-int/2addr v0, v3

    sput v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-nez v0, :cond_52

    .line 601
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 603
    const-string/jumbo v0, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_3f
    :try_start_3f
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4b

    .line 610
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v3

    .line 614
    :goto_4a
    return v0

    .line 610
    :catchall_4b
    move-exception v0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 614
    :cond_52
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method getAllCacheFileNames()Ljava/util/List;
    .registers 8
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
    .line 805
    const/4 v2, 0x0

    .line 806
    .local v2, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 808
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath FROM cache"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 811
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_41
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_1c} :catch_31

    .line 813
    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    const/4 v4, 0x0

    :try_start_1d
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_48
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_27} :catch_4b

    move-result v4

    if-nez v4, :cond_1c

    move-object v2, v3

    .line 819
    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2b
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_30
    :goto_30
    return-object v2

    .line 816
    :catch_31
    move-exception v4

    move-object v1, v4

    .line 817
    .local v1, e:Ljava/lang/IllegalStateException;
    :goto_33
    :try_start_33
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "getAllCacheFileNames"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_41

    .line 819
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_41
    move-exception v4

    :goto_42
    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v4

    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_48
    move-exception v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_42

    .line 816
    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4b
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_33
.end method

.method getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    .line 624
    if-eqz p1, :cond_7

    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_9

    :cond_7
    move-object v4, v8

    .line 655
    :goto_8
    return-object v4

    .line 628
    :cond_9
    const/4 v0, 0x0

    .line 629
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain FROM cache WHERE url = ?"

    .line 633
    .local v2, query:Ljava/lang/String;
    :try_start_c
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain FROM cache WHERE url = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 634
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 635
    new-instance v3, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v3}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 636
    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 637
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 638
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 639
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 640
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 641
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    .line 642
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 643
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 644
    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 645
    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 646
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 647
    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_c .. :try_end_7d} :catchall_9c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_7d} :catch_8c

    .line 653
    if-eqz v0, :cond_82

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_82
    move-object v4, v3

    goto :goto_8

    .end local v3           #ret:Landroid/webkit/CacheManager$CacheResult;
    :cond_84
    if-eqz v0, :cond_89

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_89
    :goto_89
    move-object v4, v8

    .line 655
    goto/16 :goto_8

    .line 650
    :catch_8c
    move-exception v4

    move-object v1, v4

    .line 651
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_8e
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "getCache"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_9c

    .line 653
    if-eqz v0, :cond_89

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_89

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_9c
    move-exception v4

    if-eqz v0, :cond_a2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a2
    throw v4
.end method

.method getCacheTotalSize()J
    .registers 9

    .prologue
    .line 731
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_7

    .line 732
    const-wide/16 v5, 0x0

    .line 747
    :goto_6
    return-wide v5

    .line 734
    :cond_7
    const-wide/16 v3, 0x0

    .line 735
    .local v3, size:J
    const/4 v0, 0x0

    .line 736
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT SUM(contentlength) as sum FROM cache"

    .line 738
    .local v2, query:Ljava/lang/String;
    :try_start_c
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT SUM(contentlength) as sum FROM cache"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 739
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 740
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_37
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_1f} :catch_27

    move-result-wide v3

    .line 745
    :cond_20
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_25
    :goto_25
    move-wide v5, v3

    .line 747
    goto :goto_6

    .line 742
    :catch_27
    move-exception v5

    move-object v1, v5

    .line 743
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_29
    const-string/jumbo v5, "webviewdatabase"

    const-string v6, "getCacheTotalSize"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_37

    .line 745
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_25

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_37
    move-exception v5

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v5
.end method

.method getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 24
    .parameter "domain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz p1, :cond_b

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_c

    .line 471
    :cond_b
    :goto_b
    return-object v15

    .line 430
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 431
    const/4 v2, 0x7

    :try_start_14
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "domain"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "path"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "value"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "expires"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "secure"

    aput-object v3, v4, v2

    .line 436
    .local v4, columns:[Ljava/lang/String;
    const-string v19, "(domain GLOB \'*\' || ?)"
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_d4

    .line 438
    .local v19, selection:Ljava/lang/String;
    const/4 v11, 0x0

    .line 440
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_40
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, "(domain GLOB \'*\' || ?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 443
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 444
    const-string v2, "domain"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 445
    .local v12, domainCol:I
    const-string/jumbo v2, "path"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 446
    .local v17, pathCol:I
    const-string/jumbo v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 447
    .local v16, nameCol:I
    const-string/jumbo v2, "value"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 448
    .local v20, valueCol:I
    const-string v2, "expires"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 449
    .local v14, expiresCol:I
    const-string/jumbo v2, "secure"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 451
    .local v18, secureCol:I
    :cond_84
    new-instance v10, Landroid/webkit/CookieManager$Cookie;

    invoke-direct {v10}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .line 452
    .local v10, cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    .line 453
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    .line 454
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 455
    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 456
    invoke-interface {v11, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 457
    const-wide/16 v2, -0x1

    iput-wide v2, v10, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 461
    :goto_b4
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_ee

    const/4 v2, 0x1

    :goto_be
    iput-boolean v2, v10, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 462
    const/4 v2, 0x1

    iput-byte v2, v10, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 463
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c9
    .catchall {:try_start_40 .. :try_end_c9} :catchall_f0
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_c9} :catch_de

    move-result v2

    if-nez v2, :cond_84

    .line 469
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :cond_cc
    if-eqz v11, :cond_d1

    :try_start_ce
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_d1
    :goto_d1
    monitor-exit v21

    goto/16 :goto_b

    .line 472
    .end local v4           #columns:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v19           #selection:Ljava/lang/String;
    :catchall_d4
    move-exception v2

    monitor-exit v21
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_d4

    throw v2

    .line 459
    .restart local v4       #columns:[Ljava/lang/String;
    .restart local v10       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #domainCol:I
    .restart local v14       #expiresCol:I
    .restart local v16       #nameCol:I
    .restart local v17       #pathCol:I
    .restart local v18       #secureCol:I
    .restart local v19       #selection:Ljava/lang/String;
    .restart local v20       #valueCol:I
    :cond_d7
    :try_start_d7
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_dd
    .catchall {:try_start_d7 .. :try_end_dd} :catchall_f0
    .catch Ljava/lang/IllegalStateException; {:try_start_d7 .. :try_end_dd} :catch_de

    goto :goto_b4

    .line 466
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :catch_de
    move-exception v2

    move-object v13, v2

    .line 467
    .local v13, e:Ljava/lang/IllegalStateException;
    :try_start_e0
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getCookiesForDomain"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_f0

    .line 469
    if-eqz v11, :cond_d1

    :try_start_ea
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_d1

    .line 461
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v10       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v12       #domainCol:I
    .restart local v14       #expiresCol:I
    .restart local v16       #nameCol:I
    .restart local v17       #pathCol:I
    .restart local v18       #secureCol:I
    .restart local v20       #valueCol:I
    :cond_ee
    const/4 v2, 0x0

    goto :goto_be

    .line 469
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :catchall_f0
    move-exception v2

    if-eqz v11, :cond_f6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f6
    throw v2
    :try_end_f7
    .catchall {:try_start_ea .. :try_end_f7} :catchall_d4
.end method

.method getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 25
    .parameter "url"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .local v21, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_e

    .line 1144
    :cond_d
    :goto_d
    return-object v21

    .line 1094
    :cond_e
    const/4 v10, 0x0

    .line 1096
    .local v10, aURL:Ljava/net/URL;
    :try_start_f
    new-instance v11, Ljava/net/URL;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_17} :catch_ce

    .line 1097
    .end local v10           #aURL:Ljava/net/URL;
    .local v11, aURL:Ljava/net/URL;
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_3d} :catch_10a

    move-result-object v16

    .local v16, finalurl:Ljava/lang/String;
    move-object v10, v11

    .line 1107
    .end local v11           #aURL:Ljava/net/URL;
    .restart local v10       #aURL:Ljava/net/URL;
    :goto_3f
    const-string v17, "(url == ?)"

    .line 1108
    .local v17, urlSelection:Ljava/lang/String;
    const-string v14, "(urlid == ?) AND (name == ?)"

    .line 1110
    .local v14, dataSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object v10, v0

    .end local v10           #aURL:Ljava/net/URL;
    monitor-enter v10

    .line 1111
    const/4 v12, 0x0

    .line 1113
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_4a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "(url == ?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1116
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1117
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_71
    .catchall {:try_start_4a .. :try_end_71} :catchall_103
    .catch Ljava/lang/IllegalStateException; {:try_start_4a .. :try_end_71} :catch_ec

    move-result-wide v18

    .line 1118
    .local v18, urlid:J
    const/4 v13, 0x0

    .line 1120
    .local v13, dataCursor:Landroid/database/Cursor;
    :try_start_73
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "value"

    aput-object v6, v4, v5

    const-string v5, "(urlid == ?) AND (name == ?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1126
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 1127
    const-string/jumbo v2, "value"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1130
    .local v20, valueCol:I
    :cond_ab
    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_bb
    .catchall {:try_start_73 .. :try_end_bb} :catchall_fc
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_bb} :catch_dc

    move-result v2

    if-nez v2, :cond_ab

    .line 1136
    .end local v20           #valueCol:I
    :cond_be
    if-eqz v13, :cond_c3

    :try_start_c0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_103
    .catch Ljava/lang/IllegalStateException; {:try_start_c0 .. :try_end_c3} :catch_ec

    .line 1142
    .end local v13           #dataCursor:Landroid/database/Cursor;
    .end local v18           #urlid:J
    :cond_c3
    :goto_c3
    if-eqz v12, :cond_c8

    :try_start_c5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1144
    :cond_c8
    :goto_c8
    monitor-exit v10

    goto/16 :goto_d

    .line 1145
    :catchall_cb
    move-exception v2

    monitor-exit v10
    :try_end_cd
    .catchall {:try_start_c5 .. :try_end_cd} :catchall_cb

    throw v2

    .line 1098
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #dataSelection:Ljava/lang/String;
    .end local v16           #finalurl:Ljava/lang/String;
    .end local v17           #urlSelection:Ljava/lang/String;
    .restart local v10       #aURL:Ljava/net/URL;
    :catch_ce
    move-exception v2

    move-object v15, v2

    .line 1099
    .local v15, e:Ljava/net/MalformedURLException;
    :goto_d0
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "Failed in getFormData"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    move-object/from16 v16, p1

    .restart local v16       #finalurl:Ljava/lang/String;
    goto/16 :goto_3f

    .line 1133
    .end local v10           #aURL:Ljava/net/URL;
    .end local v15           #e:Ljava/net/MalformedURLException;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #dataCursor:Landroid/database/Cursor;
    .restart local v14       #dataSelection:Ljava/lang/String;
    .restart local v17       #urlSelection:Ljava/lang/String;
    .restart local v18       #urlid:J
    :catch_dc
    move-exception v2

    move-object v15, v2

    .line 1134
    .local v15, e:Ljava/lang/IllegalStateException;
    :try_start_de
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getFormData dataCursor"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e6
    .catchall {:try_start_de .. :try_end_e6} :catchall_fc

    .line 1136
    if-eqz v13, :cond_c3

    :try_start_e8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_103
    .catch Ljava/lang/IllegalStateException; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_c3

    .line 1139
    .end local v13           #dataCursor:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/IllegalStateException;
    .end local v18           #urlid:J
    :catch_ec
    move-exception v2

    move-object v15, v2

    .line 1140
    .restart local v15       #e:Ljava/lang/IllegalStateException;
    :try_start_ee
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getFormData cursor"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f6
    .catchall {:try_start_ee .. :try_end_f6} :catchall_103

    .line 1142
    if-eqz v12, :cond_c8

    :try_start_f8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_cb

    goto :goto_c8

    .line 1136
    .end local v15           #e:Ljava/lang/IllegalStateException;
    .restart local v13       #dataCursor:Landroid/database/Cursor;
    .restart local v18       #urlid:J
    :catchall_fc
    move-exception v2

    if-eqz v13, :cond_102

    :try_start_ff
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_102
    throw v2
    :try_end_103
    .catchall {:try_start_ff .. :try_end_103} :catchall_103
    .catch Ljava/lang/IllegalStateException; {:try_start_ff .. :try_end_103} :catch_ec

    .line 1142
    .end local v13           #dataCursor:Landroid/database/Cursor;
    .end local v18           #urlid:J
    :catchall_103
    move-exception v2

    if-eqz v12, :cond_109

    :try_start_106
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_109
    throw v2
    :try_end_10a
    .catchall {:try_start_106 .. :try_end_10a} :catchall_cb

    .line 1098
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #dataSelection:Ljava/lang/String;
    .end local v16           #finalurl:Ljava/lang/String;
    .end local v17           #urlSelection:Ljava/lang/String;
    .restart local v11       #aURL:Ljava/net/URL;
    :catch_10a
    move-exception v2

    move-object v15, v2

    move-object v10, v11

    .end local v11           #aURL:Ljava/net/URL;
    .restart local v10       #aURL:Ljava/net/URL;
    goto :goto_d0
.end method

.method getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .parameter "host"
    .parameter "realm"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string/jumbo v6, "password"

    .line 956
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_11

    :cond_f
    move-object v0, v1

    .line 984
    :goto_10
    return-object v0

    .line 960
    :cond_11
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v3

    const-string/jumbo v0, "password"

    aput-object v6, v2, v4

    .line 963
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?) AND (realm == ?)"

    .line 965
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v12

    .line 966
    const/4 v10, 0x0

    .line 967
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 969
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_24
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 972
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 973
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 974
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 976
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_62
    .catchall {:try_start_24 .. :try_end_62} :catchall_7d
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_62} :catch_6a

    .line 982
    :cond_62
    if-eqz v8, :cond_67

    :try_start_64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 984
    :cond_67
    :goto_67
    monitor-exit v12
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_7a

    move-object v0, v10

    goto :goto_10

    .line 979
    :catch_6a
    move-exception v0

    move-object v9, v0

    .line 980
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_6c
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "getHttpAuthUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_7d

    .line 982
    if-eqz v8, :cond_67

    :try_start_76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 985
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_7a
    move-exception v0

    monitor-exit v12
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7a

    throw v0

    .line 982
    :catchall_7d
    move-exception v0

    if-eqz v8, :cond_83

    :try_start_80
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_83
    throw v0
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_7a
.end method

.method getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .parameter "schemePlusHost"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string/jumbo v6, "password"

    .line 860
    if-eqz p1, :cond_d

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v3

    .line 887
    :goto_e
    return-object v0

    .line 864
    :cond_f
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v4

    const-string/jumbo v0, "password"

    aput-object v6, v2, v1

    .line 867
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?)"

    .line 868
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v12

    .line 869
    const/4 v10, 0x0

    .line 870
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 872
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_22
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 875
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 876
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 877
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 879
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_5d
    .catchall {:try_start_22 .. :try_end_5d} :catchall_78
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_5d} :catch_65

    .line 885
    :cond_5d
    if-eqz v8, :cond_62

    :try_start_5f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 887
    :cond_62
    :goto_62
    monitor-exit v12
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_75

    move-object v0, v10

    goto :goto_e

    .line 882
    :catch_65
    move-exception v0

    move-object v9, v0

    .line 883
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_67
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "getUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_78

    .line 885
    if-eqz v8, :cond_62

    :try_start_71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_62

    .line 888
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_75
    move-exception v0

    monitor-exit v12
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_75

    throw v0

    .line 885
    :catchall_78
    move-exception v0

    if-eqz v8, :cond_7e

    :try_start_7b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_75
.end method

.method hasCache()Z
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 712
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    move v0, v11

    .line 727
    :goto_7
    return v0

    .line 716
    :cond_8
    const/4 v8, 0x0

    .line 717
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 719
    .local v10, ret:Z
    :try_start_a
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 721
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_39
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_1c} :catch_29

    move-result v0

    if-ne v0, v12, :cond_27

    move v10, v12

    .line 725
    :goto_20
    if-eqz v8, :cond_25

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_25
    :goto_25
    move v0, v10

    .line 727
    goto :goto_7

    :cond_27
    move v10, v11

    .line 721
    goto :goto_20

    .line 722
    :catch_29
    move-exception v0

    move-object v9, v0

    .line 723
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2b
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "hasCache"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_39

    .line 725
    if-eqz v8, :cond_25

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_25

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_39
    move-exception v0

    if-eqz v8, :cond_3f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method hasCookies()Z
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 531
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public hasFormData()Z
    .registers 3

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    const/4 v1, 0x2

    :try_start_4
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1156
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public hasHttpAuthUsernamePassword()Z
    .registers 3

    .prologue
    .line 994
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    const/4 v1, 0x4

    :try_start_4
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 996
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public hasUsernamePassword()Z
    .registers 3

    .prologue
    .line 897
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 899
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeCache(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 664
    if-eqz p1, :cond_6

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7

    .line 669
    :cond_6
    :goto_6
    return-void

    .line 668
    :cond_7
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM cache WHERE url = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method setFormData(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 28
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p2, formdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_9

    .line 1077
    .end local p0
    :cond_8
    :goto_8
    return-void

    .line 1030
    .restart local p0
    :cond_9
    const/4 v12, 0x0

    .line 1032
    .local v12, aURL:Ljava/net/URL;
    :try_start_a
    new-instance v13, Ljava/net/URL;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_12} :catch_d5

    .line 1033
    .end local v12           #aURL:Ljava/net/URL;
    .local v13, aURL:Ljava/net/URL;
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_38} :catch_126

    move-result-object v18

    .local v18, finalurl:Ljava/lang/String;
    move-object v12, v13

    .line 1043
    .end local v13           #aURL:Ljava/net/URL;
    .restart local v12       #aURL:Ljava/net/URL;
    :goto_3a
    const-string v21, "(url == ?)"

    .line 1044
    .local v21, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #aURL:Ljava/net/URL;
    monitor-enter v12

    .line 1045
    const-wide/16 v23, -0x1

    .line 1046
    .local v23, urlid:J
    const/4 v15, 0x0

    .line 1048
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_45
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v7, "(url == ?)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1051
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 1052
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6c
    .catchall {:try_start_45 .. :try_end_6c} :catchall_11c
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_6c} :catch_105

    move-result-wide v23

    .line 1062
    :goto_6d
    if-eqz v15, :cond_72

    :try_start_6f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_72
    :goto_72
    const-wide/16 v4, 0x0

    cmp-long v4, v23, v4

    if-ltz v4, :cond_123

    .line 1065
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    .line 1066
    .local v22, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1067
    .local v19, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    .local v20, map:Landroid/content/ContentValues;
    const-string/jumbo v4, "urlid"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1069
    .end local p0
    :goto_93
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_123

    .line 1070
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 1071
    .local v17, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "name"

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v4, "value"

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_93

    .line 1076
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20           #map:Landroid/content/ContentValues;
    .end local v22           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_d2
    move-exception v4

    monitor-exit v12
    :try_end_d4
    .catchall {:try_start_6f .. :try_end_d4} :catchall_d2

    throw v4

    .line 1034
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #finalurl:Ljava/lang/String;
    .end local v21           #selection:Ljava/lang/String;
    .end local v23           #urlid:J
    .restart local v12       #aURL:Ljava/net/URL;
    .restart local p0
    :catch_d5
    move-exception v4

    move-object/from16 v16, v4

    .line 1035
    .local v16, e:Ljava/net/MalformedURLException;
    :goto_d8
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "Failed in setFormData"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    move-object/from16 v18, p1

    .restart local v18       #finalurl:Ljava/lang/String;
    goto/16 :goto_3a

    .line 1054
    .end local v12           #aURL:Ljava/net/URL;
    .end local v16           #e:Ljava/net/MalformedURLException;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v21       #selection:Ljava/lang/String;
    .restart local v23       #urlid:J
    :cond_e8
    :try_start_e8
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1055
    .local v14, c:Landroid/content/ContentValues;
    const-string/jumbo v4, "url"

    move-object v0, v14

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_102
    .catchall {:try_start_e8 .. :try_end_102} :catchall_11c
    .catch Ljava/lang/IllegalStateException; {:try_start_e8 .. :try_end_102} :catch_105

    move-result-wide v23

    goto/16 :goto_6d

    .line 1059
    .end local v14           #c:Landroid/content/ContentValues;
    :catch_105
    move-exception v4

    move-object/from16 v16, v4

    .line 1060
    .local v16, e:Ljava/lang/IllegalStateException;
    :try_start_108
    const-string/jumbo v4, "webviewdatabase"

    const-string/jumbo v5, "setFormData"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_115
    .catchall {:try_start_108 .. :try_end_115} :catchall_11c

    .line 1062
    if-eqz v15, :cond_72

    :try_start_117
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_72

    .end local v16           #e:Ljava/lang/IllegalStateException;
    :catchall_11c
    move-exception v4

    if-eqz v15, :cond_122

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_122
    throw v4

    .line 1076
    .end local p0
    :cond_123
    monitor-exit v12
    :try_end_124
    .catchall {:try_start_117 .. :try_end_124} :catchall_d2

    goto/16 :goto_8

    .line 1034
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #finalurl:Ljava/lang/String;
    .end local v21           #selection:Ljava/lang/String;
    .end local v23           #urlid:J
    .restart local v13       #aURL:Ljava/net/URL;
    .restart local p0
    :catch_126
    move-exception v4

    move-object/from16 v16, v4

    move-object v12, v13

    .end local v13           #aURL:Ljava/net/URL;
    .restart local v12       #aURL:Ljava/net/URL;
    goto :goto_d8
.end method

.method setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    const-string v1, "host"

    .line 931
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_b

    .line 944
    :cond_a
    :goto_a
    return-void

    .line 935
    :cond_b
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 937
    .local v0, c:Landroid/content/ContentValues;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 943
    monitor-exit v1

    goto :goto_a

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_38

    throw v2
.end method

.method setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"

    .prologue
    const-string v1, "host"

    .line 838
    if-eqz p1, :cond_8

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_9

    .line 850
    :cond_8
    :goto_8
    return-void

    .line 842
    :cond_9
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 843
    :try_start_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 844
    .local v0, c:Landroid/content/ContentValues;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 849
    monitor-exit v1

    goto :goto_8

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v2
.end method

.method startCacheTransaction()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 585
    sget v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-ne v0, v3, :cond_48

    .line 586
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 588
    const-string/jumbo v0, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_41
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v0, v3

    .line 595
    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method

.method trimCache(J)Ljava/util/List;
    .registers 19
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    new-instance v9, Ljava/util/ArrayList;

    const/16 v13, 0x64

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 752
    .local v9, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 753
    .local v1, cursor:Landroid/database/Cursor;
    const-string v11, "SELECT contentlength, filepath FROM cache ORDER BY expires ASC"

    .line 755
    .local v11, query:Ljava/lang/String;
    :try_start_a
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "SELECT contentlength, filepath FROM cache ORDER BY expires ASC"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 756
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_6b

    .line 757
    const/16 v0, 0x64

    .line 758
    .local v0, batchSize:I
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    mul-int/lit8 v14, v0, 0x10

    add-int/lit16 v13, v13, 0x640

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 759
    .local v10, pathStr:Ljava/lang/StringBuilder;
    const-string v13, "DELETE FROM cache WHERE filepath IN (?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const/4 v4, 0x1

    .local v4, i:I
    :goto_2c
    if-ge v4, v0, :cond_36

    .line 761
    const-string v13, ", ?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 763
    :cond_36
    const-string v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_b3
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_3b} :catch_9b

    .line 764
    const/4 v12, 0x0

    .line 766
    .local v12, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_3c
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 769
    const/4 v5, 0x1

    .local v5, index:I
    move v6, v5

    .line 771
    .end local v5           #index:I
    .local v6, index:I
    :goto_48
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 772
    .local v7, length:J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_71

    move v5, v6

    .line 784
    .end local v6           #index:I
    .restart local v5       #index:I
    :cond_54
    :goto_54
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_60

    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-gtz v13, :cond_ba

    .line 785
    :cond_60
    const/4 v13, 0x1

    if-le v5, v13, :cond_66

    .line 788
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_66
    .catchall {:try_start_3c .. :try_end_66} :catchall_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_66} :catch_8a

    .line 793
    :cond_66
    if-eqz v12, :cond_6b

    :try_start_68
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_b3
    .catch Ljava/lang/IllegalStateException; {:try_start_68 .. :try_end_6b} :catch_9b

    .line 799
    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v7           #length:J
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_6b
    :goto_6b
    if-eqz v1, :cond_70

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 801
    :cond_70
    :goto_70
    return-object v9

    .line 775
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v6       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_71
    sub-long p1, p1, v7

    .line 776
    const/4 v13, 0x1

    :try_start_74
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, filePath:Ljava/lang/String;
    invoke-virtual {v12, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 778
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    if-ne v6, v0, :cond_54

    .line 780
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 781
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_88
    .catchall {:try_start_74 .. :try_end_88} :catchall_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_88} :catch_8a

    .line 782
    const/4 v5, 0x1

    goto :goto_54

    .line 790
    .end local v3           #filePath:Ljava/lang/String;
    .end local v5           #index:I
    .end local v7           #length:J
    :catch_8a
    move-exception v13

    move-object v2, v13

    .line 791
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_8c
    const-string/jumbo v13, "webviewdatabase"

    const-string/jumbo v14, "trimCache SQLiteStatement"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_ac

    .line 793
    if-eqz v12, :cond_6b

    :try_start_97
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_b3
    .catch Ljava/lang/IllegalStateException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_6b

    .line 796
    .end local v0           #batchSize:I
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_9b
    move-exception v13

    move-object v2, v13

    .line 797
    .restart local v2       #e:Ljava/lang/IllegalStateException;
    :try_start_9d
    const-string/jumbo v13, "webviewdatabase"

    const-string/jumbo v14, "trimCache Cursor"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_b3

    .line 799
    if-eqz v1, :cond_70

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_70

    .line 793
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_ac
    move-exception v13

    if-eqz v12, :cond_b2

    :try_start_af
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b2
    throw v13
    :try_end_b3
    .catchall {:try_start_af .. :try_end_b3} :catchall_b3
    .catch Ljava/lang/IllegalStateException; {:try_start_af .. :try_end_b3} :catch_9b

    .line 799
    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_b3
    move-exception v13

    if-eqz v1, :cond_b9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b9
    throw v13

    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_ba
    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_48
.end method
