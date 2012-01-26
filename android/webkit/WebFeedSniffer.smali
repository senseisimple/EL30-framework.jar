.class Landroid/webkit/WebFeedSniffer;
.super Ljava/lang/Object;
.source "WebFeedSniffer.java"


# static fields
.field private static final FEED_TYPE_ATOM:I = 0x6e

.field private static final FEED_TYPE_NONE:I = 0x0

.field private static final FEED_TYPE_RSS100:I = 0x78

.field private static final FEED_TYPE_RSS200:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NS_RDF:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field private static final NS_RSS:Ljava/lang/String; = "http://purl.org/rss/1.0/"

.field public static final TYPE_ATOM:Ljava/lang/String; = "application/atom+xml"

.field public static final TYPE_MAYBE_FEED:Ljava/lang/String; = "application/vnd.webkit.maybe.feed"

.field public static final TYPE_RDF:Ljava/lang/String; = "application/rdf+xml"

.field public static final TYPE_RSS:Ljava/lang/String; = "application/rss+xml"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsDocumentElement(Ljava/lang/String;II)Z
    .registers 8
    .parameter "data"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v4, 0x3c

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 82
    if-ne p1, v3, :cond_c

    move v1, v2

    .line 119
    :goto_b
    return v1

    .line 86
    :cond_c
    add-int/lit8 p1, p1, 0x1

    .line 87
    if-lt p1, p2, :cond_12

    move v1, v2

    .line 88
    goto :goto_b

    .line 93
    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 97
    .local v0, c:C
    const/16 v1, 0x3f

    if-eq v0, v1, :cond_20

    const/16 v1, 0x21

    if-eq v0, v1, :cond_20

    move v1, v2

    .line 98
    goto :goto_b

    .line 103
    :cond_20
    const/16 v1, 0x3e

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 108
    if-ne p1, v3, :cond_2a

    move v1, v2

    .line 109
    goto :goto_b

    .line 111
    :cond_2a
    add-int/lit8 p1, p1, 0x1

    .line 113
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 117
    if-eq p1, v3, :cond_34

    if-lt p1, p2, :cond_c

    .line 119
    :cond_34
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private static containsTopLevelSubstring(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "dataString"
    .parameter "substring"

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, offset:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    move v1, v2

    .line 146
    :goto_9
    return v1

    :cond_a
    invoke-static {p0, v2, v0}, Landroid/webkit/WebFeedSniffer;->IsDocumentElement(Ljava/lang/String;II)Z

    move-result v1

    goto :goto_9
.end method

.method private static feedTypeFromContent(Ljava/lang/String;)I
    .registers 5
    .parameter "dataString"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, type:I
    const-string v1, "<rss"

    invoke-static {p0, v1}, Landroid/webkit/WebFeedSniffer;->containsTopLevelSubstring(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_e

    .line 155
    const/16 v0, 0x64

    .line 168
    :cond_d
    :goto_d
    return v0

    .line 157
    :cond_e
    const-string v1, "<feed"

    invoke-static {p0, v1}, Landroid/webkit/WebFeedSniffer;->containsTopLevelSubstring(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_19

    .line 159
    const/16 v0, 0x6e

    goto :goto_d

    .line 161
    :cond_19
    const-string v1, "<rdf:RDF"

    invoke-static {p0, v1}, Landroid/webkit/WebFeedSniffer;->containsTopLevelSubstring(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_d

    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_d

    const-string v1, "http://purl.org/rss/1.0/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_d

    .line 165
    const/16 v0, 0x78

    goto :goto_d
.end method

.method public static mimeType([BI)Ljava/lang/String;
    .registers 6
    .parameter "data"
    .parameter "length"

    .prologue
    .line 173
    const/16 v2, 0x200

    if-le p1, v2, :cond_6

    .line 174
    const/16 p1, 0x200

    .line 176
    :cond_6
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 178
    .local v0, dataString:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebFeedSniffer;->feedTypeFromContent(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, type:I
    if-eqz v1, :cond_1d

    .line 184
    new-instance v2, Ljava/lang/String;

    const-string v3, "application/vnd.webkit.maybe.feed"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 187
    :goto_1c
    return-object v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method
