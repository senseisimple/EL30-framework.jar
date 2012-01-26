.class Landroid/pim/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardParserImpl_V21$1;,
        Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;,
        Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "8BIT"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardParserImpl_V21"

.field private static final STATE_GROUP_OR_PROPERTY_NAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2


# instance fields
.field protected mCanceled:Z

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field protected mInterpreter:Landroid/pim/vcard/VCardInterpreter;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field private mTimeEndProperty:J

.field private mTimeHandleBase64:J

.field private mTimeHandleMiscPropertyValue:J

.field private mTimeHandleQuotedPrintable:J

.field private mTimeParseAdrOrgN:J

.field private mTimeParseItems:J

.field private mTimeParseLineAndHandleGroup:J

.field private mTimeParsePropertyValues:J

.field private mTimeReadEndRecord:J

.field private mTimeReadStartRecord:J

.field private mTimeStartProperty:J

.field private mTimeTotal:J

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 205
    sget v0, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 206
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "vcardType"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 209
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-eqz v0, :cond_19

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    .line 213
    :cond_19
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 214
    return-void
.end method

.method private getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "="

    const-string v8, "\r\n"

    .line 854
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 857
    .local v2, pos:I
    :cond_1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1a

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :goto_33
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_41

    .line 866
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 868
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 870
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 871
    :cond_53
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_53

    .line 873
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 876
    :cond_68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 882
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    :goto_6f
    return-object v3

    :cond_70
    move-object v3, p1

    goto :goto_6f
.end method

.method private ignoreBadProperty()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1086
    :cond_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 1087
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 1088
    new-instance v1, Landroid/pim/vcard/exception/VCardException;

    const-string v2, "File ended during parsing X-SSH-VCARD-PARAMS"

    invoke-direct {v1, v2}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1090
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1092
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    return-void
.end method

.method private isAsciiLetter(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 722
    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    .line 723
    :cond_10
    const/4 v0, 0x1

    .line 725
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private parseOneVCard(Z)Z
    .registers 16
    .parameter "firstRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_1a

    .line 293
    iget v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v8, :cond_1a

    .line 294
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a
    iget v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-ge v7, v8, :cond_1a

    .line 295
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v8

    if-nez v8, :cond_16

    move v8, v12

    .line 319
    .end local v7           #i:I
    :goto_15
    return v8

    .line 298
    .restart local v7       #i:I
    :cond_16
    const/4 v0, 0x1

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 303
    .end local v7           #i:I
    :cond_1a
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v8

    if-nez v8, :cond_22

    move v8, v12

    .line 304
    goto :goto_15

    .line 306
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 307
    .local v5, beforeStartEntry:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startEntry()V

    .line 308
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 311
    .local v3, beforeParseItems:J
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItems()V

    .line 312
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    .line 314
    invoke-virtual {p0, v13, v12}, Landroid/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 317
    .local v1, beforeEndEntry:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endEntry()V

    .line 318
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    move v8, v13

    .line 319
    goto :goto_15
.end method

.method private showPerformanceInfo()V
    .registers 6

    .prologue
    const-string v4, "VCardParserImpl_V21"

    const-string v3, " ms"

    .line 1002
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total parsing time:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total readLine time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v1}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling the beggining of the record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling the end of the record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing line, and handling group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing ADR, ORG, and N fields:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing property values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling normal property values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling Quoted-Printable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling Base64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .registers 3
    .parameter "ch"

    .prologue
    .line 989
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_17

    .line 990
    :cond_8
    const-string v0, "SC-02B"

    const-string v1, "SPH-D700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 991
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 997
    :goto_16
    return-object v0

    .line 994
    :cond_17
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_27

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_27

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_27

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2c

    .line 995
    :cond_27
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 997
    :cond_2c
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 1079
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCanceled:Z

    .line 1080
    return-void
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const-string v6, "VCardParserImpl_V21"

    const-string v5, ":"

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :goto_c
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1a

    .line 893
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 900
    :cond_1a
    const-string v2, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 901
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 903
    const-string v2, "VCardParserImpl_V21"

    const-string v2, "Found a next property during parsing a BASE64 string, which must not contain semi-colon. Treat the line as next property."

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v2, "VCardParserImpl_V21"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problematic line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 910
    :cond_63
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 912
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5e

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method protected getDefaultEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1048
    const-string v0, "8BIT"

    return-object v0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 278
    new-instance v1, Landroid/pim/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 280
    return-object v0
