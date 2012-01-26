.class public Lcom/samsungframeworks/internal/PhoneInfoInterface;
.super Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;
.source "PhoneInfoInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/PhoneInfoInterface$RoamHandler;,
        Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final DISCONNECT_WAIT_TIME:I = 0xfa0

.field private static final EVENT_ERROR:I = -0x1

.field private static final EVENT_GET:I = 0x1

.field private static final EVENT_GET_DATA_PROF:I = 0x3

.field private static final EVENT_GET_PRL:I = 0x6

.field private static final EVENT_NOT_RESPOND:I = 0x5

.field private static final EVENT_SET:I = 0x2

.field private static final EVENT_SET_DATA_PROF:I = 0x4

.field static final ID_SETUPCOMPLETED:I = 0x2710

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInfoInterface"

.field static final OEM_MAIN_CMD_HIDDEN:I = 0x9

.field static final OEM_SUB_CMD_AKEY_VERIFY:I = 0x1

.field static final OEM_SUB_CMD_GET_MSL:I = 0x2

.field private static kl:Landroid/app/KeyguardManager$KeyguardLock;

.field private static km:Landroid/app/KeyguardManager;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field CMD_WAIT_TIME:I

.field private DB_TABLE:Ljava/lang/String;

.field private changingSlot:Z

.field private curCmd:I

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mAGPSmanager:Landroid/location/AGPSManager;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

.field mPIMThread:Landroid/os/HandlerThread;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneLock:Ljava/lang/Object;

.field private mRoamHandler:Lcom/samsungframeworks/internal/PhoneInfoInterface$RoamHandler;

.field mdn:Ljava/lang/String;

.field proxyBackup:Ljava/lang/String;

.field private useOamdm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 93
    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    .line 95
    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    .line 97
    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->km:Landroid/app/KeyguardManager;

    .line 99
    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "contxt"

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;-><init>()V

    .line 63
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->CMD_WAIT_TIME:I

    .line 65
    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 79
    const-string/jumbo v1, "t_systemproperty"

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    .line 87
    iput-boolean v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->changingSlot:Z

    .line 89
    iput-boolean v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    .line 123
    iput-object p1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    .line 124
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mSSThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIMThread:Landroid/os/HandlerThread;

    .line 125
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIMThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 127
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIMThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 128
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    invoke-direct {v1, p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;-><init>(Lcom/samsungframeworks/internal/PhoneInfoInterface;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    .line 129
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 130
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->PrepareInternalDB()V

    .line 136
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSystemProp()V

    .line 137
    return-void
.end method

.method private GetValueInternalDB(I)Ljava/lang/String;
    .registers 12
    .parameter "id"

    .prologue
    const-string/jumbo v7, "select FieldName,FieldValue from "

    .line 199
    const/4 v6, 0x0

    .line 200
    .local v6, ret:Ljava/lang/String;
    const/4 v3, 0x0

    .line 203
    .local v3, cursor:Landroid/database/Cursor;
    const/16 v7, 0x12c

    if-ne v7, p1, :cond_4d

    .line 204
    :try_start_9
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'MobileSyncEnabled\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_2b} :catch_20e

    move-result-object v3

    .line 245
    :cond_2c
    :goto_2c
    if-eqz v3, :cond_4c

    .line 247
    const-string v7, "FieldName"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 248
    .local v5, firstFieldNameColumn:I
    const-string v7, "FieldValue"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 251
    .local v2, FieldValueColumn:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 252
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, FieldName:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, FieldValue:Ljava/lang/String;
    move-object v6, v1

    .line 257
    .end local v0           #FieldName:Ljava/lang/String;
    .end local v1           #FieldValue:Ljava/lang/String;
    :cond_49
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 259
    .end local v2           #FieldValueColumn:I
    .end local v5           #firstFieldNameColumn:I
    :cond_4c
    return-object v6

    .line 206
    :cond_4d
    const/16 v7, 0x192

    if-ne v7, p1, :cond_75

    .line 207
    :try_start_51
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'DSAServerURL\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2c

    .line 209
    :cond_75
    const/16 v7, 0xa1

    if-ne v7, p1, :cond_9d

    .line 210
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'PDEPrimaryIP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2c

    .line 212
    :cond_9d
    const/16 v7, 0xa3

    if-ne v7, p1, :cond_c6

    .line 213
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'PDEPrimaryPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2c

    .line 215
    :cond_c6
    const/16 v7, 0x2710

    if-ne v7, p1, :cond_ef

    .line 216
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'SetUpCompleted\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2c

    .line 218
    :cond_ef
    const/16 v7, 0x195

    if-ne v7, p1, :cond_118

    .line 219
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'DSAServerIP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2c

    .line 221
    :cond_118
    const/16 v7, 0x196

    if-ne v7, p1, :cond_141

    .line 222
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'DSAServerPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2c

    .line 224
    :cond_141
    const/16 v7, 0x19c

    if-ne v7, p1, :cond_16a

    .line 225
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'RTSPProxyAddr\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2c

    .line 227
    :cond_16a
    const/16 v7, 0x19d

    if-ne v7, p1, :cond_193

    .line 228
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'RTSPProxyPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2c

    .line 230
    :cond_193
    const/16 v7, 0x19e

    if-ne v7, p1, :cond_1bc

    .line 231
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'HTTPPDProxyAddr\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2c

    .line 233
    :cond_1bc
    const/16 v7, 0x19f

    if-ne v7, p1, :cond_1e5

    .line 234
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'HTTPPDProxyPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2c

    .line 236
    :cond_1e5
    const/16 v7, 0x1f4

    if-ne v7, p1, :cond_2c

    .line 237
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'WorkMode\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20b
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_20b} :catch_20e

    move-result-object v3

    goto/16 :goto_2c

    .line 241
    :catch_20e
    move-exception v7

    move-object v4, v7

    .line 242
    .local v4, e:Landroid/database/SQLException;
    const-string v7, "PhoneInfoInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c
.end method

.method private PrepareInternalDB()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const-string v6, "PhoneInfoInterface"

    const-string v3, "insert into "

    const-string v3, " (FieldName, FieldValue)"

    .line 141
    const/4 v1, 0x1

    .line 142
    .local v1, DB_VERSION:I
    const/4 v0, 0x0

    .line 145
    .local v0, DB_MODE:I
    :try_start_9
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v4, "db_systemproperty"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    const-string v3, "PhoneInfoInterface"

    const-string v4, "Success Create DB"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_1b} :catch_204

    .line 154
    :goto_1b
    :try_start_1b
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create table if not exists "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName VARCHAR PRIMARY KEY, FieldValue VARCHAR)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'MobileSyncEnabled\', \'true\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'DSAServerURL\',\'https://dsa.spcsdns.net:443/dsa/\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'PDEPrimaryIP\',\'0.0.0.0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'PDEPrimaryPort\',\'0.0.0.0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'SetUpCompleted\',\'false\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'DSAServerIP\',\'144.226.247.31\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'DSAServerPort\',\'80\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'RTSPProxyAddr\',\'rtsp.vog.sprintpcs.com\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'RTSPProxyPort\',\'554\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'HTTPPDProxyAddr\',\'pd.vog.sprintpcs.com\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'HTTPPDProxyPort\',\'8085\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'WorkMode\',\'0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_203
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_203} :catch_211

    .line 196
    :goto_203
    return-void

    .line 147
    :catch_204
    move-exception v3

    move-object v2, v3

    .line 148
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    iput-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    const-string v3, "PhoneInfoInterface"

    const-string v3, "Fail to Create DB"

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 192
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catch_211
    move-exception v3

    move-object v2, v3

    .line 193
    .local v2, e:Landroid/database/SQLException;
    const-string v3, "PhoneInfoInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_203
