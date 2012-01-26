.class public Landroid/net/wimax/ConnectionStatistics;
.super Ljava/lang/Object;
.source "ConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wimax/ConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ConnectionStatistics"

.field private static final WIMAX_RX_BYTES:[Ljava/io/File;

.field private static final WIMAX_RX_PACKETS:[Ljava/io/File;

.field private static final WIMAX_TX_BYTES:[Ljava/io/File;

.field private static final WIMAX_TX_PACKETS:[Ljava/io/File;

.field private static final buf:[B


# instance fields
.field private m_nTotalRxBytes:J

.field private m_nTotalRxPackets:J

.field private m_nTotalTxBytes:J

.field private m_nTotalTxPackets:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string/jumbo v0, "tx_packets"

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->WimaxFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_TX_PACKETS:[Ljava/io/File;

    .line 43
    const-string/jumbo v0, "rx_packets"

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->WimaxFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_RX_PACKETS:[Ljava/io/File;

    .line 44
    const-string/jumbo v0, "tx_bytes"

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->WimaxFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_TX_BYTES:[Ljava/io/File;

    .line 45
    const-string/jumbo v0, "rx_bytes"

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->WimaxFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_RX_BYTES:[Ljava/io/File;

    .line 136
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Landroid/net/wimax/ConnectionStatistics;->buf:[B

    .line 193
    new-instance v0, Landroid/net/wimax/ConnectionStatistics$1;

    invoke-direct {v0}, Landroid/net/wimax/ConnectionStatistics$1;-><init>()V

    sput-object v0, Landroid/net/wimax/ConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxBytes:J

    .line 49
    iput-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxPackets:J

    .line 50
    iput-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxBytes:J

    .line 51
    iput-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxPackets:J

    .line 52
    return-void
.end method

.method private static WimaxFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 6
    .parameter "whatStat"

    .prologue
    .line 113
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/io/File;

    .line 114
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/uwbr0/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 115
    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wimax/ConnectionStatistics;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/net/wimax/ConnectionStatistics;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxPackets:J

    return-wide p1
.end method

.method static synthetic access$202(Landroid/net/wimax/ConnectionStatistics;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxBytes:J

    return-wide p1
.end method

.method static synthetic access$302(Landroid/net/wimax/ConnectionStatistics;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxPackets:J

    return-wide p1
.end method

.method public static getDownlinkThroughput()J
    .registers 2

    .prologue
    .line 99
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static declared-synchronized getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    .registers 12
    .parameter "raf"
    .parameter "filename"

    .prologue
    const/16 v8, 0x30

    const-string v4, "Exception closing "

    const-string v4, "ConnectionStatistics"

    .line 140
    const-class v4, Landroid/net/wimax/ConnectionStatistics;

    monitor-enter v4

    :try_start_9
    sget-object v5, Landroid/net/wimax/ConnectionStatistics;->buf:[B

    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 141
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_88
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_4c

    .line 146
    if-eqz p0, :cond_16

    .line 148
    :try_start_13
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_49
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_2f

    .line 155
    :cond_16
    :goto_16
    const-wide/16 v2, 0x0

    .line 156
    .local v2, num:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    :try_start_19
    sget-object v5, Landroid/net/wimax/ConnectionStatistics;->buf:[B

    array-length v5, v5

    if-ge v1, v5, :cond_2c

    .line 157
    sget-object v5, Landroid/net/wimax/ConnectionStatistics;->buf:[B

    aget-byte v5, v5, v1

    if-lt v5, v8, :cond_2c

    sget-object v5, Landroid/net/wimax/ConnectionStatistics;->buf:[B

    aget-byte v5, v5, v1
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_49

    const/16 v6, 0x39

    if-le v5, v6, :cond_a9

    :cond_2c
    move-wide v5, v2

    .line 163
    .end local v1           #i:I
    .end local v2           #num:J
    :cond_2d
    :goto_2d
    monitor-exit v4

    return-wide v5

    .line 149
    :catch_2f
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/IOException;
    :try_start_30
    const-string v5, "ConnectionStatistics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_49

    goto :goto_16

    .line 140
    .end local v0           #e:Ljava/io/IOException;
    :catchall_49
    move-exception v5

    monitor-exit v4

    throw v5

    .line 142
    :catch_4c
    move-exception v5

    move-object v0, v5

    .line 143
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4e
    const-string v5, "ConnectionStatistics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting TCP bytes from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_4e .. :try_end_66} :catchall_88

    .line 144
    const-wide/16 v5, 0x0

    .line 146
    if-eqz p0, :cond_2d

    .line 148
    :try_start_6a
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_49
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_2d

    .line 149
    :catch_6e
    move-exception v0

    .line 150
    :try_start_6f
    const-string v7, "ConnectionStatistics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_49

    goto :goto_2d

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    :catchall_88
    move-exception v5

    if-eqz p0, :cond_8e

    .line 148
    :try_start_8b
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_49
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 151
    :cond_8e
    :goto_8e
    :try_start_8e
    throw v5

    .line 149
    :catch_8f
    move-exception v0

    .line 150
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "ConnectionStatistics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    .line 160
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v2       #num:J
    :cond_a9
    const-wide/16 v5, 0xa

    mul-long/2addr v2, v5

    .line 161
    sget-object v5, Landroid/net/wimax/ConnectionStatistics;->buf:[B

    aget-byte v5, v5, v1
    :try_end_b0
    .catchall {:try_start_8e .. :try_end_b0} :catchall_49

    sub-int/2addr v5, v8

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_19
.end method

.method public static getUplinkThroughput()J
    .registers 2

    .prologue
    .line 95
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static getWimaxStat([Ljava/io/File;)J
    .registers 8
    .parameter "files"

    .prologue
    .line 119
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_3f

    .line 120
    aget-object v1, p0, v2

    .line 121
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    .line 119
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_f
    :try_start_f
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/wimax/ConnectionStatistics;->getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_20

    move-result-wide v4

    .line 131
    .end local v1           #file:Ljava/io/File;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_1f
    return-wide v4

    .line 127
    .restart local v1       #file:Ljava/io/File;
    :catch_20
    move-exception v4

    move-object v0, v4

    .line 128
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ConnectionStatistics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception opening TCP statistics file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 131
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    :cond_3f
    const-wide/16 v4, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalRxBytes()J
    .registers 3

    .prologue
    .line 60
    sget-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_RX_BYTES:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxBytes:J

    .line 61
    iget-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxBytes:J

    return-wide v0
.end method

.method public getTotalRxPackets()J
    .registers 3

    .prologue
    .line 70
    sget-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_RX_PACKETS:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxPackets:J

    .line 71
    iget-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxPackets:J

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .registers 3

    .prologue
    .line 80
    sget-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_TX_BYTES:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxBytes:J

    .line 81
    iget-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxBytes:J

    return-wide v0
.end method

.method public getTotalTxPackets()J
    .registers 3

    .prologue
    .line 90
    sget-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_TX_PACKETS:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxPackets:J

    .line 91
    sget-object v0, Landroid/net/wimax/ConnectionStatistics;->WIMAX_TX_PACKETS:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/wimax/ConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 171
    .local v0, none:Ljava/lang/String;
    const-string v2, "m_nTotalRxBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", m_nTotalRxPackets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxPackets:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", m_nTotalTxBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", m_nTotalTxPackets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxPackets:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 186
    iget-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalRxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    iget-wide v0, p0, Landroid/net/wimax/ConnectionStatistics;->m_nTotalTxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    return-void
.end method