.end method

.method protected getVersion()I
    .registers 2

    .prologue
    .line 1021
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1028
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .registers 4
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 961
    return-void

    .line 963
    :cond_d
    new-instance v0, Landroid/pim/vcard/exception/VCardAgentNotSupportedException;

    const-string v1, "AGENT Property is not supported now."

    invoke-direct {v0, v1}, Landroid/pim/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 732
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p2}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .registers 4
    .parameter "charsetval"

    .prologue
    .line 691
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .registers 5
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 675
    :cond_12
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 677
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 681
    return-void

    .line 679
    :cond_21
    new-instance v0, Landroid/pim/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .registers 11
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const-string v8, "Invalid Language: \""

    const-string v7, "\""

    .line 699
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2d

    .line 701
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_2d
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 704
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 705
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    if-ge v0, v1, :cond_63

    .line 706
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_60

    .line 707
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 705
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 710
    :cond_63
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 711
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 712
    const/4 v0, 0x0

    :goto_6b
    if-ge v0, v1, :cond_99

    .line 713
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_96

    .line 714
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 712
    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 717
    :cond_99
    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 718
    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 943
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 946
    :cond_e
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v1

    invoke-static {p2, v1}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 948
    return-void
.end method

.method protected handleParamWithoutName(Ljava/lang/String;)V
    .registers 2
    .parameter "paramValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .registers 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 608
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_83

    .line 610
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 613
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 630
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_27
    return-void

    .line 614
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_28
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 615
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_27

    .line 616
    :cond_34
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 617
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_27

    .line 618
    :cond_40
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 619
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_27

    .line 620
    :cond_4c
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 621
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_27

    .line 622
    :cond_58
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 623
    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 625
    :cond_64
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 628
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_83
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParamWithoutName(Ljava/lang/String;)V

    goto :goto_27
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 739
    .local v10, upperEncoding:Ljava/lang/String;
    const-string v12, "QUOTED-PRINTABLE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 741
    .local v8, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 742
    .local v7, result:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v11, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v11}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 745
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    .line 825
    .end local v7           #result:Ljava/lang/String;
    .end local v11           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3d
    return-void

    .line 746
    .end local v8           #start:J
    :cond_3e
    const-string v12, "BASE64"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4e

    const-string v12, "B"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8e

    .line 748
    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 752
    .restart local v8       #start:J
    :try_start_52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v3}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V
    :try_end_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_52 .. :try_end_6a} :catch_7b

    .line 759
    .end local v3           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6a
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    goto :goto_3d

    .line 755
    :catch_7b
    move-exception v12

    move-object v5, v12

    .line 756
    .local v5, error:Ljava/lang/OutOfMemoryError;
    const-string v12, "VCardParserImpl_V21"

    const-string v13, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_6a

    .line 761
    .end local v5           #error:Ljava/lang/OutOfMemoryError;
    .end local v8           #start:J
    :cond_8e
    const-string v12, "7BIT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c4

    const-string v12, "8BIT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c4

    const-string v12, "X-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c4

    .line 763
    const-string v12, "VCardParserImpl_V21"

    const-string v13, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v12

    if-nez v12, :cond_109

    .line 791
    const/4 v4, 0x0

    .line 793
    .local v4, builder:Ljava/lang/StringBuilder;
    :goto_cb
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v6

    .line 800
    .local v6, nextLine:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_103

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_103

    const-string v12, "END:VCARD"

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_103

    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 805
    if-nez v4, :cond_fa

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_fa
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    .line 814
    :cond_103
    if-eqz v4, :cond_109

    .line 815
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 819
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #nextLine:Ljava/lang/String;
    :cond_109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 820
    .restart local v8       #start:J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .restart local v11       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v11}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 823
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    goto/16 :goto_3d
.end method

