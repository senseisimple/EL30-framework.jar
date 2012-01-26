.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 9041
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 57
    .parameter "msg"

    .prologue
    .line 9058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    if-nez v5, :cond_c

    .line 9844
    .end local p0
    .end local p1
    :cond_b
    :goto_b
    return-void

    .line 9062
    .restart local p0
    .restart local p1
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_1252

    .line 9841
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_b

    .line 9064
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v5}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "username"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "password"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9068
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b

    .line 9072
    .restart local p0
    :sswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v5}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9074
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b

    .line 9080
    .restart local p0
    :sswitch_74
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_85

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_97

    :cond_85
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 9084
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v8}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_b

    .line 9092
    :sswitch_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_110

    .line 9093
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_105

    .line 9094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x4

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    .line 9095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)V

    goto/16 :goto_b

    .line 9099
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x5

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_b

    .line 9101
    :cond_110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_b

    .line 9102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_b

    .line 9110
    :sswitch_127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v23

    .line 9112
    .local v23, hitTest:Landroid/webkit/WebView$HitTestResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_198

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mAutoSelection:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_198

    if-eqz v23, :cond_154

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static/range {v23 .. v23}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-nez v5, :cond_198

    .line 9115
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v14

    .line 9116
    .local v14, contentX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v15

    .line 9120
    .local v15, contentY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->selectClosestWord(II)V
    invoke-static {v5, v14, v15}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;II)V

    goto/16 :goto_b

    .line 9126
    .end local v14           #contentX:I
    .end local v15           #contentY:I
    :cond_198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_1ae

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_24d

    .line 9127
    :cond_1ae
    new-instance v42, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v42 .. v42}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 9128
    .local v42, ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x100

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 9129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 9130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 9135
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 9136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, v42

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 9137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_239

    .line 9138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 9139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 9141
    :cond_239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 9142
    .end local v42           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_24d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    .line 9143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    .line 9144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    .line 9145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_b

    .line 9150
    .end local v23           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :sswitch_272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doShortPress()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;)V

    goto/16 :goto_b

    .line 9154
    :sswitch_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    #calls: Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;IIZ)Z

    goto/16 :goto_b

    .line 9157
    .restart local p0
    :sswitch_29c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mUserScroll:Z

    if-eqz v5, :cond_2af

    .line 9160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_b

    .line 9165
    :cond_2af
    :sswitch_2af
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mUserScroll:Z

    .line 9170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x83

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_b

    .line 9175
    :sswitch_2e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->spawnContentScrollTo(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5400(Landroid/webkit/WebView;II)V

    goto/16 :goto_b

    .line 9178
    :sswitch_2fa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/webkit/WebViewCore$RestoreState;

    .line 9181
    .local v38, restoreState:Landroid/webkit/WebViewCore$RestoreState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v38

    move v2, v6

    move v3, v7

    move v4, v8

    #calls: Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    goto/16 :goto_b

    .line 9188
    .end local v38           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    :sswitch_321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_33e

    .line 9189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5602(Landroid/webkit/WebView;Z)Z

    .line 9190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->nativeSetRootLayer(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;I)V

    .line 9192
    :cond_33e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v40

    .line 9194
    .local v40, settings:Landroid/webkit/WebSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v51

    .line 9195
    .local v51, viewWidth:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/webkit/WebViewCore$DrawData;

    .line 9197
    .local v19, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object/from16 v50, v0

    .line 9198
    .local v50, viewSize:Landroid/graphics/Point;
    invoke-virtual/range {v40 .. v40}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v47

    .line 9199
    .local v47, useWideViewport:Z
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    move-object/from16 v38, v0

    .line 9200
    .restart local v38       #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    if-eqz v38, :cond_5af

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 9201
    .local v21, hasRestoreState:Z
    :goto_371
    if-eqz v21, :cond_41f

    .line 9202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v7, v0

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, v38

    move v2, v6

    move v3, v7

    move v4, v8

    #calls: Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    .line 9204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDrawHistory:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_41f

    .line 9205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 9207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v5

    if-lez v5, :cond_5b7

    .line 9208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5b4

    const/4 v7, 0x1

    :goto_3d5
    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 9232
    :cond_3da
    :goto_3da
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreserveZoom:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_3f7

    .line 9233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v6, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollY:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;II)Z

    .line 9240
    :cond_3f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 9242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->dismissWebSelectDialog()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)V

    .line 9244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v5

    if-eqz v5, :cond_41f

    .line 9245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)V

    .line 9253
    :cond_41f
    move-object/from16 v0, v50

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v5, v6, :cond_660

    move-object/from16 v0, v50

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v5, v6, :cond_660

    const/4 v5, 0x1

    move/from16 v46, v5

    .line 9255
    .local v46, updateLayout:Z
    :goto_43e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v8}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)Z

    move-result v8

    if-eqz v8, :cond_665

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mFindHeight:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)I

    move-result v8

    :goto_465
    add-int/2addr v7, v8

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v46

    #calls: Landroid/webkit/WebView;->recordNewContentSize(IIZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;IIZ)V

    .line 9263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    #calls: Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 9265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v5, :cond_4a5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4a5

    .line 9267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/webkit/OnPinchZoomListener;->onUpdateContents(Landroid/graphics/Region;)V

    .line 9270
    :cond_4a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    if-eqz v5, :cond_4ca

    .line 9271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 9273
    :cond_4ca
    if-eqz v47, :cond_4fc

    .line 9278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    sget v6, Landroid/webkit/WebView;->sMaxViewportWidth:I

    move/from16 v0, v51

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mDefaultScale:F
    invoke-static {v8}, Landroid/webkit/WebView;->access$6700(Landroid/webkit/WebView;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v8, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 9283
    :cond_4fc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMinZoomScaleFixed:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_51c

    .line 9284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    #setter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$1902(Landroid/webkit/WebView;F)F

    .line 9286
    :cond_51c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDrawHistory:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_586

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_586

    .line 9289
    move/from16 v0, v51

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mInvActualScale:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_586

    .line 9291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Landroid/webkit/WebView;->access$2700()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_668

    const/4 v7, 0x1

    :goto_581
    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 9297
    :cond_586
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    move v5, v0

    if-eqz v5, :cond_5a1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_5a1

    .line 9298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mFocusSizeChanged:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7002(Landroid/webkit/WebView;Z)Z

    .line 9300
    :cond_5a1
    if-eqz v21, :cond_b

    .line 9301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v5}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    goto/16 :goto_b

    .line 9200
    .end local v21           #hasRestoreState:Z
    .end local v46           #updateLayout:Z
    :cond_5af
    const/4 v5, 0x0

    move/from16 v21, v5

    goto/16 :goto_371

    .line 9208
    .restart local v21       #hasRestoreState:Z
    :cond_5b4
    const/4 v7, 0x0

    goto/16 :goto_3d5

    .line 9211
    :cond_5b7
    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5df

    .line 9212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move v6, v0

    iput v6, v5, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 9213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto/16 :goto_3da

    .line 9216
    :cond_5df
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    if-eqz v47, :cond_655

    invoke-virtual/range {v40 .. v40}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_655

    const/4 v6, 0x1

    :goto_5ed
    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 9219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_657

    .line 9220
    move/from16 v0, v51

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4448

    div-float v39, v5, v6

    .line 9225
    .local v39, scale:F
    :goto_600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreserveZoom:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_3da

    .line 9226
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZoomScale 3 mPreserveZoom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mPreserveZoom:Z
    invoke-static {v7}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float v6, v39, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {}, Landroid/webkit/WebView;->access$2700()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_65e

    const/4 v6, 0x1

    :goto_648
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move/from16 v1, v39

    move v2, v6

    move v3, v7

    move-object v4, v8

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto/16 :goto_3da

    .line 9216
    .end local v39           #scale:F
    :cond_655
    const/4 v6, 0x0

    goto :goto_5ed

    .line 9223
    :cond_657
    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move/from16 v39, v0

    .restart local v39       #scale:F
    goto :goto_600

    .line 9227
    :cond_65e
    const/4 v6, 0x0

    goto :goto_648

    .line 9253
    .end local v39           #scale:F
    :cond_660
    const/4 v5, 0x0

    move/from16 v46, v5

    goto/16 :goto_43e

    .line 9255
    .restart local v46       #updateLayout:Z
    :cond_665
    const/4 v8, 0x0

    goto/16 :goto_465

    .line 9291
    :cond_668
    const/4 v7, 0x0

    goto/16 :goto_581

    .line 9307
    .end local v19           #draw:Landroid/webkit/WebViewCore$DrawData;
    .end local v21           #hasRestoreState:Z
    .end local v38           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    .end local v40           #settings:Landroid/webkit/WebSettings;
    .end local v46           #updateLayout:Z
    .end local v47           #useWideViewport:Z
    .end local v50           #viewSize:Landroid/graphics/Point;
    .end local v51           #viewWidth:I
    :sswitch_66b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebView;->nativeCreate(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;I)V

    goto/16 :goto_b

    .line 9312
    :sswitch_67a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9314
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e0

    .line 9315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v44

    .line 9316
    .local v44, text:Landroid/text/Spannable;
    invoke-static/range {v44 .. v44}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v41

    .line 9317
    .local v41, start:I
    invoke-static/range {v44 .. v44}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v20

    .line 9318
    .local v20, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 9321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v34

    .line 9323
    .local v34, pword:Landroid/text/Spannable;
    move-object/from16 v0, v34

    move/from16 v1, v41

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_b

    .line 9326
    .end local v20           #end:I
    .end local v34           #pword:Landroid/text/Spannable;
    .end local v41           #start:I
    .end local v44           #text:Landroid/text/Spannable;
    :cond_6e0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mTextGeneration:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;)I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 9327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 9333
    .restart local p0
    :sswitch_709
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;Z)V

    .line 9334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_b

    .line 9341
    .restart local p0
    :sswitch_733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 9342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_b

    .line 9346
    .restart local p0
    :sswitch_75c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 9349
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v24

    .line 9354
    .local v24, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_b

    .line 9360
    .end local v24           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p1
    :sswitch_7bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    #calls: Landroid/webkit/WebView;->navHandledKey(IIZJ)Z
    invoke-static/range {v5 .. v10}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_b

    .line 9365
    :sswitch_7ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->selectionDone()V

    .line 9366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_800

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->nativeCursorIsTextInput()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_800

    .line 9367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 9368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 9371
    :cond_800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mFocusedNodePointer:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)I

    move-result v7

    #calls: Landroid/webkit/WebView;->nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v36

    .line 9374
    .local v36, rect:Landroid/graphics/Rect;
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select Control "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v36

    move v2, v6

    #calls: Landroid/webkit/WebView;->requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;Landroid/graphics/Rect;Z)V

    goto/16 :goto_b

    .line 9380
    .end local v36           #rect:Landroid/graphics/Rect;
    :sswitch_852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    goto/16 :goto_b

    .line 9383
    :sswitch_85d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/graphics/Rect;

    .line 9384
    .local v35, r:Landroid/graphics/Rect;
    if-nez v35, :cond_871

    .line 9385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_b

    .line 9389
    :cond_871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_b

    .line 9394
    .end local v35           #r:Landroid/graphics/Rect;
    :sswitch_88f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_b

    .line 9398
    :sswitch_899
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_8ab

    .line 9402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5602(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_b

    .line 9404
    :cond_8ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5602(Landroid/webkit/WebView;Z)Z

    .line 9405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebView;->nativeSetRootLayer(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;I)V

    .line 9406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_b

    .line 9411
    :sswitch_8cb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .line 9412
    .local v13, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_b

    .line 9417
    .end local v13           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :sswitch_8f4
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 9418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_b

    .line 9424
    :sswitch_905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mGotCenterDown:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8302(Landroid/webkit/WebView;Z)Z

    .line 9425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mTrackballDown:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8402(Landroid/webkit/WebView;Z)Z

    .line 9426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_b

    .line 9432
    :sswitch_921
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-eqz v5, :cond_97b

    .line 9433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_979

    const/4 v6, 0x1

    :goto_935
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8502(Landroid/webkit/WebView;Z)Z

    .line 9437
    :goto_938
    const-string v5, "1"

    const-string v6, "debug.browser.noforwardevt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98e

    .line 9438
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mForwardTouchEvents should be: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z
    invoke-static {v7}, Landroid/webkit/WebView;->access$8500(Landroid/webkit/WebView;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents_others:Z
    invoke-static {v8}, Landroid/webkit/WebView;->access$8600(Landroid/webkit/WebView;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but is hard coded to 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 9433
    :cond_979
    const/4 v6, 0x0

    goto :goto_935

    .line 9435
    :cond_97b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_98c

    const/4 v6, 0x1

    :goto_988
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents_others:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8602(Landroid/webkit/WebView;Z)Z

    goto :goto_938

    :cond_98c
    const/4 v6, 0x0

    goto :goto_988

    .line 9442
    :cond_98e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z
    invoke-static {v6}, Landroid/webkit/WebView;->access$8500(Landroid/webkit/WebView;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents_others:Z
    invoke-static {v7}, Landroid/webkit/WebView;->access$8600(Landroid/webkit/WebView;)Z

    move-result v7

    or-int/2addr v6, v7

    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_b

    .line 9452
    :sswitch_9ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 9455
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-nez v5, :cond_a08

    .line 9456
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_9e2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9e2

    .line 9461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9e0

    const/4 v6, 0x3

    :goto_9dc
    iput v6, v5, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_b

    :cond_9e0
    const/4 v6, 0x2

    goto :goto_9dc

    .line 9463
    :cond_9e2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 9468
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a06

    const/4 v6, 0x3

    :goto_a02
    iput v6, v5, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_b

    :cond_a06
    const/4 v6, 0x0

    goto :goto_a02

    .line 9471
    :cond_a08
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-nez v5, :cond_b

    .line 9474
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkit/WebViewCore$TouchEventData;

    .line 9475
    .restart local v42       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v5, v0

    sparse-switch v5, :sswitch_data_1308

    goto/16 :goto_b

    .line 9477
    :sswitch_a21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8802(Landroid/webkit/WebView;F)F

    .line 9478
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8902(Landroid/webkit/WebView;F)F

    .line 9479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9002(Landroid/webkit/WebView;I)I

    goto/16 :goto_b

    .line 9483
    :sswitch_a46
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a7d

    .line 9484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x3

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9002(Landroid/webkit/WebView;I)I

    .line 9485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8802(Landroid/webkit/WebView;F)F

    .line 9486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8902(Landroid/webkit/WebView;F)F

    .line 9487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->startDrag()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)V

    .line 9489
    :cond_a7d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Landroid/webkit/WebView;->pinLocX(I)I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v17, v5, v6

    .line 9492
    .local v17, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$9500(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Landroid/webkit/WebView;->pinLocY(I)I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v18, v5, v6

    .line 9495
    .local v18, deltaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    #calls: Landroid/webkit/WebView;->doDrag(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$9800(Landroid/webkit/WebView;II)V

    .line 9496
    if-eqz v17, :cond_af7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8802(Landroid/webkit/WebView;F)F

    .line 9497
    :cond_af7
    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8902(Landroid/webkit/WebView;F)F

    goto/16 :goto_b

    .line 9502
    .end local v17           #deltaX:I
    .end local v18           #deltaY:I
    :sswitch_b08
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b5d

    .line 9504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v5}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)Landroid/widget/OverScroller;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$9900(Landroid/webkit/WebView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$10000(Landroid/webkit/WebView;)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    #calls: Landroid/webkit/WebView;->computeMaxScrollX()I
    invoke-static {v9}, Landroid/webkit/WebView;->access$10100(Landroid/webkit/WebView;)I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v11, v0

    #calls: Landroid/webkit/WebView;->computeMaxScrollY()I
    invoke-static {v11}, Landroid/webkit/WebView;->access$10200(Landroid/webkit/WebView;)I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 9507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 9508
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 9509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 9511
    :cond_b5d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9002(Landroid/webkit/WebView;I)I

    goto/16 :goto_b

    .line 9515
    :sswitch_b68
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3702(Landroid/webkit/WebView;F)F

    .line 9516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3902(Landroid/webkit/WebView;F)F

    .line 9517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doDoubleTap()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;)V

    .line 9518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9002(Landroid/webkit/WebView;I)I

    goto/16 :goto_b

    .line 9521
    :sswitch_b95
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v23

    .line 9522
    .restart local v23       #hitTest:Landroid/webkit/WebView$HitTestResult;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v6

    if-eq v5, v6, :cond_bb6

    if-eqz v23, :cond_bc6

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static/range {v23 .. v23}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-eqz v5, :cond_bc6

    .line 9524
    :cond_bb6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    .line 9525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 9527
    :cond_bc6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9002(Landroid/webkit/WebView;I)I

    goto/16 :goto_b

    .line 9534
    .end local v23           #hitTest:Landroid/webkit/WebView$HitTestResult;
    .end local v42           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_bd1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_be2

    .line 9535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$10500(Landroid/webkit/WebView;)V

    goto/16 :goto_b

    .line 9538
    :cond_be2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-nez v5, :cond_bf4

    .line 9539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;Z)V

    goto/16 :goto_b

    .line 9541
    :cond_bf4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;Z)V

    goto/16 :goto_b

    .line 9548
    :sswitch_bff
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/WebView;->access$10600(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto/16 :goto_b

    .line 9554
    :sswitch_c1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x2

    #setter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$10702(Landroid/webkit/WebView;I)I

    .line 9555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 9559
    :sswitch_c2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$10700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 9561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    const/4 v7, 0x0

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$10800(Landroid/webkit/WebView;IZ)Z

    .line 9563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 9570
    :sswitch_c71
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->doMotionUp(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$10900(Landroid/webkit/WebView;II)V

    goto/16 :goto_b

    .line 9574
    :sswitch_c85
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/view/View;

    .line 9575
    .local v48, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 9577
    .local v31, npp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v5, :cond_cae

    .line 9578
    const-string/jumbo v5, "webview"

    const-string v6, "Should not have another full screen."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    .line 9581
    :cond_cae
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    new-instance v6, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;I)V

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 9582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 9583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCancelable(Z)V

    .line 9584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCanceledOnTouchOutside(Z)V

    .line 9585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_b

    .line 9590
    .end local v31           #npp:I
    .end local v48           #view:Landroid/view/View;
    :sswitch_cf2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    .line 9592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    goto/16 :goto_b

    .line 9597
    :sswitch_d11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 9599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 9600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_b

    .line 9605
    :sswitch_d37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/webkit/WebViewCore$ShowRectData;

    .line 9607
    .local v16, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHasAnchorDiff:Z

    move v5, v0

    if-eqz v5, :cond_d55

    .line 9608
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 9609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 9612
    :cond_d55
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)I

    move-result v53

    .line 9613
    .local v53, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v25

    .line 9614
    .local v25, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v52

    .line 9615
    .local v52, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v27

    .line 9616
    .local v27, maxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v51

    .line 9618
    .restart local v51       #viewWidth:I
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHasAnchorDiff:Z

    move v5, v0

    if-eqz v5, :cond_e70

    .line 9619
    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mOldAnchorX:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v32, v0

    .line 9620
    .local v32, oldAnchorX:F
    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mNewAnchorX:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v28, v0

    .line 9621
    .local v28, newAnchorX:F
    sub-float v5, v28, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v53, v53, v5

    .line 9640
    .end local v28           #newAnchorX:F
    .end local v32           #oldAnchorX:F
    :goto_db9
    const/4 v5, 0x0

    add-int v6, v53, v51

    move/from16 v0, v27

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v51

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v53

    .line 9642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v45

    .line 9643
    .local v45, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v22

    .line 9644
    .local v22, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v26

    .line 9645
    .local v26, maxHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v49

    .line 9647
    .local v49, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$11300(Landroid/webkit/WebView;)I

    move-result v54

    .line 9648
    .local v54, y:I
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHasAnchorDiff:Z

    move v5, v0

    if-eqz v5, :cond_eb5

    .line 9649
    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mOldAnchorY:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v33, v0

    .line 9650
    .local v33, oldAnchorY:F
    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mNewAnchorY:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v29, v0

    .line 9651
    .local v29, newAnchorY:F
    sub-float v5, v29, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v54, v54, v5

    .line 9652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->getViewHeightWithTitle()I
    invoke-static {v5}, Landroid/webkit/WebView;->access$11400(Landroid/webkit/WebView;)I

    move-result v49

    .line 9653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    add-int v26, v26, v5

    .line 9668
    .end local v29           #newAnchorY:F
    .end local v33           #oldAnchorY:F
    :goto_e41
    const/4 v5, 0x0

    add-int v6, v54, v49

    move/from16 v0, v26

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v49

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v54

    .line 9672
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v6

    sub-int v6, v54, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v54

    .line 9673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_b

    .line 9624
    .end local v22           #height:I
    .end local v26           #maxHeight:I
    .end local v45           #top:I
    .end local v49           #viewHeight:I
    .end local v54           #y:I
    :cond_e70
    move/from16 v0, v52

    move/from16 v1, v51

    if-ge v0, v1, :cond_e8b

    .line 9626
    div-int/lit8 v5, v52, 0x2

    add-int v5, v5, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v51, 0x2

    sub-int/2addr v5, v6

    add-int v53, v53, v5

    goto/16 :goto_db9

    .line 9628
    :cond_e8b
    move/from16 v0, v25

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move v6, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$11200(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move v6, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v53, v53, v5

    goto/16 :goto_db9

    .line 9655
    .restart local v22       #height:I
    .restart local v26       #maxHeight:I
    .restart local v45       #top:I
    .restart local v49       #viewHeight:I
    .restart local v54       #y:I
    :cond_eb5
    move/from16 v0, v45

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move v6, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$11500(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move v6, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v54, v54, v5

    goto/16 :goto_e41

    .line 9678
    .end local v16           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v22           #height:I
    .end local v25           #left:I
    .end local v26           #maxHeight:I
    .end local v27           #maxWidth:I
    .end local v45           #top:I
    .end local v49           #viewHeight:I
    .end local v51           #viewWidth:I
    .end local v52           #width:I
    .end local v53           #x:I
    .end local v54           #y:I
    :sswitch_edf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/graphics/Rect;

    .line 9679
    .restart local v35       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 9680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebView;->centerFitRect(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$11600(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_b

    .line 9684
    .end local v35           #r:Landroid/graphics/Rect;
    :sswitch_f0b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mHorizontalScrollBarMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11702(Landroid/webkit/WebView;I)I

    .line 9685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mVerticalScrollBarMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11802(Landroid/webkit/WebView;I)I

    goto/16 :goto_b

    .line 9689
    :sswitch_f27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    #calls: Landroid/webkit/WebView;->doAdaptiveZoom(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$11900(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    goto/16 :goto_b

    .line 9693
    .restart local p0
    :sswitch_f3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mFocusedNodePointer:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)I

    move-result v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v30

    .line 9695
    .local v30, nextInputType:I
    if-nez v30, :cond_b

    .line 9699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 9704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 9705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 9707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x76

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b

    .line 9712
    .end local v30           #nextInputType:I
    :sswitch_f8f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkit/WebView$WebSelectRequest;

    .line 9713
    .local v37, req:Landroid/webkit/WebView$WebSelectRequest;
    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_fc2

    .line 9714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    move-object v7, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    move-object v8, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[I[ILjava/lang/String;I)V

    goto/16 :goto_b

    .line 9719
    :cond_fc2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    move-object v7, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[IILjava/lang/String;I)V

    goto/16 :goto_b

    .line 9725
    .end local v37           #req:Landroid/webkit/WebView$WebSelectRequest;
    :sswitch_fe8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->nativeClearCursor()V

    goto/16 :goto_b

    .line 9732
    :sswitch_ff2
    const/16 v43, 0x0

    .line 9733
    .local v43, tempCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v43, v0

    .line 9734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v0, p1

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 9736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v5, :cond_11b0

    .line 9748
    if-nez v43, :cond_10b9

    .line 9749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchSelectionHandler:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$12000(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_105d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v5, :cond_103d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_105d

    .line 9751
    :cond_103d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12100(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->show(II)V

    .line 9785
    :cond_105d
    :goto_105d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$12400(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_1071

    .line 9786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mWebSelectionOn:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12402(Landroid/webkit/WebView;Z)Z

    .line 9788
    :cond_1071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10af

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10af

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10af

    .line 9790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 9791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mWebSelectionOn:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12402(Landroid/webkit/WebView;Z)Z

    .line 9811
    :cond_10af
    :goto_10af
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_b

    .line 9752
    :cond_10b9
    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v6, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eq v5, v6, :cond_116b

    .line 9756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchSelectionHandler:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$12000(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1131

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v5, :cond_10eb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1131

    .line 9760
    :cond_10eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1103

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_110e

    .line 9762
    :cond_1103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mController:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12202(Landroid/webkit/WebView;I)I

    goto/16 :goto_105d

    .line 9763
    :cond_110e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1126

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_105d

    .line 9765
    :cond_1126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x2

    #setter for: Landroid/webkit/WebView;->mController:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12202(Landroid/webkit/WebView;I)I

    goto/16 :goto_105d

    .line 9767
    :cond_1131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_105d

    .line 9768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12100(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 9770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1160

    .line 9771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x6

    #setter for: Landroid/webkit/WebView;->mController:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12202(Landroid/webkit/WebView;I)I

    goto/16 :goto_105d

    .line 9773
    :cond_1160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x5

    #setter for: Landroid/webkit/WebView;->mController:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12202(Landroid/webkit/WebView;I)I

    goto/16 :goto_105d

    .line 9780
    :cond_116b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchSelectionHandler:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$12000(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_105d

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mbIsNewWordSelected:Z
    invoke-static {v6}, Landroid/webkit/WebView;->access$12300(Landroid/webkit/WebView;)Z

    move-result v6

    if-ne v5, v6, :cond_105d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_105d

    .line 9782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12100(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->show(II)V

    goto/16 :goto_105d

    .line 9797
    :cond_11b0
    if-eqz v43, :cond_11cd

    .line 9800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x8d

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9805
    :cond_11cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mWebSelectionOn:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12402(Landroid/webkit/WebView;Z)Z

    .line 9806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12100(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    goto/16 :goto_10af

    .line 9816
    .end local v43           #tempCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;
    .restart local p1
    :sswitch_11e4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12500(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 9818
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    .line 9823
    .local v12, Status:I
    const/16 v5, 0x8

    if-ne v12, v5, :cond_1243

    .line 9826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v5}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)Landroid/widget/OverScroller;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_121d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v5, :cond_1243

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1243

    .line 9829
    :cond_121d
    const-string/jumbo v5, "webview"

    const-string v6, "SELECTION_CONTROLS_NOTIFY still scrolling"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x8d

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x320

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 9835
    :cond_1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12500(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;

    move-result-object v5

    invoke-interface {v5, v12}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    goto/16 :goto_b

    .line 9062
    nop

    :sswitch_data_1252
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_50
        0x3 -> :sswitch_dc
        0x4 -> :sswitch_127
        0x5 -> :sswitch_272
        0x6 -> :sswitch_8cb
        0x7 -> :sswitch_8f4
        0x8 -> :sswitch_c1d
        0x9 -> :sswitch_c2e
        0xa -> :sswitch_74
        0x65 -> :sswitch_2af
        0x66 -> :sswitch_27c
        0x67 -> :sswitch_2e6
        0x68 -> :sswitch_29c
        0x69 -> :sswitch_321
        0x6a -> :sswitch_7ce
        0x6b -> :sswitch_66b
        0x6c -> :sswitch_67a
        0x6d -> :sswitch_2fa
        0x6e -> :sswitch_7bb
        0x6f -> :sswitch_852
        0x70 -> :sswitch_733
        0x71 -> :sswitch_d37
        0x72 -> :sswitch_905
        0x73 -> :sswitch_9ab
        0x74 -> :sswitch_921
        0x75 -> :sswitch_85d
        0x76 -> :sswitch_bd1
        0x77 -> :sswitch_c71
        0x78 -> :sswitch_c85
        0x79 -> :sswitch_cf2
        0x7a -> :sswitch_d11
        0x7b -> :sswitch_88f
        0x7c -> :sswitch_899
        0x7d -> :sswitch_75c
        0x7e -> :sswitch_bff
        0x7f -> :sswitch_edf
        0x80 -> :sswitch_709
        0x81 -> :sswitch_f0b
        0x82 -> :sswitch_f27
        0x83 -> :sswitch_f3c
        0x84 -> :sswitch_f8f
        0x85 -> :sswitch_fe8
        0x8c -> :sswitch_ff2
        0x8d -> :sswitch_11e4
    .end sparse-switch

    .line 9475
    :sswitch_data_1308
    .sparse-switch
        0x0 -> :sswitch_a21
        0x1 -> :sswitch_b08
        0x2 -> :sswitch_a46
        0x3 -> :sswitch_b08
        0x100 -> :sswitch_b95
        0x200 -> :sswitch_b68
    .end sparse-switch
.end method
