.class public Landroid/text/method/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# static fields
.field public static final DEFAULT_SMILEY_NAMES:I = 0x1070027

.field public static final DEFAULT_SMILEY_RES_IDS:[I = null

.field public static final DEFAULT_SMILEY_TEXTS:I = 0x1070026

.field private static sInstance:Landroid/text/method/SmileyParser;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mSmileyTexts:[Ljava/lang/String;

.field private final mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    const/16 v0, 0x11

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/internal/widget/Smileys;->HAPPY:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/internal/widget/Smileys;->SAD:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/widget/Smileys;->WINKING:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/internal/widget/Smileys;->TONGUE_STICKING_OUT:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/internal/widget/Smileys;->SURPRISED:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/internal/widget/Smileys;->KISSING:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/internal/widget/Smileys;->YELLING:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/internal/widget/Smileys;->COOL:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/internal/widget/Smileys;->MONEY_MOUTH:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/internal/widget/Smileys;->FOOT_IN_MOUTH:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/internal/widget/Smileys;->EMBARRASSED:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/internal/widget/Smileys;->ANGEL:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/android/internal/widget/Smileys;->UNDECIDED:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/android/internal/widget/Smileys;->CRYING:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/android/internal/widget/Smileys;->LIPS_ARE_SEALED:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/android/internal/widget/Smileys;->LAUGHING:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/android/internal/widget/Smileys;->WTF:I

    invoke-static {v2}, Lcom/android/internal/widget/Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Landroid/text/method/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/text/method/SmileyParser;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Landroid/text/method/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Landroid/text/method/SmileyParser;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    .line 58
    invoke-direct {p0}, Landroid/text/method/SmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    .line 59
    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .registers 9

    .prologue
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/text/method/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    .local v3, patternString:Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Landroid/text/method/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_13
    if-ge v1, v2, :cond_26

    aget-object v4, v0, v1

    .line 120
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 124
    .end local v4           #s:Ljava/lang/String;
    :cond_26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v2, Landroid/text/method/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Landroid/text/method/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_10

    .line 95
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/text/method/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v2, p0, Landroid/text/method/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_30

    .line 101
    iget-object v2, p0, Landroid/text/method/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Landroid/text/method/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 104
    :cond_30
    return-object v1
.end method

.method public static getInstance()Landroid/text/method/SmileyParser;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Landroid/text/method/SmileyParser;->sInstance:Landroid/text/method/SmileyParser;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    new-instance v0, Landroid/text/method/SmileyParser;

    invoke-direct {v0, p0}, Landroid/text/method/SmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/text/method/SmileyParser;->sInstance:Landroid/text/method/SmileyParser;

    .line 47
    return-void
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "text"

    .prologue
    .line 139
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 141
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Landroid/text/method/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 142
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 143
    iget-object v3, p0, Landroid/text/method/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 144
    .local v2, resId:I
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Landroid/text/method/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    .line 149
    .end local v2           #resId:I
    :cond_36
    return-object v0
.end method
