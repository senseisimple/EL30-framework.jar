.class Landroid/webkit/WebView$InvokeListBox;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeListBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;,
        Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;,
        Landroid/webkit/WebView$InvokeListBox$Container;
    }
.end annotation


# instance fields
.field private mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

.field private mInputFieldAction:I

.field private mMultiple:Z

.field private mSelectedArray:[I

.field private mSelection:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[III)V
    .registers 11
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selection"
    .parameter "action"

    .prologue
    .line 10023
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10024
    iput p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    .line 10025
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 10027
    iput p5, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    .line 10029
    array-length v1, p2

    .line 10030
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 10031
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_37

    .line 10032
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 10033
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 10034
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 10035
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 10031
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 10037
    :cond_37
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[IIILandroid/webkit/WebView$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 9865
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[III)V

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[II)V
    .registers 11
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selected"
    .parameter "action"

    .prologue
    .line 10006
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10007
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 10008
    iput-object p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    .line 10010
    iput p5, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    .line 10012
    array-length v1, p2

    .line 10013
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 10014
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_37

    .line 10015
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 10016
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 10017
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 10018
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 10014
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 10020
    :cond_37
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[IILandroid/webkit/WebView$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 9865
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[II)V

    return-void
.end method

.method static synthetic access$13400(Landroid/webkit/WebView$InvokeListBox;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 9865
    iget v0, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    return v0
.end method

.method static synthetic access$13500(Landroid/webkit/WebView$InvokeListBox;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 9865
    iget-boolean v0, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    return v0
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 10085
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090084

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 10087
    .local v4, listView:Landroid/widget/ListView;
    new-instance v5, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13100(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    iget-boolean v3, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    invoke-direct {v5, p0, v1, v2, v3}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/content/Context;[Landroid/webkit/WebView$InvokeListBox$Container;Z)V

    .line 10091
    .local v5, adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
    const/4 v9, 0x1

    .line 10092
    .local v9, rebuildDialog:Z
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    if-nez v1, :cond_41

    .line 10093
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebSelectDialog;

    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$13300(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebSelectDialog;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$13202(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;

    .line 10094
    const/4 v9, 0x0

    .line 10096
    :cond_41
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v6

    .line 10097
    .local v6, dialog:Landroid/webkit/WebSelectDialog;
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSelectDialog;->setListView(Landroid/widget/ListView;)V

    .line 10099
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_c9

    .line 10100
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 10101
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebView$InvokeListBox$1;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$1;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v10, v2}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 10126
    :goto_6d
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mInputFieldAction:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_d3

    .line 10127
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v12, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 10128
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebView$InvokeListBox$2;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$2;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v12, v2}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 10153
    :goto_8a
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v13, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 10154
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebView$InvokeListBox$3;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$3;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v13, v2}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 10192
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10193
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 10196
    invoke-virtual {v4, v11}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 10204
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-nez v1, :cond_dd

    move v1, v10

    :goto_af
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 10205
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_df

    .line 10206
    invoke-virtual {v4, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 10207
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    array-length v8, v1

    .line 10208
    .local v8, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_bd
    if-ge v7, v8, :cond_108

    .line 10209
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    aget v1, v1, v7

    invoke-virtual {v4, v1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 10208
    add-int/lit8 v7, v7, 0x1

    goto :goto_bd

    .line 10123
    .end local v7           #i:I
    .end local v8           #length:I
    :cond_c9
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_6d

    .line 10150
    :cond_d3
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v12, v11}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_8a

    :cond_dd
    move v1, v11

    .line 10204
    goto :goto_af

    .line 10212
    :cond_df
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$4;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10220
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_108

    .line 10221
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 10222
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 10223
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 10224
    new-instance v0, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;

    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v5, v1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkit/WebView$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 10226
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v5, v0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 10229
    .end local v0           #observer:Landroid/database/DataSetObserver;
    :cond_108
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$5;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$5;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v6, v1}, Landroid/webkit/WebSelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 10245
    if-ne v9, v10, :cond_126

    .line 10246
    invoke-virtual {v6}, Landroid/webkit/WebSelectDialog;->rebuildView()V

    .line 10247
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10251
    :cond_126
    invoke-virtual {v6}, Landroid/webkit/WebSelectDialog;->show()V

    .line 10253
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z
    invoke-static {v1, v10}, Landroid/webkit/WebView;->access$7702(Landroid/webkit/WebView;Z)Z

    .line 10254
    return-void
.end method