.method protected handleType(Ljava/lang/String;)V
    .registers 7
    .parameter "ptypeval"

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 647
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_3f
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "TYPE"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .registers 7
    .parameter "pvalueval"

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 661
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 662
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_3f
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .registers 5
    .parameter "propertyName"

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 250
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_3b
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .registers 3
    .parameter "ch"

    .prologue
    .line 980
    invoke-static {p1}, Landroid/pim/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "text"

    .prologue
    .line 971
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Landroid/pim/vcard/VCardInterpreter;)V
    .registers 10
    .parameter "is"
    .parameter "interpreter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1054
    if-nez p1, :cond_a

    .line 1055
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "InputStream must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1058
    :cond_a
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1059
    .local v2, tmpReader:Ljava/io/InputStreamReader;
    new-instance v3, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v3, v2}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1061
    if-eqz p2, :cond_4a

    move-object v3, p2

    :goto_1b
    iput-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1064
    .local v0, start:J
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_2a

    .line 1065
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Landroid/pim/vcard/VCardInterpreter;->start()V

    .line 1067
    :cond_2a
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseVCardFile()V

    .line 1068
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_36

    .line 1069
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Landroid/pim/vcard/VCardInterpreter;->end()V

    .line 1071
    :cond_36
    iget-wide v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    .line 1073
    invoke-static {}, Landroid/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1074
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->showPerformanceInfo()V

    .line 1076
    :cond_49
    return-void

    .line 1061
    .end local v0           #start:J
    :cond_4a
    new-instance v3, Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;-><init>(Landroid/pim/vcard/VCardParserImpl_V21$1;)V

    goto :goto_1b
.end method

