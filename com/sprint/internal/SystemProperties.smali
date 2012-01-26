.class public Lcom/sprint/internal/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;
    }
.end annotation


# static fields
.field private static final SPRINT_NEW_SIGNATURE:Ljava/lang/String; = "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

.field private static final SPRINT_OLD_SIGNATURE:Ljava/lang/String; = "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private ENABLE_LOG:Z

.field SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

.field private conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

.field private myctx:Landroid/content/Context;

.field ret:Ljava/lang/String;

.field private serviceConnecting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "SystemProperties"

    sput-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "mContext"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->serviceConnecting:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->ENABLE_LOG:Z

    .line 53
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties;->myctx:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-direct {v0, p0}, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;-><init>(Lcom/sprint/internal/SystemProperties;)V

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    .line 55
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-direct {p0, v0}, Lcom/sprint/internal/SystemProperties;->connectService(Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;)V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/sprint/internal/SystemProperties;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sprint/internal/SystemProperties;->serviceConnecting:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private connectService(Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;)V
    .registers 2
    .parameter "SysPropConn"

    .prologue
    .line 67
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 221
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .registers 16
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v13, "You cannot get the Ibinder"

    const-string v12, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    const-string v11, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    .line 75
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->myctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, pkgName:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->myctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 77
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 78
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-boolean v7, p0, Lcom/sprint/internal/SystemProperties;->ENABLE_LOG:Z

    if-eqz v7, :cond_30

    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPackageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_30
    const/16 v7, 0x40

    :try_start_32
    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_35} :catch_95

    move-result-object v1

    .line 84
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 85
    .local v5, sigs:[Landroid/content/pm/Signature;
    const/4 v6, 0x0

    .line 86
    .local v6, validSig:Z
    array-length v7, v5

    if-lez v7, :cond_83

    .line 87
    aget-object v7, v5, v10

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, signature:Ljava/lang/String;
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "old ca : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new ca : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v7, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_81

    const-string v7, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    :cond_81
    const/4 v7, 0x1

    move v6, v7

    .line 97
    .end local v4           #signature:Ljava/lang/String;
    :cond_83
    :goto_83
    if-nez v6, :cond_a0

    const-string v7, "android"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a0

    .line 98
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "Permission denied"

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 81
    .end local v5           #sigs:[Landroid/content/pm/Signature;
    .end local v6           #validSig:Z
    :catch_95
    move-exception v0

    .line 82
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "Bad caller package name"

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #signature:Ljava/lang/String;
    .restart local v5       #sigs:[Landroid/content/pm/Signature;
    .restart local v6       #validSig:Z
    :cond_9e
    move v6, v10

    .line 89
    goto :goto_83

    .line 100
    .end local v4           #signature:Ljava/lang/String;
    :cond_a0
    sparse-switch p1, :sswitch_data_100

    .line 153
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "You request an unreadable value."

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 128
    :sswitch_ab
    const-string v7, "isprintextension"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 131
    :try_start_b7
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v7, :cond_c6

    .line 133
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v7, p1}, Lcom/samsungframeworks/internal/ISprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/internal/SystemProperties;->ret:Ljava/lang/String;
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_c3} :catch_ce
    .catch Ljava/lang/SecurityException; {:try_start_b7 .. :try_end_c3} :catch_dd

    .line 156
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->ret:Ljava/lang/String;

    return-object v7

    .line 137
    :cond_c6
    :try_start_c6
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "You cannot get the Ibinder"

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_ce} :catch_ce
    .catch Ljava/lang/SecurityException; {:try_start_c6 .. :try_end_ce} :catch_dd

    .line 140
    :catch_ce
    move-exception v7

    move-object v0, v7

    .line 142
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-direct {p0, v7}, Lcom/sprint/internal/SystemProperties;->connectService(Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;)V

    .line 143
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "You cannot get the Ibinder"

    invoke-direct {v7, v13}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_dd
    move-exception v7

    move-object v0, v7

    .line 147
    .local v0, ex:Ljava/lang/SecurityException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 148
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "You don\'t have a right permission : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    nop

    :sswitch_data_100
    .sparse-switch
        0x1 -> :sswitch_ab
        0x2 -> :sswitch_ab
        0x3 -> :sswitch_ab
        0xe -> :sswitch_ab
        0x1e -> :sswitch_ab
        0x23 -> :sswitch_ab
        0x32 -> :sswitch_ab
        0x33 -> :sswitch_ab
        0x56 -> :sswitch_ab
        0x57 -> :sswitch_ab
        0x5a -> :sswitch_ab
        0x5b -> :sswitch_ab
        0x5d -> :sswitch_ab
        0x5e -> :sswitch_ab
        0xa1 -> :sswitch_ab
        0xa3 -> :sswitch_ab
        0x12c -> :sswitch_ab
        0x192 -> :sswitch_ab
        0x195 -> :sswitch_ab
        0x196 -> :sswitch_ab
        0x19c -> :sswitch_ab
        0x19d -> :sswitch_ab
        0x19e -> :sswitch_ab
        0x19f -> :sswitch_ab
        0x1a4 -> :sswitch_ab
        0x1f4 -> :sswitch_ab
    .end sparse-switch
.end method

.method public setString(ILjava/lang/String;)V
    .registers 7
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    const-string v3, "You cannot get the Ibinder"

    .line 161
    sparse-switch p1, :sswitch_data_5c

    .line 212
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You request an unwritable value."

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :sswitch_d
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 191
    :try_start_19
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_23

    .line 193
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1, p1, p2}, Lcom/samsungframeworks/internal/ISprintExtension;->setString(ILjava/lang/String;)V

    .line 216
    return-void

    .line 197
    :cond_23
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_2b} :catch_3a

    .line 200
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 202
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-direct {p0, v1}, Lcom/sprint/internal/SystemProperties;->connectService(Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;)V

    .line 203
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v3}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3a
    move-exception v1

    move-object v0, v1

    .line 207
    .local v0, ex:Ljava/lang/SecurityException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 208
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You don\'t have a right permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_d
        0x23 -> :sswitch_d
        0x2b -> :sswitch_d
        0x32 -> :sswitch_d
        0x33 -> :sswitch_d
        0x56 -> :sswitch_d
        0x57 -> :sswitch_d
        0x5a -> :sswitch_d
        0x5b -> :sswitch_d
        0x5c -> :sswitch_d
        0x5d -> :sswitch_d
        0x5e -> :sswitch_d
        0xa1 -> :sswitch_d
        0xa3 -> :sswitch_d
        0x12c -> :sswitch_d
        0x190 -> :sswitch_d
        0x192 -> :sswitch_d
        0x195 -> :sswitch_d
        0x196 -> :sswitch_d
        0x19c -> :sswitch_d
        0x19d -> :sswitch_d
        0x19e -> :sswitch_d
        0x19f -> :sswitch_d
        0x1f4 -> :sswitch_d
    .end sparse-switch
.end method

.method public unbindSysPropService()V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->myctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 226
    return-void
.end method
