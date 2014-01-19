.class public Lcom/android/systemui/statusbar/StatusBarService;
.super Landroid/app/Service;
.source "StatusBarService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarService$MyTicker;,
        Lcom/android/systemui/statusbar/StatusBarService$Launcher;,
        Lcom/android/systemui/statusbar/StatusBarService$H;,
        Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;,
        Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;
    }
.end annotation


# instance fields
.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBrightNessContentObs:Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mEdgeBorder:I

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

.field mExpandedVisible:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

.field mIconPolicy:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field private mIsAutoBrightNess:Z

.field private mIsBrightNessMode:I

.field private mIsStatusBarBrightNess:Z

.field mLatest:Lcom/android/systemui/statusbar/NotificationData;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field mMiniCon:Landroid/widget/LinearLayout;

.field mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field mOngoing:Lcom/android/systemui/statusbar/NotificationData;

.field mOngoingItems:Landroid/widget/LinearLayout;

.field mOngoingTitle:Landroid/widget/TextView;

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPositionTmp:[I

.field private mPropFactor:Ljava/lang/Float;

.field mQueueLock:Ljava/lang/Object;

.field mScrollView:Landroid/widget/ScrollView;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mTicker:Lcom/android/systemui/statusbar/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBrightNessContentObs:Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;

    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 172
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    .line 204
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 206
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    .line 209
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 212
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    .line 854
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$1;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1681
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$3;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 1692
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$4;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1743
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$5;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    .line 1757
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$6;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsAutoBrightNess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->checkAutoBrightNess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/StatusBarService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updatePropFactorValue()V

    return-void
.end method

.method private checkAutoBrightNess()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1787
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private checkMinMax(I)I
    .locals 2
    .parameter "brightNess"

    .prologue
    .line 1792
    move v0, p1

    .line 1793
    .local v0, checkBrightNess:I
    const/16 v1, 0x1e

    if-le v1, v0, :cond_1

    .line 1794
    const/16 v0, 0x1e

    .line 1799
    :cond_0
    :goto_0
    return v0

    .line 1795
    :cond_1
    const/16 v1, 0xff

    if-ge v1, v0, :cond_0

    .line 1796
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private chooseIconIndex(ZZI)I
    .locals 4
    .parameter "isMiniCon"
    .parameter "isOngoing"
    .parameter "viewIndex"

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 605
    .local v0, latestSize:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    .line 607
    .local v1, ongoingSize:I
    if-eqz p1, :cond_0

    .line 608
    add-int v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v3

    sub-int/2addr v3, p3

    add-int/2addr v2, v3

    .line 612
    :goto_0
    return v2

    .line 609
    :cond_0
    if-eqz p2, :cond_1

    .line 610
    sub-int v2, v1, p3

    add-int/2addr v2, v0

    goto :goto_0

    .line 612
    :cond_1
    sub-int v2, v0, p3

    goto :goto_0
.end method

.method private doBrightNess(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPropFactor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->checkMinMax(I)I

    move-result v0

    .line 1809
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1812
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1814
    if-eqz v1, :cond_0

    .line 1815
    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    :cond_0
    :goto_0
    return-void

    .line 1817
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1364
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1365
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 1366
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1368
    :cond_0
    return-object v0
.end method

.method private makeExpandedVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 864
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 868
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 870
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 874
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandedView;->requestFocus(I)Z

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 878
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-nez v0, :cond_0

    .line 879
    const/high16 v0, 0x10a

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    goto :goto_0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0a0026

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 316
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x1050005

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    .line 318
    const v7, 0x7f030007

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandedView;

    .line 320
    .local v1, expanded:Lcom/android/systemui/statusbar/ExpandedView;
    iput-object p0, v1, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 322
    const v7, 0x7f030005

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarView;

    .line 323
    .local v5, sb:Lcom/android/systemui/statusbar/StatusBarView;
    iput-object p0, v5, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 326
    const/4 v7, -0x3

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 327
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 328
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 332
    :cond_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 333
    const v7, 0x7f0a001a

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 334
    const v7, 0x7f0a0019

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/IconMerger;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    .line 335
    const v7, 0x7f0a0018

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    .line 336
    const v7, 0x7f0a001c

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    .line 337
    const v7, 0x7f0a001f

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/DateView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    .line 339
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 340
    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    .line 341
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    .line 342
    const v7, 0x7f0a0028

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    .line 343
    const v7, 0x7f0a0029

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    .line 344
    const v7, 0x7f0a002a

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    .line 345
    const v7, 0x7f0a002b

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    .line 346
    const v7, 0x7f0a0027

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    .line 347
    const v7, 0x7f0a0024

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    .line 348
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v7, 0x7f0a0025

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    .line 350
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    .line 352
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 353
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;

    invoke-direct {v7, p0, p1, v5}, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 358
    const v7, 0x7f0a001e

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/TickerView;

    .line 359
    .local v6, tickerView:Lcom/android/systemui/statusbar/TickerView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    iput-object v7, v6, Lcom/android/systemui/statusbar/TickerView;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 361
    const v7, 0x7f03000a

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/TrackingView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    .line 362
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iput-object p0, v7, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 363
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v8, 0x7f0a0030

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    .line 364
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object p0, v7, Lcom/android/systemui/statusbar/CloseDragHandle;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 366
    const/high16 v7, 0x7f07

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 370
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    .line 373
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 374
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    const/4 v3, 0x0

    .line 387
    .local v3, qsv:Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;
    const v7, 0x7f030003

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #qsv:Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;
    check-cast v3, Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;

    .line 390
    .restart local v3       #qsv:Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v7, v3, v12}, Lcom/android/systemui/statusbar/ExpandedView;->addView(Landroid/view/View;I)V

    .line 394
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniCon:Landroid/widget/LinearLayout;

    .line 395
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniCon:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 396
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniCon:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 400
    const v7, 0x7f030006

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CallOnGoingView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    .line 401
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    iput-object p0, v7, Lcom/android/systemui/statusbar/CallOnGoingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 403
    return-void
.end method

.method private setAreThereNotifications()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 750
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v1

    .line 751
    .local v1, ongoing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v0

    .line 754
    .local v0, latest:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 760
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 761
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    .line 764
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 768
    :goto_3
    return-void

    .line 757
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 760
    goto :goto_1

    :cond_3
    move v3, v5

    .line 761
    goto :goto_2

    .line 766
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1296
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1297
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1302
    :cond_0
    return-void
.end method

.method private updatePropFactorValue()V
    .locals 2

    .prologue
    .line 1783
    const/high16 v0, 0x437f

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPropFactor:Ljava/lang/Float;

    .line 1784
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 436
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 438
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 439
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 3
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 459
    const/4 v1, 0x1

    .line 460
    .local v1, shouldTick:Z
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 461
    const/4 v1, 0x0

    .line 466
    :try_start_0
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 472
    .local v0, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v0, :cond_1

    .line 481
    :goto_1
    return-void

    .line 474
    :cond_1
    if-eqz v1, :cond_2

    .line 475
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 479
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 480
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_1

    .line 467
    .end local v0           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v7

    .line 664
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v8

    .line 665
    if-eqz v8, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    .line 667
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniCon:Landroid/widget/LinearLayout;

    move-object v9, v1

    .line 678
    :goto_0
    invoke-virtual {p0, p2, v9}, Lcom/android/systemui/statusbar/StatusBarService;->makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v1

    .line 679
    if-nez v1, :cond_2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    .line 682
    const/4 v0, 0x0

    .line 714
    :goto_1
    return-object v0

    .line 670
    :cond_0
    if-eqz v7, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object v9, v1

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 675
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object v9, v1

    goto :goto_0

    .line 684
    :cond_2
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 685
    const/4 v2, 0x1

    aget-object v4, v1, v2

    .line 686
    const/4 v2, 0x2

    aget-object v5, v1, v2

    .line 688
    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 690
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    iget-object v11, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->iconLevel:I

    iget-object v12, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->number:I

    invoke-direct {v1, v2, v10, v11, v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 692
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coulding create icon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v1, p1

    move-object v2, p2

    .line 697
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/StatusBarIconView;)I

    move-result v0

    .line 699
    if-eqz v8, :cond_4

    .line 702
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 703
    invoke-virtual {v9, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 711
    :goto_2
    invoke-direct {p0, v8, v7, v0}, Lcom/android/systemui/statusbar/StatusBarService;->chooseIconIndex(ZZI)I

    move-result v0

    .line 713
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    move-object v0, v6

    .line 714
    goto/16 :goto_1

    .line 708
    :cond_4
    invoke-virtual {v9, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2
.end method

.method protected addStatusBarView()V
    .locals 8

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 407
    .local v6, res:Landroid/content/res/Resources;
    const v1, 0x1050004

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 409
    .local v2, height:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 410
    .local v7, view:Lcom/android/systemui/statusbar/StatusBarView;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 417
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 418
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    const v1, 0x103006d

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/StatusBarView;->setVisibility(I)V

    .line 428
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    return-void
.end method

.method public animateCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 906
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, -0x8ae

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 910
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_2

    .line 922
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    .line 928
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 929
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 930
    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public animateExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 885
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 892
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 893
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0
.end method

.method public disable(I)V
    .locals 2
    .parameter

    .prologue
    .line 775
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 776
    xor-int/2addr v0, p1

    .line 777
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 779
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 780
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 785
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    .line 786
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 788
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    .line 805
    :cond_1
    :goto_0
    return-void

    .line 791
    :cond_2
    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 795
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 796
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 799
    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 800
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    goto :goto_0
.end method

.method doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 979
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 984
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 986
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 987
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 988
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performExpand()V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 992
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 993
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 994
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 997
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 998
    iget-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 999
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1025
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 1027
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 1028
    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1029
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1032
    iget-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1033
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "  mDisplayHeight="

    .line 1377
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    :goto_0
    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_0
    const-string v1, "Current Status Bar state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTicking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimVel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimAccel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurAnimationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimLastTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimatingReveal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mViewDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNoNotificationsTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTickerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScrollView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationLinearLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$2;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1415
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getExpandedHeight()I
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public grabScreen(IIJ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/high16 v8, -0x8000

    const/4 v7, 0x0

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredWidth()I

    move-result v0

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredHeight()I

    move-result v1

    .line 813
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 814
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 816
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {p2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarView;->measure(II)V

    .line 817
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Lcom/android/systemui/statusbar/StatusBarView;->layout(IIII)V

    .line 818
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/StatusBarView;->draw(Landroid/graphics/Canvas;)V

    .line 819
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->measure(II)V

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v1, v3}, Lcom/android/systemui/statusbar/StatusBarView;->layout(IIII)V

    .line 822
    return-object v2
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotification(Landroid/os/IBinder;)V

    .line 1313
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    :goto_0
    return-void

    .line 1314
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideCallOnGoingView()V
    .locals 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->removeView(Landroid/view/View;)V

    .line 1778
    return-void
.end method

.method incrementAnim()V
    .locals 7

    .prologue
    .line 1011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1012
    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    .line 1013
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1014
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1015
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1016
    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1017
    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1018
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1021
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/high16 v5, 0x4316

    const/4 v3, 0x0

    const/16 v8, 0x7d0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1134
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v7

    .line 1240
    :goto_0
    return v0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    .line 1139
    mul-int/lit8 v1, v0, 0x2

    .line 1140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    .line 1141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 1146
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v3, :cond_5

    .line 1147
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    .line 1152
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_1

    if-lt v2, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_3

    .line 1158
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 1159
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 1160
    if-lt v0, v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sub-int v1, v3, v1

    if-ge v0, v1, :cond_3

    .line 1161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_6

    move v0, v4

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1166
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v0, :cond_4

    .line 1167
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    .line 1168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsAutoBrightNess:Z

    if-nez v0, :cond_4

    .line 1169
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_3
    move v0, v7

    .line 1240
    goto :goto_0

    .line 1149
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/TrackingView;->getLocationOnScreen([I)V

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    aget v0, v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    goto :goto_1

    :cond_6
    move v0, v7

    .line 1161
    goto :goto_2

    .line 1174
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    if-eqz v1, :cond_4

    .line 1175
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1176
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 1178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 1179
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v2, :cond_8

    if-ge v1, v0, :cond_8

    .line 1181
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v0, :cond_4

    .line 1182
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    if-ne v0, v4, :cond_4

    .line 1183
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->doBrightNess(Landroid/view/MotionEvent;)V

    move v0, v7

    .line 1184
    goto/16 :goto_0

    .line 1190
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v0, :cond_9

    .line 1191
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsAutoBrightNess:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1195
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    if-ne v0, v4, :cond_a

    .line 1196
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    .line 1200
    :cond_a
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1201
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_3

    .line 1203
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 1212
    cmpg-float v1, v0, v3

    if-gez v1, :cond_10

    move v1, v4

    .line 1214
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 1215
    cmpg-float v3, v2, v3

    if-gez v3, :cond_c

    .line 1216
    neg-float v2, v2

    .line 1218
    :cond_c
    cmpl-float v3, v2, v5

    if-lez v3, :cond_d

    move v2, v5

    .line 1222
    :cond_d
    float-to-double v3, v0

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1223
    if-eqz v1, :cond_e

    .line 1224
    neg-float v0, v0

    .line 1228
    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v1, :cond_4

    .line 1229
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1230
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1232
    :cond_f
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    if-nez v1, :cond_4

    .line 1233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1, v0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto/16 :goto_3

    :cond_10
    move v1, v7

    .line 1212
    goto :goto_4
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 618
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 619
    iget-object v8, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 620
    if-nez v8, :cond_0

    move-object v1, v10

    .line 655
    :goto_0
    return-object v1

    .line 625
    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 626
    const v3, 0x7f030009

    invoke-virtual {v1, v3, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 629
    const v1, 0x7f0a002e

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    .line 630
    const/high16 v1, 0x6

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 631
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 632
    iget-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 633
    if-eqz v3, :cond_1

    .line 634
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    :cond_1
    :try_start_0
    invoke-virtual {v8, p0, v7}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    move-object v1, v10

    .line 646
    :goto_1
    if-nez v2, :cond_2

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    const-string v3, "StatusBarService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t inflate view for notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v10

    .line 649
    goto :goto_0

    .line 643
    :catch_0
    move-exception v1

    move-object v2, v10

    .line 644
    goto :goto_1

    .line 651
    :cond_2
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 652
    invoke-virtual {v9, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 655
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    aput-object v9, v1, v11

    aput-object v7, v1, v12

    const/4 v3, 0x2

    aput-object v2, v1, v3

    goto/16 :goto_0
.end method

.method onBarViewAttached()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1436
    const/4 v0, -0x3

    .line 1437
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1438
    if-eqz v2, :cond_0

    .line 1439
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    move v5, v0

    .line 1442
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1451
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1452
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1453
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1454
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 1456
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1457
    return-void

    :cond_0
    move v5, v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 242
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    .line 243
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    .line 246
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 247
    .local v3, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v4, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v5, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v7, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 250
    const-string v7, "statusbar"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 253
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v7, v8, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    .line 260
    .local v0, N:I
    const/4 v6, 0x0

    .line 261
    .local v6, viewIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 262
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    .line 263
    .local v2, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v6, v2}, Lcom/android/systemui/statusbar/StatusBarService;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 265
    add-int/lit8 v6, v6, 0x1

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    .end local v2           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 271
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v0, v7, :cond_2

    .line 272
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 273
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/StatusBarService;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 276
    :cond_2
    const-string v7, "StatusBarService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification list length mismatch: keys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->addStatusBarView()V

    .line 284
    new-instance v7, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    .line 287
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v7, :cond_4

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->checkAutoBrightNess()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsAutoBrightNess:Z

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBrightNessContentObs:Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updatePropFactorValue()V

    .line 295
    :cond_4
    return-void

    .line 254
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v6           #viewIndex:I
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method onTrackingViewAttached()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1465
    const/4 v0, -0x3

    .line 1467
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1468
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1469
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1471
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1472
    neg-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1473
    const/16 v1, 0x7de

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1474
    const/16 v1, 0x1328

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1479
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1480
    const/16 v1, 0x37

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1481
    const-string v1, "StatusBarExpanded"

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1482
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1483
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setFormat(I)V

    .line 1484
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 1486
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarView;->setVisibility(I)V

    .line 1500
    return-void
.end method

.method performCollapse()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 954
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 958
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 959
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 965
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 966
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 969
    const v0, 0x10a0001

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 972
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 975
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    goto :goto_0
.end method

.method performExpand()V
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 943
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 944
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x44fa

    const/high16 v1, 0x4348

    const/high16 v5, -0x3b06

    const/high16 v4, -0x3cb8

    const/4 v3, 0x0

    .line 1069
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    .line 1072
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1073
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1077
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_3

    .line 1078
    if-nez p3, :cond_2

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v2, 0x41c8

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    .line 1083
    :cond_0
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1084
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 1085
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1118
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1119
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1120
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->stopTracking()V

    .line 1126
    return-void

    .line 1090
    :cond_2
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1091
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 1092
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1096
    :cond_3
    if-nez p3, :cond_4

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_4

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpl-float v0, p2, v4

    if-lez v0, :cond_5

    .line 1101
    :cond_4
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1102
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 1103
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1109
    :cond_5
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1110
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 1111
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0
.end method

.method prepareTracking(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3e9

    const/16 v1, 0x3e8

    const/4 v4, 0x1

    .line 1040
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1041
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1042
    if-eqz p2, :cond_0

    .line 1043
    const/high16 v0, 0x44fa

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1044
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1046
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1047
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1048
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1051
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1052
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1053
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1054
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1057
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 1066
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1064
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 456
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    .line 590
    .local v0, old:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 598
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 600
    :cond_0
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 2
    .parameter "key"

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 719
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 721
    if-nez v0, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 724
    if-nez v0, :cond_0

    .line 728
    const/4 v1, 0x0

    .line 746
    .end local p0
    :goto_0
    return-object v1

    .line 734
    .restart local p0
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v1

    if-nez v1, :cond_1

    .line 735
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 744
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 746
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0

    .line 737
    .restart local p0
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method setDateViewVisibility(ZI)V
    .locals 2
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1506
    return-void

    .line 1504
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 1509
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/IconMerger;->getVisibility()I

    move-result v0

    .line 1510
    .local v0, old:I
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 1511
    .local v1, v:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 1512
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    .line 1513
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1515
    :cond_0
    return-void

    .line 1510
    .end local v1           #v:I
    :cond_1
    const/4 v2, 0x4

    move v1, v2

    goto :goto_0
.end method

.method public showCallOnGoingView()V
    .locals 2

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->addView(Landroid/view/View;)V

    .line 1774
    :cond_0
    return-void
.end method

.method stopTracking()V
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1008
    return-void
.end method

.method updateExpandedHeight()V
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1615
    :cond_0
    return-void
.end method

.method updateExpandedViewPos(I)V
    .locals 13
    .parameter "expandedPosition"

    .prologue
    const/16 v12, -0x2710

    const/4 v11, 0x1

    .line 1525
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v3

    .line 1526
    .local v3, h:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1530
    .local v2, disph:I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v8, :cond_2

    .line 1531
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    if-eqz v8, :cond_0

    .line 1532
    neg-int v8, v2

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1533
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_0

    .line 1534
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1535
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 1539
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1540
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1604
    :cond_1
    :goto_0
    return-void

    .line 1547
    :cond_2
    const/16 v8, -0x2711

    if-ne p1, v8, :cond_6

    .line 1548
    move v6, v3

    .line 1561
    .local v6, pos:I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1562
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v9, v2, v3

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1563
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1565
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 1566
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/CloseDragHandle;->getLocationInWindow([I)V

    .line 1567
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v0, v8, v11

    .line 1569
    .local v0, closePos:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1570
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v1, v8, v9

    .line 1572
    .local v1, contentsBottom:I
    if-eq p1, v12, :cond_1

    .line 1573
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v10, v0

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1575
    move v4, v3

    .line 1576
    .local v4, max:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v8, v4, :cond_3

    .line 1577
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1579
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1580
    .local v5, min:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v8, v5, :cond_4

    .line 1581
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1584
    :cond_4
    iget v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v3, :cond_9

    move v7, v11

    .line 1585
    .local v7, visible:Z
    :goto_2
    if-nez v7, :cond_5

    .line 1588
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1590
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1593
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    goto/16 :goto_0

    .line 1550
    .end local v0           #closePos:I
    .end local v1           #contentsBottom:I
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #pos:I
    .end local v7           #visible:Z
    :cond_6
    if-ne p1, v12, :cond_7

    .line 1551
    iget v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .restart local v6       #pos:I
    goto/16 :goto_1

    .line 1554
    .end local v6           #pos:I
    :cond_7
    if-gt p1, v2, :cond_8

    .line 1555
    move v6, p1

    .line 1559
    .restart local v6       #pos:I
    :goto_3
    sub-int v8, v2, v3

    sub-int/2addr v6, v8

    goto/16 :goto_1

    .line 1557
    .end local v6           #pos:I
    :cond_8
    move v6, v2

    .restart local v6       #pos:I
    goto :goto_3

    .line 1584
    .restart local v0       #closePos:I
    .restart local v1       #contentsBottom:I
    .restart local v4       #max:I
    .restart local v5       #min:I
    :cond_9
    const/4 v8, 0x0

    move v7, v8

    goto :goto_2
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 448
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 449
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 18
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v15

    .line 486
    .local v15, oldIndex:I
    if-ltz v15, :cond_2

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v16, v0

    .line 505
    .local v16, oldList:Lcom/android/systemui/statusbar/NotificationData;
    :goto_0
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    .line 506
    .local v14, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object v0, v14

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v17, v0

    .line 507
    .local v17, oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v13, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 509
    .local v13, oldContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v10, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 523
    .local v10, contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_7

    if-eqz v10, :cond_7

    if-eqz v13, :cond_7

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 532
    move-object/from16 v0, p2

    move-object v1, v14

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 536
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-nez v4, :cond_4

    .line 537
    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 548
    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v6, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 549
    .local v6, contentIntent:Landroid/app/PendingIntent;
    if-eqz v6, :cond_0

    .line 550
    iget-object v11, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v9, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    :cond_0
    new-instance v12, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v5, v0

    iget v5, v5, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    iget v6, v6, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v7, v0

    iget v7, v7, Landroid/app/Notification;->number:I

    invoke-direct {v12, v4, v5, v6, v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 557
    .local v12, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v12}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t update icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v10           #contentView:Landroid/widget/RemoteViews;
    .end local v12           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v13           #oldContentView:Landroid/widget/RemoteViews;
    .end local v14           #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v16           #oldList:Lcom/android/systemui/statusbar/NotificationData;
    .end local v17           #oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_1
    :goto_2
    return-void

    .line 489
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v15

    .line 491
    if-ltz v15, :cond_3

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v16, v0

    .restart local v16       #oldList:Lcom/android/systemui/statusbar/NotificationData;
    goto/16 :goto_0

    .line 494
    .end local v16           #oldList:Lcom/android/systemui/statusbar/NotificationData;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v15

    .line 495
    if-ltz v15, :cond_1

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v16, v0

    .restart local v16       #oldList:Lcom/android/systemui/statusbar/NotificationData;
    goto/16 :goto_0

    .line 541
    .restart local v10       #contentView:Landroid/widget/RemoteViews;
    .restart local v13       #oldContentView:Landroid/widget/RemoteViews;
    .restart local v14       #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v17       #oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_4
    :try_start_1
    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 562
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 564
    .local v11, e:Ljava/lang/RuntimeException;
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t reapply views for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 566
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 575
    .end local v11           #e:Ljava/lang/RuntimeException;
    :cond_5
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 582
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 583
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto/16 :goto_2

    .line 570
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 571
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_3
.end method

.method updateResources()V
    .locals 3

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1720
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1722
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1723
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1725
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 1728
    return-void
.end method

.method vibrate()V
    .locals 2

    .prologue
    .line 1739
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 1740
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1741
    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const-string v2, ","

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1625
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 1626
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1629
    :catch_0
    move-exception v0

    goto :goto_0
.end method
