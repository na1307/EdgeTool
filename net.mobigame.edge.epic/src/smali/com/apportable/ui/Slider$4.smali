.class Lcom/apportable/ui/Slider$4;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Slider;->setProgressImage(Landroid/graphics/drawable/ClipDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Slider;

.field final synthetic val$drawable:Landroid/graphics/drawable/ClipDrawable;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Slider;Landroid/graphics/drawable/ClipDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/apportable/ui/Slider$4;->this$0:Lcom/apportable/ui/Slider;

    iput-object p2, p0, Lcom/apportable/ui/Slider$4;->val$drawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/apportable/ui/Slider$4;->this$0:Lcom/apportable/ui/Slider;

    iget-object v1, p0, Lcom/apportable/ui/Slider$4;->val$drawable:Landroid/graphics/drawable/ClipDrawable;

    #calls: Lcom/apportable/ui/Slider;->_setProgressImage(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1}, Lcom/apportable/ui/Slider;->access$200(Lcom/apportable/ui/Slider;Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method