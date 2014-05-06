.class abstract Lcom/android/GLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Lcom/android/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/android/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/GLSurfaceView;[I)V
    .locals 1
    .parameter
    .parameter "configSpec"

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/GLSurfaceView$BaseConfigChooser;->this$0:Lcom/android/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    invoke-direct {p0, p2}, Lcom/android/GLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    .line 782
    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 5
    .parameter "configSpec"

    .prologue
    const/4 v4, 0x0

    .line 816
    iget-object v2, p0, Lcom/android/GLSurfaceView$BaseConfigChooser;->this$0:Lcom/android/GLSurfaceView;

    #getter for: Lcom/android/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/android/GLSurfaceView;->access$200(Lcom/android/GLSurfaceView;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 828
    .end local p1
    :goto_0
    return-object p1

    .line 822
    .restart local p1
    :cond_0
    array-length v0, p1

    .line 823
    .local v0, len:I
    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    .line 824
    .local v1, newConfigSpec:[I
    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x3040

    aput v3, v1, v2

    .line 826
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 827
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v1, v2

    move-object p1, v1

    .line 828
    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 785
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 786
    .local v5, num_config:[I
    iget-object v2, p0, Lcom/android/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_0
    aget v4, v5, v4

    .line 793
    .local v4, numConfigs:I
    if-gtz v4, :cond_1

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 799
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/android/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 801
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/GLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 804
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_3

    .line 805
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_3
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
