.class public Lcom/android/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;,
        Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/android/internal/view/menu/MenuBuilder$Callback;,
        Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT_RES_FOR_TYPE:[I = null

.field static final LAYOUT_RES_FOR_TYPE:[I = null

.field private static final LOGTAG:Ljava/lang/String; = "MenuBuilder"

.field public static final NUM_TYPES:I = 0x3

.field static final THEME_RES_FOR_TYPE:[I = null

.field public static final TYPE_DIALOG:I = 0x2

.field public static final TYPE_EXPANDED:I = 0x1

.field public static final TYPE_ICON:I = 0x0

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field private mHeaderTitleId:I

.field mHeaderView:Landroid/view/View;

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

.field private mOptionalIconsVisible:Z

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->THEME_RES_FOR_TYPE:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->ITEM_LAYOUT_RES_FOR_TYPE:[I

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    .line 72
    nop

    :array_20
    .array-data 0x4
        0xa6t 0x0t 0x3t 0x1t
        0xa7t 0x0t 0x3t 0x1t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 79
    :array_2a
    .array-data 0x4
        0x2et 0x0t 0x9t 0x1t
        0x29t 0x0t 0x9t 0x1t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_34
    .array-data 0x4
        0x2dt 0x0t 0x9t 0x1t
        0x44t 0x0t 0x9t 0x1t
        0x44t 0x0t 0x9t 0x1t
    .end array-data

    .line 92
    :array_3e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitleId:I

    .line 164
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 280
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 282
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 288
    iput-boolean v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 290
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_37

    move v0, v2

    :goto_34
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 292
    return-void

    :cond_37
    move v0, v1

    .line 290
    goto :goto_34
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuBuilder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getNumIconMenuItemsShown()I

    move-result v0

    return v0
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 12
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 375
    invoke-static {p3}, Lcom/android/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 377
    .local v5, ordering:I
    new-instance v0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuItemImpl;-><init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;)V

    .line 379
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_17

    .line 381
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 384
    :cond_17
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 385
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 387
    return-object v0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 6
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_1b

    .line 737
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 738
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_18

    .line 739
    add-int/lit8 v2, v0, 0x1

    .line 743
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_17
    return v2

    .line 736
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 743
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private getNumIconMenuItemsShown()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 333
    const/4 v1, 0x0

    .line 335
    .local v1, parent:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v2

    if-nez v2, :cond_28

    .line 342
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 343
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 344
    .local v0, expandedMenuView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #parent:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 348
    .end local v0           #expandedMenuView:Landroid/view/View;
    .restart local v1       #parent:Landroid/view/ViewGroup;
    :cond_28
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/IconMenuView;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getNumActualItemsShown()I

    move-result v2

    return v2
.end method

.method private static getOrdering(I)I
    .registers 4
    .parameter "categoryOrder"

    .prologue
    .line 665
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 667
    .local v0, index:I
    if-ltz v0, :cond_c

    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_15

    .line 668
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_15
    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private onItemsChanged(Z)V
    .registers 6
    .parameter "cleared"

    .prologue
    .line 907
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v3, :cond_2f

    .line 908
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_b

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 910
    :cond_b
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 911
    .local v1, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2f

    .line 912
    aget-object v3, v1, v0

    if-eqz v3, :cond_2c

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 913
    aget-object v3, v1, v0

    #getter for: Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->access$200(Lcom/android/internal/view/menu/MenuBuilder$MenuType;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuView;

    .line 914
    .local v2, menuView:Lcom/android/internal/view/menu/MenuView;
    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuView;->updateChildren(Z)V

    .line 911
    .end local v2           #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 918
    .end local v0           #i:I
    .end local v1           #menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    :cond_2f
    return-void
.end method

.method private refreshShortcuts(ZZ)V
    .registers 7
    .parameter "shortcutsVisible"
    .parameter "qwertyMode"

    .prologue
    .line 687
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_28

    .line 688
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 690
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 691
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    .line 694
    :cond_22
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews(ZZ)V

    .line 687
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 696
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_28
    return-void
.end method

.method private removeItemAtInt(IZ)V
    .registers 4
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    .line 486
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 491
    :cond_a
    :goto_a
    return-void

    .line 488
    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 490
    if-eqz p2, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_a
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 9
    .parameter "titleRes"
    .parameter "title"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 959
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p5, :cond_12

    .line 960
    iput-object p5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 963
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 964
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 989
    :goto_d
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 990
    return-void

    .line 966
    :cond_12
    if-lez p1, :cond_27

    .line 967
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 971
    iput p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitleId:I

    .line 978
    :cond_1c
    :goto_1c
    if-lez p3, :cond_2c

    .line 979
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 985
    :cond_24
    :goto_24
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_d

    .line 974
    :cond_27
    if-eqz p2, :cond_1c

    .line 975
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1c

    .line 980
    :cond_2c
    if-eqz p4, :cond_24

    .line 981
    iput-object p4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_24
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 4
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 399
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 24
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 428
    iget-object v12, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 429
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    move-object v0, v9

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 431
    .local v8, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_70

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move v5, v12

    .line 433
    .local v5, N:I
    :goto_1a
    and-int/lit8 v12, p7, 0x1

    if-nez v12, :cond_21

    .line 434
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 437
    :cond_21
    const/4 v6, 0x0

    .local v6, i:I
    :goto_22
    if-ge v6, v5, :cond_78

    .line 438
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 439
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    new-instance v11, Landroid/content/Intent;

    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v12, :cond_73

    move-object/from16 v12, p6

    :goto_32
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 441
    .local v11, rintent:Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 444
    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v12

    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    .line 447
    .local v7, item:Landroid/view/MenuItem;
    if-eqz p8, :cond_6d

    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v12, :cond_6d

    .line 448
    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v7, p8, v12

    .line 437
    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 431
    .end local v5           #N:I
    .end local v6           #i:I
    .end local v7           #item:Landroid/view/MenuItem;
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    .end local v11           #rintent:Landroid/content/Intent;
    :cond_70
    const/4 v12, 0x0

    move v5, v12

    goto :goto_1a

    .line 439
    .restart local v5       #N:I
    .restart local v6       #i:I
    .restart local v10       #ri:Landroid/content/pm/ResolveInfo;
    :cond_73
    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v12, p5, v12

    goto :goto_32

    .line 452
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    :cond_78
    return v5
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 4
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 8
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 415
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 416
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 417
    .local v1, subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    .line 419
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 509
    return-void
.end method

.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 498
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 499
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 502
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 503
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 948
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 949
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 950
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 952
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 953
    return-void
.end method

.method public clearMenuViews()V
    .registers 5

    .prologue
    .line 356
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_14

    .line 357
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v0

    if-eqz v2, :cond_11

    .line 358
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;
    invoke-static {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->access$202(Lcom/android/internal/view/menu/MenuBuilder$MenuType;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 356
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 362
    :cond_14
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    :goto_1d
    if-ltz v0, :cond_3c

    .line 363
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 364
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 365
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->clearMenuViews()V

    .line 367
    :cond_36
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->clearItemViews()V

    .line 362
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 369
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3c
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 899
    return-void
.end method

.method final close(Z)V
    .registers 3
    .parameter "allMenusAreClosing"

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 891
    .local v0, callback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_9

    .line 892
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 894
    :cond_9
    return-void
.end method

.method public findGroupIndex(I)I
    .registers 3
    .parameter "group"

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .registers 7
    .parameter "group"
    .parameter "start"

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 618
    .local v2, size:I
    if-gez p2, :cond_7

    .line 619
    const/4 p2, 0x0

    .line 622
    :cond_7
    move v0, p2

    .local v0, i:I
    :goto_8
    if-ge v0, v2, :cond_1d

    .line 623
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 625
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    move v3, v0

    .line 630
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_19
    return v3

    .line 622
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 630
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    const/4 v3, -0x1

    goto :goto_19
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 7
    .parameter "id"

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 582
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v3, :cond_2c

    .line 583
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 584
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_17

    move-object v4, v1

    .line 595
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_16
    return-object v4

    .line 586
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 587
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 589
    .local v2, possibleItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_29

    move-object v4, v2

    .line 590
    goto :goto_16

    .line 582
    .end local v2           #possibleItem:Landroid/view/MenuItem;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 595
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2c
    const/4 v4, 0x0

    goto :goto_16
.end method

.method public findItemIndex(I)I
    .registers 6
    .parameter "id"

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 601
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_1a

    .line 602
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 603
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_17

    move v3, v0

    .line 608
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_16
    return v3

    .line 601
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 608
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1a
    const/4 v3, -0x1

    goto :goto_16
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 816
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;

    move-result-object v2

    .line 818
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    if-nez v2, :cond_a

    move-object v7, v10

    .line 846
    .end local p0
    :goto_9
    return-object v7

    .line 822
    .restart local p0
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 823
    .local v3, metaState:I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 825
    .local v4, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 828
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    .line 829
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v7, p0

    goto :goto_9

    .line 832
    .restart local p0
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 835
    .local v5, qwerty:Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 836
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_61

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    move v6, v7

    .line 837
    .local v6, shortcutChar:C
    :goto_40
    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v7, v7, v9

    if-ne v6, v7, :cond_4a

    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5f

    :cond_4a
    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_55

    and-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_5f

    :cond_55
    if-eqz v5, :cond_2d

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2d

    const/16 v7, 0x43

    if-ne p1, v7, :cond_2d

    :cond_5f
    move-object v7, v1

    .line 843
    goto :goto_9

    .line 836
    .end local v6           #shortcutChar:C
    :cond_61
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    move v6, v7

    goto :goto_40

    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_67
    move-object v7, v10

    .line 846
    goto :goto_9
.end method

.method findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;
    .registers 16
    .parameter "keyCode"
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x43

    .line 769
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v7

    .line 770
    .local v7, qwerty:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 771
    .local v5, metaState:I
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 773
    .local v6, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 775
    .local v2, isKeyCodeMapped:Z
    if-nez v2, :cond_19

    if-eq p1, v12, :cond_19

    .line 776
    const/4 v10, 0x0

    .line 800
    :goto_18
    return-object v10

    .line 779
    :cond_19
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 781
    .local v4, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 782
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v0, :cond_77

    .line 783
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 784
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v10

    if-eqz v10, :cond_42

    .line 785
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;

    move-result-object v9

    .line 787
    .local v9, subMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 789
    .end local v9           #subMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_42
    if-eqz v7, :cond_71

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v10

    move v8, v10

    .line 790
    .local v8, shortcutChar:C
    :goto_49
    and-int/lit8 v10, v5, 0x5

    if-nez v10, :cond_6e

    if-eqz v8, :cond_6e

    iget-object v10, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    if-eq v8, v10, :cond_65

    iget-object v10, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-eq v8, v10, :cond_65

    if-eqz v7, :cond_6e

    const/16 v10, 0x8

    if-ne v8, v10, :cond_6e

    if-ne p1, v12, :cond_6e

    :cond_65
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 797
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 789
    .end local v8           #shortcutChar:C
    :cond_71
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v10

    move v8, v10

    goto :goto_49

    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_77
    move-object v10, v4

    .line 800
    goto :goto_18
.end method

.method public getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderTitleId()I
    .registers 2

    .prologue
    .line 1059
    iget v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitleId:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public getMenuAdapter(I)Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    .registers 3
    .parameter "menuType"

    .prologue
    .line 1097
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;I)V

    return-object v0
.end method

.method getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    .registers 4
    .parameter "menuType"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, p1

    if-nez v0, :cond_f

    .line 300
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;-><init>(Lcom/android/internal/view/menu/MenuBuilder;I)V

    aput-object v1, v0, p1

    .line 303
    :cond_f
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "menuType"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 324
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, v1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 326
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    .line 329
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    .prologue
    .line 1076
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 944
    :goto_6
    return-object v3

    .line 933
    :cond_7
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 935
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 937
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v2, :cond_2b

    .line 938
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 939
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 942
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2b
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 944
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_6
.end method

.method public hasVisibleItems()Z
    .registers 5

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 570
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_1a

    .line 571
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 572
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 573
    const/4 v3, 0x1

    .line 577
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_16
    return v3

    .line 570
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 577
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method isQwertyMode()Z
    .registers 2

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 643
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 926
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 927
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 4
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 9
    .parameter "item"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 855
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v2, v0

    .line 857
    .local v2, itemImpl:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    move v3, v4

    .line 877
    .end local p0
    :goto_f
    return v3

    .line 861
    .restart local p0
    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 863
    .local v1, invoked:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 864
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 866
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    if-eqz v3, :cond_32

    .line 868
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-interface {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    if-nez v3, :cond_31

    if-eqz v1, :cond_34

    :cond_31
    move v1, v5

    :cond_32
    :goto_32
    move v3, v1

    .line 877
    goto :goto_f

    :cond_34
    move v1, v4

    .line 868
    goto :goto_32

    .line 872
    .restart local p0
    :cond_36
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_32

    .line 873
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_32
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 749
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 751
    .local v0, handled:Z
    if-eqz v1, :cond_b

    .line 752
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 755
    :cond_b
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_13

    .line 756
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 759
    :cond_13
    return v0
.end method

.method public removeGroup(I)V
    .registers 8
    .parameter "group"

    .prologue
    const/4 v5, 0x0

    .line 460
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 462
    .local v0, i:I
    if-ltz v0, :cond_2b

    .line 463
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 464
    .local v1, maxRemovable:I
    const/4 v2, 0x0

    .local v2, numRemoved:I
    move v3, v2

    .line 465
    .end local v2           #numRemoved:I
    .local v3, numRemoved:I
    :goto_11
    add-int/lit8 v2, v3, 0x1

    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    if-ge v3, v1, :cond_28

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 467
    invoke-direct {p0, v0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2           #numRemoved:I
    .restart local v3       #numRemoved:I
    goto :goto_11

    .line 471
    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    :cond_28
    invoke-direct {p0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 473
    .end local v1           #maxRemovable:I
    .end local v2           #numRemoved:I
    :cond_2b
    return-void
.end method

.method public removeItem(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 457
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 494
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 495
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "inState"

    .prologue
    .line 1127
    const-string v3, "android:views"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;

    .line 1131
    .local v2, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 1132
    .local v1, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v0, 0x2

    .end local p0
    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_29

    .line 1133
    aget-object v3, v1, v0

    if-nez v3, :cond_14

    .line 1132
    :cond_11
    :goto_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1137
    :cond_14
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1138
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_11

    .line 1141
    :cond_29
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 1109
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1111
    .local v2, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 1112
    .local v1, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v0, 0x2

    .end local p0
    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_26

    .line 1113
    aget-object v3, v1, v0

    if-nez v3, :cond_11

    .line 1112
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1117
    :cond_11
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1118
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_e

    .line 1122
    :cond_26
    const-string v3, "android:views"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1123
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 296
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2
    .parameter "menuInfo"

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1088
    return-void
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 512
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 514
    .local v2, group:I
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 515
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v0, :cond_33

    .line 516
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 517
    .local v1, curItem:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_21

    .line 518
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_24

    .line 515
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 519
    :cond_24
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 522
    if-ne v1, p1, :cond_31

    const/4 v4, 0x1

    :goto_2d
    invoke-virtual {v1, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_21

    :cond_31
    const/4 v4, 0x0

    goto :goto_2d

    .line 525
    .end local v1           #curItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_33
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 528
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 530
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 531
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 532
    .local v2, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 533
    invoke-virtual {v2, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 534
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 530
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 537
    .end local v2           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_20
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 557
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 559
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 560
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 561
    .local v2, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 562
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 559
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 565
    .end local v2           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 540
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 545
    .local v0, N:I
    const/4 v1, 0x0

    .line 546
    .local v1, changedAtLeastOneItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_22

    .line 547
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 548
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1f

    .line 549
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v1, 0x1

    .line 546
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 553
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_22
    if-eqz v1, :cond_28

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 554
    :cond_28
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "iconRes"

    .prologue
    const/4 v2, 0x0

    .line 1036
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1037
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1024
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1025
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "titleRes"

    .prologue
    const/4 v2, 0x0

    .line 1012
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1013
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1000
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1001
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1048
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1049
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 1101
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1102
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 3
    .parameter "isQwerty"

    .prologue
    .line 647
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    .line 650
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 4
    .parameter "shortcutsVisible"

    .prologue
    const/4 v1, 0x1

    .line 707
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_6

    .line 714
    :goto_5
    return-void

    .line 709
    :cond_6
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_1f

    if-eqz p1, :cond_1f

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 713
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    goto :goto_5

    .line 709
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public size()I
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