.method protected parseItem()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v11, "\""

    .line 448
    const-string v6, "8BIT"

    iput-object v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 450
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 453
    .local v4, start:J
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    if-nez v2, :cond_18

    move v6, v8

    .line 492
    :goto_17
    return v6

    .line 457
    :cond_18
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3b

    .line 458
    new-instance v6, Landroid/pim/vcard/exception/VCardInvalidLineException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 460
    :cond_3b
    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, propertyName:Ljava/lang/String;
    aget-object v3, v2, v8

    .line 463
    .local v3, propertyValue:Ljava/lang/String;
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    .line 465
    const-string v6, "ADR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "ORG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "N"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 466
    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 467
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    move v6, v10

    .line 469
    goto :goto_17

    .line 470
    :cond_78
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 471
    invoke-virtual {p0, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v10

    .line 472
    goto :goto_17

    .line 474
    :cond_85
    const-string v6, "X-SSH-VCARD-PARAMS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 475
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->ignoreBadProperty()V

    move v6, v10

    .line 476
    goto :goto_17

    .line 478
    :cond_92
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 479
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 480
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 481
    new-instance v6, Landroid/pim/vcard/exception/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 483
    :cond_b0
    new-instance v6, Landroid/pim/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown BEGIN type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 485
    :cond_c9
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_102

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_102

    .line 486
    new-instance v6, Landroid/pim/vcard/exception/VCardVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incompatible version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 489
    :cond_102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 490
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    move v6, v10

    .line 492
    goto/16 :goto_17

    .line 495
    :cond_116
    new-instance v6, Landroid/pim/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown property name: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseItems()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v7, 0x0

    .line 412
    .local v7, ended:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 413
    .local v0, beforeBeginProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    .line 414
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 415
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItem()Z

    move-result v7

    .line 416
    if-nez v7, :cond_2d

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 418
    .local v2, beforeEndProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    .line 419
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    .line 422
    .end local v2           #beforeEndProperty:J
    :cond_2d
    :goto_2d
    if-nez v7, :cond_66

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 424
    .local v4, beforeStartProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    .line 425
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 427
    :try_start_42
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_45
    .catch Landroid/pim/vcard/exception/VCardInvalidCommentLineException; {:try_start_42 .. :try_end_45} :catch_5c

    move-result v7

    .line 433
    :goto_46
    if-nez v7, :cond_2d

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 435
    .restart local v2       #beforeEndProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    .line 436
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    goto :goto_2d

    .line 428
    .end local v2           #beforeEndProperty:J
    :catch_5c
    move-exception v6

    .line 429
    .local v6, e:Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v7, 0x0

    goto :goto_46

    .line 439
    .end local v4           #beforeStartProperty:J
    .end local v6           #e:Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
    :cond_66
    return-void
.end method

.method protected parseVCardFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v1, 0x1

    .line 225
    .local v1, readingFirstFile:Z
    :goto_1
    iget-boolean v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz v3, :cond_17

    .line 234
    :cond_5
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_1f

    .line 235
    const/4 v2, 0x1

    .line 236
    .local v2, useCache:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-ge v0, v3, :cond_1f

    .line 237
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 238
    const/4 v2, 0x0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 228
    .end local v0           #i:I
    .end local v2           #useCache:Z
    :cond_17
    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    const/4 v1, 0x0

    goto :goto_1

    .line 241
    :cond_1f
    return-void
.end method

.method protected peekLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .registers 10
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    :cond_3
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_b

    move v3, v5

    .line 353
    :goto_a
    return v3

    .line 334
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 338
    const-string v3, ":"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 347
    .local v0, length:I
    if-ne v0, v7, :cond_3c

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BEGIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v6

    .line 349
    goto :goto_a

    .line 350
    :cond_3c
    if-nez p1, :cond_65

    .line 351
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_46

    .line 352
    iput-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    move v3, v5

    .line 353
    goto :goto_a

    .line 355
    :cond_46
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 359
    :cond_65
    if-nez p1, :cond_3

    .line 361
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .registers 8
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 380
    :cond_1
    if-eqz p1, :cond_2d

    .line 383
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 395
    .local v0, line:Ljava/lang/String;
    :goto_5
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_46

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 404
    :goto_2c
    return-void

    .line 386
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_2d
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 387
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_3b

    .line 388
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    goto :goto_5

    .line 399
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_46
    if-nez p2, :cond_69

    .line 400
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_69
    const/4 p1, 0x0

    .line 403
    if-nez p2, :cond_1

    goto :goto_2c
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 506
    .local v6, propertyNameAndValue:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 507
    .local v3, length:I
    if-lez v3, :cond_18

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_18

    .line 508
    new-instance v8, Landroid/pim/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v8}, Landroid/pim/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v8

    .line 511
    :cond_18
    const/4 v7, 0x0

    .line 512
    .local v7, state:I
    const/4 v4, 0x0

    .line 516
    .local v4, nameIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    if-ge v2, v3, :cond_10f

    .line 517
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 518
    .local v0, ch:C
    packed-switch v7, :pswitch_data_12e

    .line 516
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 520
    :pswitch_27
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_59

    .line 521
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 523
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 524
    const/4 v8, 0x0

    .line 580
    .end local v5           #propertyName:Ljava/lang/String;
    :goto_3a
    return-object v8

    .line 526
    .restart local v5       #propertyName:Ljava/lang/String;
    :cond_3b
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 527
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 528
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_53

    .line 529
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_51
    move-object v8, v6

    .line 533
    goto :goto_3a

    .line 531
    :cond_53
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_51

    .line 534
    .end local v5           #propertyName:Ljava/lang/String;
    :cond_59
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_77

    .line 535
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, groupName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_71

    .line 537
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Empty group found. Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_6e
    add-int/lit8 v4, v2, 0x1

    .line 542
    goto :goto_24

    .line 539
    :cond_71
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    goto :goto_6e

    .line 542
    .end local v1           #groupName:Ljava/lang/String;
    :cond_77
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_24

    .line 543
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 544
    .restart local v5       #propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 545
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 546
    const/4 v8, 0x0

    goto :goto_3a

    .line 549
    :cond_8b
    const-string v8, "X-SSH-VCARD-PARAMS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 550
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 551
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    move-object v8, v6

    .line 552
    goto :goto_3a

    .line 555
    :cond_9d
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 556
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 557
    add-int/lit8 v4, v2, 0x1

    .line 558
    const/4 v7, 0x1

    .line 559
    goto/16 :goto_24

    .line 564
    .end local v5           #propertyName:Ljava/lang/String;
    :pswitch_aa
    const/16 v8, 0x22

    if-ne v0, v8, :cond_c4

    .line 565
    const-string v8, "2.1"

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 566
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_c1
    const/4 v7, 0x2

    goto/16 :goto_24

    .line 570
    :cond_c4
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_d3

    .line 571
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 572
    add-int/lit8 v4, v2, 0x1

    goto/16 :goto_24

    .line 573
    :cond_d3
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_24

    .line 574
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 575
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_ef

    .line 576
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_ec
    move-object v8, v6

    .line 580
    goto/16 :goto_3a

    .line 578
    :cond_ef
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_ec

    .line 585
    :pswitch_f5
    const/16 v8, 0x22

    if-ne v0, v8, :cond_24

    .line 586
    const-string v8, "2.1"

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10c

    .line 587
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_10c
    const/4 v7, 0x1

    goto/16 :goto_24

    .line 597
    .end local v0           #ch:C
    :cond_10f
    new-instance v8, Landroid/pim/vcard/exception/VCardInvalidLineException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 518
    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_27
        :pswitch_aa
        :pswitch_f5
    .end packed-switch
.end method
