.class Landroid/media/Ringtone$1;
.super Ljava/lang/Object;
.source "Ringtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 77
    invoke-static {}, Landroid/media/Ringtone;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnCompletionListener before  to set Ringtone Stop Mode Normal "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    .line 80
    invoke-static {}, Landroid/media/Ringtone;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnCompletionListener to set Ringtone Stop Mode Normal "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 84
    :cond_36
    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/media/Ringtone;->access$200(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 85
    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/media/Ringtone;->access$200(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 87
    :cond_48
    return-void
.end method
