.class public Landroid/sec/clipboard/util/ClipboardProcText;
.super Ljava/lang/Object;
.source "ClipboardProcText.java"


# static fields
.field private static body_found:Z

.field private static href:Ljava/lang/String;

.field private static in_body:Z

.field private static pre:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    .line 11
    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    .line 12
    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    .line 13
    const-string v0, ""

    sput-object v0, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertString(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v4, result:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v5, result2:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, input:Ljava/io/StringReader;
    const/4 v8, 0x0

    .line 91
    .local v8, text:Ljava/lang/String;
    :try_start_10
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    .line 93
    .local v1, dChar:I
    :goto_14
    const/4 v9, -0x1

    if-eq v1, v9, :cond_134

    .line 95
    const-string v8, ""

    .line 96
    const/16 v9, 0x3c

    if-ne v1, v9, :cond_32

    .line 98
    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getTag(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, CurrentTag:Ljava/lang/String;
    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardProcText;->convertTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    .end local v0           #CurrentTag:Ljava/lang/String;
    :goto_25
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    if-eqz v9, :cond_12b

    move-object v6, v4

    .line 138
    .local v6, s:Ljava/lang/StringBuffer;
    :goto_2a
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    .line 140
    goto :goto_14

    .line 101
    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_32
    const/16 v9, 0x26

    if-ne v1, v9, :cond_e5

    .line 102
    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getSpecial(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, specialchar:Ljava/lang/String;
    const-string v9, "lt;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    const-string v9, "#60"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 104
    :cond_4a
    const-string v8, "<"

    goto :goto_25

    .line 105
    :cond_4d
    const-string v9, "gt;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "#62"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 107
    :cond_5d
    const-string v8, ">"

    goto :goto_25

    .line 108
    :cond_60
    const-string v9, "amp;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    const-string v9, "#38"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 110
    :cond_70
    const-string v8, "&"

    goto :goto_25

    .line 111
    :cond_73
    const-string/jumbo v9, "nbsp;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 112
    const-string v8, " "

    goto :goto_25

    .line 113
    :cond_7f
    const-string/jumbo v9, "quot;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_90

    const-string v9, "#34"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_93

    .line 115
    :cond_90
    const-string v8, "\""

    goto :goto_25

    .line 116
    :cond_93
    const-string v9, "copy;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a3

    const-string v9, "#169"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 118
    :cond_a3
    const-string v8, "[Copyright]"

    goto :goto_25

    .line 119
    :cond_a6
    const-string/jumbo v9, "reg;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b7

    const-string v9, "#174"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 121
    :cond_b7
    const-string v8, "[Registered]"

    goto/16 :goto_25

    .line 122
    :cond_bb
    const-string/jumbo v9, "trade;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cc

    const-string v9, "#153"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 124
    :cond_cc
    const-string v8, "[Trademark]"

    goto/16 :goto_25

    .line 126
    :cond_d0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_25

    .line 127
    .end local v7           #specialchar:Ljava/lang/String;
    :cond_e5
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    if-nez v9, :cond_115

    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 128
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    if-eqz v9, :cond_10f

    move-object v6, v4

    .line 129
    .restart local v6       #s:Ljava/lang/StringBuffer;
    :goto_f5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_111

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_111

    .line 131
    const-string v8, ""

    goto/16 :goto_25

    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_10f
    move-object v6, v5

    .line 128
    goto :goto_f5

    .line 133
    .restart local v6       #s:Ljava/lang/StringBuffer;
    :cond_111
    const-string v8, " "

    goto/16 :goto_25

    .line 135
    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_115
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_128} :catch_12e

    move-result-object v8

    goto/16 :goto_25

    :cond_12b
    move-object v6, v5

    .line 137
    goto/16 :goto_2a

    .line 141
    .end local v1           #dChar:I
    :catch_12e
    move-exception v9

    move-object v2, v9

    .line 142
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    .line 143
    throw v2

    .line 145
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #dChar:I
    :cond_134
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    if-eqz v9, :cond_142

    move-object v6, v4

    .line 146
    .restart local v6       #s:Ljava/lang/StringBuffer;
    :goto_139
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_142
    move-object v6, v5

    .line 145
    goto :goto_139
.end method

.method private static convertTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "sText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const-string v7, "\""

    .line 231
    const-string v2, ""

    .line 232
    .local v2, result:Ljava/lang/String;
    const-string v3, "body"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 233
    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    .line 234
    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    .line 319
    :cond_13
    :goto_13
    return-object v2

    .line 235
    :cond_14
    const-string v3, "/body"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 236
    sput-boolean v6, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    .line 237
    const-string v2, ""

    goto :goto_13

    .line 238
    :cond_21
    const-string v3, "center"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 239
    const-string v2, ""

    goto :goto_13

    .line 241
    :cond_2c
    const-string v3, "/center"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 242
    const-string v2, ""

    goto :goto_13

    .line 244
    :cond_37
    const-string/jumbo v3, "pre"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 245
    const-string v2, ""

    .line 246
    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    goto :goto_13

    .line 247
    :cond_45
    const-string v3, "/pre"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 248
    const-string v2, ""

    .line 249
    sput-boolean v6, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    goto :goto_13

    .line 250
    :cond_52
    const-string/jumbo v3, "p"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 251
    const-string v2, "\n"

    goto :goto_13

    .line 252
    :cond_5e
    const-string v3, "br"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 253
    const-string v2, "\n"

    goto :goto_13

    .line 254
    :cond_69
    const-string v3, "h1"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "h2"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "h3"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "h4"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "h5"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "h6"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "h7"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 257
    :cond_a1
    const-string v2, ""

    goto/16 :goto_13

    .line 258
    :cond_a5
    const-string v3, "/h1"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "/h2"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "/h3"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "/h4"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "/h5"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "/h6"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "/h7"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 262
    :cond_dd
    const-string v2, ""

    goto/16 :goto_13

    .line 263
    :cond_e1
    const-string v3, "/dl"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 264
    const-string v2, ""

    goto/16 :goto_13

    .line 265
    :cond_ed
    const-string v3, "dd"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 266
    const-string v2, "  * "

    goto/16 :goto_13

    .line 267
    :cond_f9
    const-string v3, "dt"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 268
    const-string v2, "      "

    goto/16 :goto_13

    .line 269
    :cond_105
    const-string v3, "li"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 270
    const-string v2, "\n  * "

    goto/16 :goto_13

    .line 271
    :cond_111
    const-string v3, "/ul"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 272
    const-string v2, ""

    goto/16 :goto_13

    .line 273
    :cond_11d
    const-string v3, "/ol"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 274
    const-string v2, ""

    goto/16 :goto_13

    .line 275
    :cond_129
    const-string v3, "hr"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_135

    .line 276
    const-string v2, "_________________________________________"

    goto/16 :goto_13

    .line 277
    :cond_135
    const-string/jumbo v3, "table"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 278
    const-string v2, ""

    goto/16 :goto_13

    .line 279
    :cond_142
    const-string v3, "/table"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 280
    const-string v2, ""

    goto/16 :goto_13

    .line 281
    :cond_14e
    const-string v3, "form"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 282
    const-string v2, ""

    goto/16 :goto_13

    .line 283
    :cond_15a
    const-string v3, "/form"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_166

    .line 284
    const-string v2, ""

    goto/16 :goto_13

    .line 285
    :cond_166
    const-string v3, "b"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 286
    const-string v2, "*"

    goto/16 :goto_13

    .line 287
    :cond_172
    const-string v3, "/b"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 288
    const-string v2, "*"

    goto/16 :goto_13

    .line 289
    :cond_17e
    const-string v3, "i"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18a

    .line 290
    const-string v2, "\""

    goto/16 :goto_13

    .line 291
    :cond_18a
    const-string v3, "/i"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 292
    const-string v2, "\""

    goto/16 :goto_13

    .line 293
    :cond_196
    const-string v3, "img"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b4

    .line 294
    const-string v3, "alt=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, idx:I
    if-eq v0, v5, :cond_13

    .line 296
    add-int/lit8 v0, v0, 0x5

    .line 297
    const-string v3, "\""

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, idx2:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_13

    .line 300
    .end local v0           #idx:I
    .end local v1           #idx2:I
    :cond_1b4
    const-string v3, "a"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1da

    .line 301
    const-string v3, "href=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 302
    .restart local v0       #idx:I
    if-eq v0, v5, :cond_1d4

    .line 303
    add-int/lit8 v0, v0, 0x6

    .line 304
    const-string v3, "\""

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 305
    .restart local v1       #idx2:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    goto/16 :goto_13

    .line 307
    .end local v1           #idx2:I
    :cond_1d4
    const-string v3, ""

    sput-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    goto/16 :goto_13

    .line 310
    .end local v0           #idx:I
    :cond_1da
    const-string v3, "/a"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 311
    sget-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 312
    const-string v2, "\n"

    goto/16 :goto_13

    .line 316
    :cond_1ee
    const-string v3, "/tr"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 317
    const-string v2, "\n"

    goto/16 :goto_13
.end method

.method public static getImgUrlFormHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "sSource"

    .prologue
    const/4 v9, 0x0

    const-string/jumbo v11, "src=\""

    const-string v10, "<img"

    .line 24
    const-string/jumbo v1, "src=\""

    .line 25
    .local v1, IMG_SRC:Ljava/lang/String;
    const-string v0, "<img"

    .line 26
    .local v0, IMG_BEGIN:Ljava/lang/String;
    const-string v5, ""

    .line 28
    .local v5, sResult:Ljava/lang/String;
    const/4 v3, 0x0

    .line 29
    .local v3, iIndex:I
    const/4 v4, 0x0

    .line 31
    .local v4, iSubIndex:I
    const-string v7, "<img"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 33
    :goto_15
    const/4 v7, -0x1

    if-le v3, v7, :cond_73

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 37
    const-string/jumbo v7, "src=\""

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 38
    if-lez v4, :cond_6c

    .line 39
    const-string/jumbo v7, "src=\""

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 44
    const-string v7, "\""

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, i1:I
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, spp:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardProcText;->makeFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .end local v2           #i1:I
    .end local v6           #spp:Ljava/lang/String;
    :cond_6c
    const-string v7, "<img"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_15

    .line 65
    :cond_73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    return-object v5
.end method

.method private static getSpecial(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .parameter "rReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x1

    .line 185
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v1, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 187
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 189
    .local v0, dCharacter:I
    :goto_f
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 190
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 192
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_f

    .line 194
    :cond_22
    if-ne v0, v4, :cond_2c

    .line 195
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :goto_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    :cond_2c
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    goto :goto_27
.end method

.method private static getTag(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3c

    .line 158
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v2, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 161
    .local v1, level:I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    :cond_b
    :goto_b
    if-lez v1, :cond_14

    .line 163
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 164
    .local v0, dChar:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_19

    .line 173
    .end local v0           #dChar:I
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 166
    .restart local v0       #dChar:I
    :cond_19
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    if-ne v0, v4, :cond_22

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 169
    :cond_22
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_b

    .line 170
    add-int/lit8 v1, v1, -0x1

    goto :goto_b
.end method

.method private static isTag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "sSentence"
    .parameter "sTag"

    .prologue
    const-string v4, "<"

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, sTagType_1:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, sTagType_2:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_4c
    const/4 v2, 0x1

    :goto_4d
    return v2

    :cond_4e
    const/4 v2, 0x0

    goto :goto_4d
.end method

.method private static makeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "sFileName"

    .prologue
    .line 73
    return-object p0
.end method
