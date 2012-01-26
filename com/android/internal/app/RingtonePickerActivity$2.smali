.class Lcom/android/internal/app/RingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/RingtonePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    iget-object v2, v2, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 220
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1d

    if-eqz p2, :cond_1d

    .line 221
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 222
    .local v1, position:I
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const/16 v3, 0x12c

    #calls: Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v2, v1, v3}, Lcom/android/internal/app/RingtonePickerActivity;->access$100(Lcom/android/internal/app/RingtonePickerActivity;II)V

    .line 225
    .end local v1           #position:I
    :cond_1d
    return-void
.end method