.end method

.method private SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "id"
    .parameter "value"

    .prologue
    const-string/jumbo v7, "update "

    const-string v7, "\' "

    const-string v7, " set FieldValue = \'"

    .line 263
    const/4 v6, 0x0

    .line 264
    .local v6, ret:Ljava/lang/String;
    const/4 v3, 0x0

    .line 267
    .local v3, cursor:Landroid/database/Cursor;
    const/16 v7, 0x12c

    if-ne v7, p1, :cond_62

    .line 268
    :try_start_d
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'MobileSyncEnabled\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_40} :catch_2df

    move-result-object v3

    .line 309
    :cond_41
    :goto_41
    if-eqz v3, :cond_61

    .line 311
    const-string v7, "FieldName"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 312
    .local v5, firstFieldNameColumn:I
    const-string v7, "FieldValue"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 315
    .local v2, FieldValueColumn:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 316
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, FieldName:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, FieldValue:Ljava/lang/String;
    move-object v6, v1

    .line 321
    .end local v0           #FieldName:Ljava/lang/String;
    .end local v1           #FieldValue:Ljava/lang/String;
    :cond_5e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 323
    .end local v2           #FieldValueColumn:I
    .end local v5           #firstFieldNameColumn:I
    :cond_61
    return-object v6

    .line 270
    :cond_62
    const/16 v7, 0x192

    if-ne v7, p1, :cond_9b

    .line 271
    :try_start_66
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'DSAServerURL\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_41

    .line 273
    :cond_9b
    const/16 v7, 0xa1

    if-ne v7, p1, :cond_d5

    .line 274
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'PDEPrimaryIP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 276
    :cond_d5
    const/16 v7, 0xa3

    if-ne v7, p1, :cond_10f

    .line 277
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'PDEPrimaryPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 279
    :cond_10f
    const/16 v7, 0x2710

    if-ne v7, p1, :cond_149

    .line 280
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'SetUpCompleted\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 282
    :cond_149
    const/16 v7, 0x195

    if-ne v7, p1, :cond_183

    .line 283
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'DSAServerIP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 285
    :cond_183
    const/16 v7, 0x196

    if-ne v7, p1, :cond_1bd

    .line 286
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'DSAServerPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 288
    :cond_1bd
    const/16 v7, 0x19c

    if-ne v7, p1, :cond_1f7

    .line 289
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'RTSPProxyAddr\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 291
    :cond_1f7
    const/16 v7, 0x19d

    if-ne v7, p1, :cond_231

    .line 292
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'RTSPProxyPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 294
    :cond_231
    const/16 v7, 0x19e

    if-ne v7, p1, :cond_26b

    .line 295
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'HTTPPDProxyAddr\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 297
    :cond_26b
    const/16 v7, 0x19f

    if-ne v7, p1, :cond_2a5

    .line 298
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'HTTPPDProxyPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_41

    .line 300
    :cond_2a5
    const/16 v7, 0x1f4

    if-ne v7, p1, :cond_41

    .line 301
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "where FieldName==\'WorkMode\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2dc
    .catch Landroid/database/SQLException; {:try_start_66 .. :try_end_2dc} :catch_2df

    move-result-object v3

    goto/16 :goto_41

    .line 305
    :catch_2df
    move-exception v7

    move-object v4, v7

    .line 306
    .local v4, e:Landroid/database/SQLException;
    const-string v7, "PhoneInfoInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41
