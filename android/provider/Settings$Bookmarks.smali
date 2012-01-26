.class public final Landroid/provider/Settings$Bookmarks;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ORDERING:Ljava/lang/String; = "ordering"

.field public static final SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "Bookmarks"

.field public static final TITLE:Ljava/lang/String; = "title"

.field private static final sIntentProjection:[Ljava/lang/String; = null

.field private static final sShortcutProjection:[Ljava/lang/String; = null

.field private static final sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4233
    const-string v0, "content://settings/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 4286
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "intent"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 4287
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "shortcut"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;
    .registers 14
    .parameter "cr"
    .parameter "intent"
    .parameter "title"
    .parameter "folder"
    .parameter "shortcut"
    .parameter "ordering"

    .prologue
    .line 4350
    if-eqz p4, :cond_3f

    .line 4351
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    const-string/jumbo v3, "shortcut=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4355
    .local v6, c:Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4356
    :cond_1f
    :goto_1f
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 4357
    invoke-interface {v6}, Landroid/database/Cursor;->deleteRow()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4358
    const-string v0, "Bookmarks"

    const-string v1, "Could not delete existing shortcut row"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_33

    goto :goto_1f

    .line 4363
    :catchall_33
    move-exception v0

    if-eqz v6, :cond_39

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_39
    throw v0

    :cond_3a
    if-eqz v6, :cond_3f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4367
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3f
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 4368
    .local v7, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_4c

    const-string/jumbo v0, "title"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    :cond_4c
    if-eqz p3, :cond_53

    const-string v0, "folder"

    invoke-virtual {v7, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    :cond_53
    const-string v0, "intent"

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4371
    if-eqz p4, :cond_68

    const-string/jumbo v0, "shortcut"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4372
    :cond_68
    const-string/jumbo v0, "ordering"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4373
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForShortcut(Landroid/content/ContentResolver;C)Landroid/content/Intent;
    .registers 12
    .parameter "cr"
    .parameter "shortcut"

    .prologue
    .line 4302
    const/4 v8, 0x0

    .line 4304
    .local v8, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    const-string/jumbo v3, "shortcut=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string/jumbo v5, "ordering"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4309
    .local v6, c:Landroid/database/Cursor;
    :goto_1a
    if-nez v8, :cond_42

    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_3b

    move-result v0

    if-eqz v0, :cond_42

    .line 4311
    :try_start_22
    const-string v0, "intent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4312
    .local v9, intentURI:Ljava/lang/String;
    invoke-static {v9}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_3b
    .catch Ljava/net/URISyntaxException; {:try_start_22 .. :try_end_2f} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2f} :catch_31

    move-result-object v8

    goto :goto_1a

    .line 4315
    .end local v9           #intentURI:Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object v7, v0

    .line 4317
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_33
    const-string v0, "Bookmarks"

    const-string v1, "Intent column not found"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3b

    goto :goto_1a

    .line 4321
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_3b
    move-exception v0

    if-eqz v6, :cond_41

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0

    :cond_42
    if-eqz v6, :cond_47

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4324
    :cond_47
    return-object v8

    .line 4313
    :catch_48
    move-exception v0

    goto :goto_1a
.end method

.method public static getLabelForFolder(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "r"
    .parameter "folder"

    .prologue
    .line 4388
    return-object p1
.end method

.method public static getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 13
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, -0x1

    const-string v9, ""

    .line 4403
    const-string/jumbo v8, "title"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4404
    .local v7, titleColumn:I
    const-string v8, "intent"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4405
    .local v3, intentColumn:I
    if-eq v7, v10, :cond_14

    if-ne v3, v10, :cond_1c

    .line 4406
    :cond_14
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The cursor must contain the TITLE and INTENT columns."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4410
    :cond_1c
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4411
    .local v6, title:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_28

    move-object v8, v6

    .line 4429
    :goto_27
    return-object v8

    .line 4415
    :cond_28
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4416
    .local v4, intentUri:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 4417
    const-string v8, ""

    move-object v8, v9

    goto :goto_27

    .line 4422
    :cond_36
    :try_start_36
    invoke-static {v4}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_39
    .catch Ljava/net/URISyntaxException; {:try_start_36 .. :try_end_39} :catch_4a

    move-result-object v2

    .line 4427
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 4428
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 4429
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4f

    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_27

    .line 4423
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :catch_4a
    move-exception v0

    .line 4424
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v8, ""

    move-object v8, v9

    goto :goto_27

    .line 4429
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :cond_4f
    const-string v8, ""

    move-object v8, v9

    goto :goto_27
.end method