.end method

.method static synthetic access$000(Lcom/samsungframeworks/internal/PhoneInfoInterface;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    return v0
.end method

.method private enforceUID()V
    .registers 5

    .prologue
    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 329
    .local v0, uid:I
    const/16 v1, 0xfa1

    if-eq v0, v1, :cond_37

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_37

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_37

    .line 331
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceUID() uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not sprint extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "user is not sprint extension"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_37
    return-void
.end method

.method private getSecureSettingBoolean(Ljava/lang/String;I)Z
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    const/4 v1, 0x1

    .line 1490
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 1485
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1486
    .local v0, value:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isNetworkAvailable()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1032
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v2, 0x28

    if-ge v1, v2, :cond_20

    .line 1033
    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->isNetworkAvailable(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1034
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_17

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1041
    :cond_15
    const/4 v2, 0x1

    .line 1046
    :goto_16
    return v2

    .line 1043
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 1044
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PhoneInfoInterface"

    const-string v3, "isNetworkAvailable:wait"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_20
    move v2, v4

    .line 1046
    goto :goto_16
.end method

.method private isNetworkAvailable(I)Z
    .registers 8
    .parameter "networkType"

    .prologue
    const/4 v5, 0x0

    .line 1051
    const/4 v1, 0x0

    .line 1053
    .local v1, info:Landroid/net/NetworkInfo;
    :try_start_2
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1054
    .local v2, mCM:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_14

    move-result-object v1

    .line 1058
    .end local v2           #mCM:Landroid/net/ConnectivityManager;
    :goto_10
    if-nez v1, :cond_1e

    move v3, v5

    .line 1062
    :goto_13
    return v3

    .line 1055
    :catch_14
    move-exception v3

    move-object v0, v3

    .line 1056
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PhoneInfoInterface"

    const-string v4, "isNetworkAvailable"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 1059
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1e
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_2c

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_2e

    :cond_2c
    move v3, v5

    .line 1060
    goto :goto_13

    .line 1062
    :cond_2e
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    goto :goto_13
.end method

.method private setCdmaRoaming()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1499
    const-string/jumbo v3, "roam_setting_call_domestic"

    invoke-direct {p0, v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 1500
    .local v0, domesticRoamCall:Z
    const-string/jumbo v3, "roam_setting_call_international"

    invoke-direct {p0, v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 1504
    .local v1, internationalRoamCall:Z
    if-eqz v0, :cond_3a

    if-nez v1, :cond_3a

    .line 1505
    const/4 v2, 0x5

    .line 1514
    .local v2, statusCdmaRoamingMode:I
    :goto_14
    const-string v3, "PhoneInfoInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mRoamHandler:Lcom/samsungframeworks/internal/PhoneInfoInterface$RoamHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1517
    return-void

    .line 1506
    .end local v2           #statusCdmaRoamingMode:I
    :cond_3a
    if-nez v0, :cond_40

    if-eqz v1, :cond_40

    .line 1507
    const/4 v2, 0x6

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_14

    .line 1508
    .end local v2           #statusCdmaRoamingMode:I
    :cond_40
    if-eqz v0, :cond_46

    if-eqz v1, :cond_46

    .line 1509
    const/4 v2, 0x7

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_14

    .line 1511
    .end local v2           #statusCdmaRoamingMode:I
    :cond_46
    const/4 v2, 0x2

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_14
.end method

.method private setSecureSettingValue(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1495
    return-void
.end method

.method private setSystemProp()V
    .registers 3

    .prologue
    .line 1099
    const/16 v1, 0x19c

    invoke-direct {p0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "net.cdma.rtsp.proxy.addr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const/16 v1, 0x19d

    invoke-direct {p0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    .line 1103
    const-string/jumbo v1, "net.cdma.rtsp.proxy.port"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const/16 v1, 0x19e

    invoke-direct {p0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    .line 1106
    const-string/jumbo v1, "net.cdma.httppd.proxy.addr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const/16 v1, 0x19f

    invoke-direct {p0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-string/jumbo v1, "net.cdma.httppd.proxy.port"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method private stopAndWaitReturn()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1116
    :try_start_0
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->CMD_WAIT_TIME:I

    invoke-virtual {v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waitResponse(I)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_e

    .line 1120
    :goto_7
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    invoke-virtual {v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->getPropertyValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1117
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 1118
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method public disableDataconnection()V
    .registers 3

    .prologue
    .line 938
    const-string v0, "PhoneInfoInterface"

    const-string v1, "disableDataconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 940
    return-void
.end method

.method public disableScreenTimeout()V
    .registers 4

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 843
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    if-nez v0, :cond_14

    .line 844
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    .line 846
    :cond_14
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_25

    .line 847
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "SprintPowerLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    .line 852
    :cond_25
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_32

    .line 853
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 856
    :cond_32
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->km:Landroid/app/KeyguardManager;

    if-nez v0, :cond_42

    .line 857
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/KeyguardManager;

    sput-object p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->km:Landroid/app/KeyguardManager;

    .line 859
    :cond_42
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_50

    .line 860
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->km:Landroid/app/KeyguardManager;

    const-string v1, "SprintKeyLock"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    .line 863
    :cond_50
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 864
    return-void
.end method

.method public enableScreenTimeout()V
    .registers 3

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 832
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 833
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 835
    :cond_15
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_1e

    .line 836
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 838
    :cond_1e
    return-void
.end method

.method public getA_Key()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x2

    .line 879
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 881
    const/4 v4, 0x0

    .line 883
    .local v4, ret:Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 884
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 886
    .local v1, dos:Ljava/io/DataOutputStream;
    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v5

    .line 887
    :try_start_12
    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_6e

    .line 891
    const/4 v3, 0x3

    .line 892
    .local v3, fileSize:I
    const/16 v6, 0x9

    :try_start_1b
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 893
    const/16 v6, 0x14

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 894
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_5e

    .line 902
    :try_start_26
    iget-object v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v8, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v9, 0x6

    iget v10, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 904
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 906
    const-string/jumbo v6, "ril.prl_ver_1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 908
    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_6b

    .line 909
    const/4 v6, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 913
    :goto_5b
    monitor-exit v5

    move-object v5, v4

    .line 915
    :goto_5d
    return-object v5

    .line 896
    :catch_5e
    move-exception v6

    move-object v2, v6

    .line 898
    .local v2, e:Ljava/io/IOException;
    const-string v6, "PhoneInfoInterface"

    const-string v7, "getCdmaPrlVersionexception occured during operation read PRL"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v6, 0x0

    monitor-exit v5

    move-object v5, v6

    goto :goto_5d

    .line 911
    .end local v2           #e:Ljava/io/IOException;
    :cond_6b
    const-string v4, "Unknown"

    goto :goto_5b

    .line 913
    .end local v3           #fileSize:I
    :catchall_6e
    move-exception v6

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_26 .. :try_end_70} :catchall_6e

    throw v6
.end method

.method public getCurrentSlot()I
    .registers 6

    .prologue
    .line 920
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 921
    :try_start_3
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getDataProfile(Landroid/os/Message;)V

    .line 922
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 923
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    invoke-virtual {v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->getDataProfileReturnValue()I

    move-result v0

    .line 924
    .local v0, ret:I
    monitor-exit v1

    .line 925
    return v0

    .line 924
    .end local v0           #ret:I
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public getDOM_DATA_GUARD_ON_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1235
    const-string v0, ""

    .line 1236
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_guard_data_domestic"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1237
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDOM_DATA_GUARD_ON_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    return-object v0
.end method

.method public getDOM_DATA_GUARD_ON_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1241
    const-string v0, ""

    .line 1242
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_guard_data_domestic_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1243
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDOM_DATA_GUARD_ON_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return-object v0
.end method

.method public getDOM_DATA_ROAMING_BLOCK_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1247
    const-string v0, ""

    .line 1248
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_setting_data_domestic"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    if-ne v1, v2, :cond_29

    .line 1249
    const-string v0, "0"

    .line 1252
    :goto_10
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDOM_DATA_ROAMING_BLOCK_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    return-object v0

    .line 1251
    :cond_29
    const-string v0, "1"

    goto :goto_10
.end method

.method public getDOM_DATA_ROAMING_BLOCK_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1256
    const-string v0, ""

    .line 1257
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_setting_data_domestic_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1258
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDOM_DATA_ROAMING_BLOCK_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return-object v0
.end method

.method public getDOM_VOICE_GUARD_ON_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1262
    const-string v0, ""

    .line 1263
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_guard_call_domestic"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1264
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDOM_VOICE_GUARD_ON_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-object v0
.end method

.method public getDOM_VOICE_GUARD_ON_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1268
    const-string v0, ""

    .line 1269
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_guard_call_domestic_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1270
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDOM_VOICE_GUARD_ON_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return-object v0
.end method

.method public getDOM_VOICE_ROAMING_BLOCK_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1274
    const-string v0, ""

    .line 1275
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_setting_call_domestic"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    if-ne v1, v2, :cond_29

    .line 1276
    const-string v0, "0"

    .line 1279
    :goto_10
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDOM_VOICE_ROAMING_BLOCK_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    return-object v0

    .line 1278
    :cond_29
    const-string v0, "1"

    goto :goto_10
.end method

.method public getDOM_VOICE_ROAMING_BLOCK_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1283
    const-string v0, ""

    .line 1284
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_setting_call_domestic_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1285
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDOM_VOICE_ROAMING_BLOCK_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-object v0
.end method

.method public getDSA_SERVER_IP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 568
    const/16 v0, 0x195

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSA_SERVER_PORT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 572
    const/16 v0, 0x196

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSA_SERVER_URL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 535
    const/16 v0, 0x192

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDataProfile()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 946
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getCurrentSlot()I

    move-result v0

    .line 947
    .local v0, slot:I
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_25

    move-result v1

    .line 949
    .local v1, ss:I
    if-nez v1, :cond_1a

    .line 950
    if-nez v0, :cond_18

    .line 951
    const/16 v2, 0x64

    .line 959
    :goto_16
    monitor-exit p0

    return v2

    :cond_18
    move v2, v3

    .line 953
    goto :goto_16

    .line 956
    :cond_1a
    if-eq v1, v3, :cond_1f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    .line 957
    :cond_1f
    const/16 v2, 0x3e8

    goto :goto_16

    .line 959
    :cond_22
    const/16 v2, 0x3e9

    goto :goto_16

    .line 946
    .end local v0           #slot:I
    .end local v1           #ss:I
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getHTTPPD_PROXY_ADDR()Ljava/lang/String;
    .registers 2

    .prologue
    .line 585
    const/16 v0, 0x19e

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPD_PROXY_PORT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 589
    const/16 v0, 0x19f

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getINTL_DATA_GUARD_ON_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1289
    const-string v0, ""

    .line 1290
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_guard_data_international"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1291
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_DATA_GUARD_ON_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    return-object v0
.end method

.method public getINTL_DATA_GUARD_ON_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1295
    const-string v0, ""

    .line 1296
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_guard_data_international_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1297
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_DATA_GUARD_ON_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return-object v0
.end method

.method public getINTL_DATA_ROAMING_BLOCK_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1301
    const-string v0, ""

    .line 1302
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_setting_data_international"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    if-ne v1, v2, :cond_29

    .line 1303
    const-string v0, "0"

    .line 1306
    :goto_10
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_DATA_ROAMING_BLOCK_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return-object v0

    .line 1305
    :cond_29
    const-string v0, "1"

    goto :goto_10
.end method

.method public getINTL_DATA_ROAMING_BLOCK_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1310
    const-string v0, ""

    .line 1311
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_setting_data_international_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1312
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_DATA_ROAMING_BLOCK_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-object v0
.end method

.method public getINTL_DIALING_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1316
    const-string v0, ""

    .line 1317
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_dial_international_enabled"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1318
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_DIALING_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-object v0
.end method

.method public getINTL_DIALING_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1322
    const-string v0, ""

    .line 1323
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_dial_international_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1324
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_DIALING_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    return-object v0
.end method

.method public getINTL_VOICE_GUARD_ON_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1328
    const-string v0, ""

    .line 1329
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_guard_call_international"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1330
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_VOICE_GUARD_ON_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    return-object v0
.end method

.method public getINTL_VOICE_GUARD_ON_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1334
    const-string v0, ""

    .line 1335
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_guard_call_international_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1336
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_VOICE_GUARD_ON_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return-object v0
.end method

.method public getINTL_VOICE_ROAMING_BLOCK_ENABLED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1340
    const-string v0, ""

    .line 1341
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_setting_call_international"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    if-ne v1, v2, :cond_29

    .line 1342
    const-string v0, "0"

    .line 1345
    :goto_10
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_VOICE_ROAMING_BLOCK_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-object v0

    .line 1344
    :cond_29
    const-string v0, "1"

    goto :goto_10
.end method

.method public getINTL_VOICE_ROAMING_BLOCK_FORCED()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1349
    const-string v0, ""

    .line 1350
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "roam_setting_call_international_forced"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1351
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getINTL_VOICE_ROAMING_BLOCK_FORCED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    return-object v0
.end method

.method public getMDN()Ljava/lang/String;
    .registers 8

    .prologue
    .line 348
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 350
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 352
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 354
    return-object v0

    .line 353
    .end local v0           #ret:Ljava/lang/String;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public getMEID()Ljava/lang/String;
    .registers 8

    .prologue
    .line 370
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 372
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 374
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 376
    return-object v0

    .line 375
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getMOBILESYNK_ENABLED()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSID()Ljava/lang/String;
    .registers 8

    .prologue
    .line 359
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 361
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 363
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 365
    return-object v0

    .line 364
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getPDE_PRIMARY_IP()Ljava/lang/String;
    .registers 4

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 544
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v2, "agps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/AGPSManager;

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    .line 546
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    if-eqz v1, :cond_17

    .line 547
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    invoke-virtual {v1}, Landroid/location/AGPSManager;->getHslpAddress()Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_17
    return-object v0
.end method

.method public getPDE_PRIMARY_PORT()Ljava/lang/String;
    .registers 4

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 558
    .local v0, ret:I
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v2, "agps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/AGPSManager;

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    .line 560
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    if-eqz v1, :cond_17

    .line 561
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    invoke-virtual {v1}, Landroid/location/AGPSManager;->getHslpPort()I

    move-result v0

    .line 564
    :cond_17
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPESUDO_ESN()Ljava/lang/String;
    .registers 8

    .prologue
    .line 381
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 383
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 385
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 387
    return-object v0

    .line 386
    .end local v0           #ret:Ljava/lang/String;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public getRTSP_PROXY_ADDR()Ljava/lang/String;
    .registers 2

    .prologue
    .line 576
    const/16 v0, 0x19c

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRTSP_PROXY_PORT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    const/16 v0, 0x19d

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoamingIndicator()I
    .registers 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    return v0
.end method

.method public getSLOT_1_AAA_AUTH_ALGORITHM()Ljava/lang/String;
    .registers 8

    .prologue
    .line 473
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 475
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 478
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 480
    return-object v0

    .line 479
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSLOT_1_AAA_SPI()Ljava/lang/String;
    .registers 8

    .prologue
    .line 485
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 486
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 487
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x5e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 489
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 491
    return-object v0

    .line 490
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSLOT_1_HA_AUTH_ALGORITHM()Ljava/lang/String;
    .registers 8

    .prologue
    .line 443
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 445
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 448
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 450
    return-object v0

    .line 449
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSLOT_1_HA_PASSWORD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSLOT_1_HA_SPI()Ljava/lang/String;
    .registers 8

    .prologue
    .line 455
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 457
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x5b

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 459
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 461
    return-object v0

    .line 460
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSLOT_1_MOBILE_IP_ADDRESS()Ljava/lang/String;
    .registers 8

    .prologue
    .line 508
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 510
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x57

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 513
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 515
    return-object v0

    .line 514
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSLOT_1_NAI()Ljava/lang/String;
    .registers 8

    .prologue
    .line 399
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 401
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 403
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 405
    return-object v0

    .line 404
    .end local v0           #ret:Ljava/lang/String;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public getSLOT_1_NAI_PASSWORD()Ljava/lang/String;
    .registers 8

    .prologue
    .line 410
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 412
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 414
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 416
    return-object v0

    .line 415
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSLOT_1_PRIMARY_HA()Ljava/lang/String;
    .registers 8

    .prologue
    .line 421
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 423
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 425
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 427
    return-object v0

    .line 426
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSLOT_1_REVERSE_TUNNELING()Ljava/lang/String;
    .registers 8

    .prologue
    .line 496
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 498
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x56

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 501
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 503
    return-object v0

    .line 502
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSLOT_1_SECONDARY_HA()Ljava/lang/String;
    .registers 8

    .prologue
    .line 432
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 434
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 436
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 438
    return-object v0

    .line 437
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getSetUpCompleted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUAPROF()Ljava/lang/String;
    .registers 8

    .prologue
    .line 521
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_3
    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 523
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 525
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, ret:Ljava/lang/String;
    monitor-exit v1

    .line 527
    return-object v0

    .line 526
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getWORK_MODE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 593
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reboot()V
    .registers 3

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 869
    const-string v0, "PhoneInfoInterface"

    const-string v1, "Rebooting !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    if-nez v0, :cond_1b

    .line 872
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    sput-object p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    .line 875
    :cond_1b
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->rebootWithIntent()V

    .line 876
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 1066
    const-string v0, "PhoneInfoInterface"

    const-string v1, "InterruptedException: release()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return-void
.end method

.method public releaseDSAProxy()V
    .registers 3

    .prologue
    .line 1090
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 1091
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->proxyBackup:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1092
    const-string/jumbo v0, "net.gprs.http-proxy"

    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->proxyBackup:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_f
    return-void
.end method

.method public declared-synchronized requestDataProfile(I)I
    .registers 11
    .parameter "dataconnection"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v3, "PhoneInfoInterface"

    .line 964
    monitor-enter p0

    :try_start_5
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 967
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 968
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 969
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 970
    .local v0, connectedOrConnecting:Z
    const/4 v3, 0x2

    if-eq p1, v3, :cond_8b

    .line 971
    if-ne v0, v7, :cond_31

    .line 972
    const-string v3, "PhoneInfoInterface"

    const-string/jumbo v4, "requestDataProfile connectedOrConnecting: true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 975
    :cond_31
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z

    .line 980
    :goto_34
    const-string v3, "PhoneInfoInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestDataProfile setDataProfile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    if-ne v7, p1, :cond_97

    .line 983
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setDataProfile(ILandroid/os/Message;)V

    .line 987
    :goto_60
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 1005
    iget-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z

    if-nez v3, :cond_74

    .line 1006
    const-string v3, "PhoneInfoInterface"

    const-string/jumbo v4, "requestDataProfile mPhone.enableDataConnectivity() "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    .line 1012
    :cond_74
    if-ne v0, v7, :cond_78

    if-eqz p1, :cond_7c

    :cond_78
    iget-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z
    :try_end_7a
    .catchall {:try_start_5 .. :try_end_7a} :catchall_94

    if-ne v3, v7, :cond_81

    .line 1014
    :cond_7c
    const-wide/16 v3, 0xfa0

    :try_start_7e
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_94
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_81} :catch_a5

    .line 1020
    :cond_81
    :goto_81
    if-nez p1, :cond_86

    .line 1021
    :try_start_83
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->isNetworkAvailable()Z

    .line 1024
    :cond_86
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_94

    .line 1026
    monitor-exit p0

    return v8

    .line 977
    :cond_8b
    :try_start_8b
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 978
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_94

    goto :goto_34

    .line 964
    .end local v0           #connectedOrConnecting:Z
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :catchall_94
    move-exception v3

    monitor-exit p0

    throw v3

    .line 985
    .restart local v0       #connectedOrConnecting:Z
    .restart local v2       #netInfo:Landroid/net/NetworkInfo;
    :cond_97
    :try_start_97
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setDataProfile(ILandroid/os/Message;)V

    goto :goto_60

    .line 1015
    :catch_a5
    move-exception v1

    .line 1016
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "PhoneInfoInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISCONNECT_WAIT_TIME error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_97 .. :try_end_be} :catchall_94

    goto :goto_81
.end method

.method public setA_Key(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 630
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 632
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 634
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 635
    monitor-exit v0

    .line 636
    return-void

    .line 635
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setDOM_DATA_GUARD_ON_ENABLED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1356
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDOM_DATA_GUARD_ON_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const-string/jumbo v0, "roam_guard_data_domestic"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1359
    return-void
.end method

.method public setDOM_DATA_GUARD_ON_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1361
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDOM_DATA_GUARD_ON_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const-string/jumbo v0, "roam_guard_data_domestic_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1363
    return-void
.end method

.method public setDOM_DATA_ROAMING_BLOCK_ENABLED(Ljava/lang/String;)V
    .registers 7
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v3, "roam_setting_data_domestic"

    .line 1365
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDOM_DATA_ROAMING_BLOCK_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const-string v0, "1"

    if-ne p1, v0, :cond_49

    .line 1368
    const-string/jumbo v0, "roam_setting_data_domestic"

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1373
    :goto_28
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1374
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v1, "roam_setting_data_domestic"

    invoke-direct {p0, v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1375
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "roam_setting_data_domestic"

    invoke-direct {p0, v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    .line 1377
    :cond_48
    return-void

    .line 1371
    :cond_49
    const-string/jumbo v0, "roam_setting_data_domestic"

    invoke-direct {p0, v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_28
.end method

.method public setDOM_DATA_ROAMING_BLOCK_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1379
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDOM_DATA_ROAMING_BLOCK_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const-string/jumbo v0, "roam_setting_data_domestic_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1381
    return-void
.end method

.method public setDOM_VOICE_GUARD_ON_ENABLED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1383
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDOM_VOICE_GUARD_ON_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string/jumbo v0, "roam_guard_call_domestic"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1386
    return-void
.end method

.method public setDOM_VOICE_GUARD_ON_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1388
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDOM_VOICE_GUARD_ON_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-string/jumbo v0, "roam_guard_call_domestic_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1390
    return-void
.end method

.method public setDOM_VOICE_ROAMING_BLOCK_ENABLED(Ljava/lang/String;)V
    .registers 9
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string/jumbo v6, "roam_setting_call_domestic"

    const-string/jumbo v4, "roam_setting_data_domestic"

    .line 1392
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDOM_VOICE_ROAMING_BLOCK_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const-string v0, "1"

    if-ne p1, v0, :cond_55

    .line 1395
    const-string/jumbo v0, "roam_setting_call_domestic"

    invoke-direct {p0, v6, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1396
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setCdmaRoaming()V

    .line 1398
    const-string/jumbo v0, "roam_setting_data_domestic"

    invoke-direct {p0, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1399
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1400
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v1, "roam_setting_data_domestic"

    invoke-direct {p0, v4, v3}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1401
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "roam_setting_data_domestic"

    invoke-direct {p0, v4, v3}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    .line 1408
    :cond_54
    :goto_54
    return-void

    .line 1405
    :cond_55
    const-string/jumbo v0, "roam_setting_call_domestic"

    invoke-direct {p0, v6, v3}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1406
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setCdmaRoaming()V

    goto :goto_54
.end method

.method public setDOM_VOICE_ROAMING_BLOCK_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1410
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDOM_VOICE_ROAMING_BLOCK_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const-string/jumbo v0, "roam_setting_call_domestic_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1412
    return-void
.end method

.method public setDSAProxy(Ljava/lang/String;I)V
    .registers 10
    .parameter "proxy"
    .parameter "port"

    .prologue
    const-string/jumbo v6, "net.gprs.http-proxy"

    .line 1070
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 1071
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 1072
    :cond_e
    const-string/jumbo v1, "net.gprs.http-proxy"

    const/4 v1, 0x0

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :goto_15
    return-void

    .line 1077
    :cond_16
    if-ltz p2, :cond_1c

    const/16 v1, 0x2710

    if-lt p2, v1, :cond_1e

    .line 1078
    :cond_1c
    const/16 p2, 0x1f90

    .line 1080
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%04d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, htttpProxy:Ljava/lang/String;
    const-string/jumbo v1, "net.gprs.http-proxy"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->proxyBackup:Ljava/lang/String;

    .line 1082
    const-string/jumbo v1, "net.gprs.http-proxy"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDSAProxy :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "net.gprs.http-proxy"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public setDSA_SERVER_IP(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 792
    const/16 v0, 0x195

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 793
    return-void
.end method

.method public setDSA_SERVER_PORT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 797
    const/16 v0, 0x196

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 798
    return-void
.end method

.method public setDSA_SERVER_URL(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 762
    const/16 v0, 0x192

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 763
    return-void
.end method

.method public setHTTPPD_PROXY_ADDR(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 814
    const-string/jumbo v0, "net.cdma.httppd.proxy.addr"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/16 v0, 0x19e

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 816
    return-void
.end method

.method public setHTTPPD_PROXY_PORT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 820
    const-string/jumbo v0, "net.cdma.httppd.proxy.port"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const/16 v0, 0x19f

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 822
    return-void
.end method

.method public setINTL_DATA_GUARD_ON_ENABLED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1414
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_DATA_GUARD_ON_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const-string/jumbo v0, "roam_guard_data_international"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1417
    return-void
.end method

.method public setINTL_DATA_GUARD_ON_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1419
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_DATA_GUARD_ON_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const-string/jumbo v0, "roam_guard_data_international_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1421
    return-void
.end method

.method public setINTL_DATA_ROAMING_BLOCK_ENABLED(Ljava/lang/String;)V
    .registers 7
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v3, "roam_setting_data_international"

    .line 1423
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_DATA_ROAMING_BLOCK_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const-string v0, "1"

    if-ne p1, v0, :cond_49

    .line 1426
    const-string/jumbo v0, "roam_setting_data_international"

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1431
    :goto_28
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1432
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v1, "roam_setting_data_international"

    invoke-direct {p0, v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1433
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "roam_setting_data_international"

    invoke-direct {p0, v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    .line 1435
    :cond_48
    return-void

    .line 1429
    :cond_49
    const-string/jumbo v0, "roam_setting_data_international"

    invoke-direct {p0, v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_28
.end method

.method public setINTL_DATA_ROAMING_BLOCK_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1437
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_DATA_ROAMING_BLOCK_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string/jumbo v0, "roam_setting_data_international_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1439
    return-void
.end method

.method public setINTL_DIALING_ENABLED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1441
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_DIALING_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const-string/jumbo v0, "roam_dial_international_enabled"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1445
    return-void
.end method

.method public setINTL_DIALING_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1447
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_DIALING_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const-string/jumbo v0, "roam_dial_international_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1450
    return-void
.end method

.method public setINTL_VOICE_GUARD_ON_ENABLED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1452
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_VOICE_GUARD_ON_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const-string/jumbo v0, "roam_guard_call_international"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1455
    return-void
.end method

.method public setINTL_VOICE_GUARD_ON_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1457
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_VOICE_GUARD_ON_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const-string/jumbo v0, "roam_guard_call_international_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1459
    return-void
.end method

.method public setINTL_VOICE_ROAMING_BLOCK_ENABLED(Ljava/lang/String;)V
    .registers 9
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string/jumbo v6, "roam_setting_call_international"

    const-string/jumbo v4, "roam_setting_data_international"

    .line 1461
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_VOICE_ROAMING_BLOCK_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const-string v0, "1"

    if-ne p1, v0, :cond_55

    .line 1464
    const-string/jumbo v0, "roam_setting_call_international"

    invoke-direct {p0, v6, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1465
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setCdmaRoaming()V

    .line 1467
    const-string/jumbo v0, "roam_setting_data_international"

    invoke-direct {p0, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1468
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1469
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v1, "roam_setting_data_international"

    invoke-direct {p0, v4, v3}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1470
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "roam_setting_data_international"

    invoke-direct {p0, v4, v3}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    .line 1477
    :cond_54
    :goto_54
    return-void

    .line 1474
    :cond_55
    const-string/jumbo v0, "roam_setting_call_international"

    invoke-direct {p0, v6, v3}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1475
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setCdmaRoaming()V

    goto :goto_54
.end method

.method public setINTL_VOICE_ROAMING_BLOCK_FORCED(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1479
    const-string v0, "PhoneInfoInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setINTL_VOICE_ROAMING_BLOCK_FORCED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const-string/jumbo v0, "roam_setting_call_international_forced"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 1481
    return-void
.end method

.method public setMDN(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 598
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 600
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 602
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 603
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public setMEID(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 620
    return-void
.end method

.method public setMOBILESYNK_ENABLED(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 757
    const/16 v0, 0x12c

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 758
    return-void
.end method

.method public setMSID(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 608
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 610
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 612
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 613
    monitor-exit v0

    .line 614
    return-void

    .line 613
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setNetworkPreference(I)V
    .registers 5
    .parameter "type"

    .prologue
    .line 931
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 933
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    .line 934
    return-void
.end method

.method public setPDE_PRIMARY_IP(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 770
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v2, "agps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/AGPSManager;

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    .line 772
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    if-eqz v1, :cond_1e

    .line 773
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    invoke-virtual {v1}, Landroid/location/AGPSManager;->getHslpPort()I

    move-result v0

    .line 774
    .local v0, port:I
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    invoke-virtual {v1, p1, v0}, Landroid/location/AGPSManager;->setHslpAddress(Ljava/lang/String;I)V

    .line 776
    .end local v0           #port:I
    :cond_1e
    return-void
.end method

.method public setPDE_PRIMARY_PORT(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 782
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v2, "agps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/AGPSManager;

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    .line 784
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    if-eqz v1, :cond_27

    .line 785
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    invoke-virtual {v1}, Landroid/location/AGPSManager;->getHslpAddress()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mAGPSmanager:Landroid/location/AGPSManager;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/location/AGPSManager;->setHslpAddress(Ljava/lang/String;I)V

    .line 788
    .end local v0           #address:Ljava/lang/String;
    :cond_27
    return-void
.end method

.method public setPESUDO_ESN(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 626
    return-void
.end method

.method public setRTSP_PROXY_ADDR(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 802
    const-string/jumbo v0, "net.cdma.rtsp.proxy.addr"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/16 v0, 0x19c

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 804
    return-void
.end method

.method public setRTSP_PROXY_PORT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 808
    const-string/jumbo v0, "net.cdma.rtsp.proxy.port"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const/16 v0, 0x19d

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 810
    return-void
.end method

.method public setSLOT_1_AAA_AUTH_ALGORITHM(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 711
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 713
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 716
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 717
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_AAA_SPI(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 722
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 724
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5e

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 726
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_HA_AUTH_ALGORITHM(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 680
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 682
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 685
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 686
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_HA_PASSWORD(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 701
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 703
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 705
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_HA_SPI(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 691
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 693
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 695
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 696
    monitor-exit v0

    .line 697
    return-void

    .line 696
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_MOBILE_IP_ADDRESS(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 743
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 745
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x57

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 748
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 749
    monitor-exit v0

    .line 750
    return-void

    .line 749
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_NAI(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 640
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 642
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 644
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 645
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public setSLOT_1_NAI_PASSWORD(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 650
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 652
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 654
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 655
    monitor-exit v0

    .line 656
    return-void

    .line 655
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_PRIMARY_HA(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 660
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 662
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 664
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 665
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_REVERSE_TUNNELING(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 732
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 734
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 737
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 738
    monitor-exit v0

    .line 739
    return-void

    .line 738
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSLOT_1_SECONDARY_HA(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 670
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_6
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 672
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 674
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 675
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSetUpCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 339
    const/16 v0, 0x2710

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setUAPROF(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 753
    return-void
.end method

.method public setWORK_MODE(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 826
    const/16 v0, 0x1f4

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 827
    return-void
.end method
