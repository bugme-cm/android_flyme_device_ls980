.class public Lcom/android/internal/telephony/LgeLteRIL;
.super Lcom/android/internal/telephony/RIL;
.source "LgeLteRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LgeLteRIL$1;,
        Lcom/android/internal/telephony/LgeLteRIL$IccHandler;
    }
.end annotation


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_ON_HTC:I

.field private final RIL_INT_RADIO_ON_NG:I

.field private final RIL_INT_RADIO_UNAVALIABLE:I

.field private isGSM:Z

.field protected mAid:Ljava/lang/String;

.field protected mIccHandler:Lcom/android/internal/telephony/LgeLteRIL$IccHandler;

.field protected mIccThread:Landroid/os/HandlerThread;

.field protected mLastDataIface:[Ljava/lang/String;

.field private mPendingNetworkResponse:Landroid/os/Message;

.field private mSetPreferredNetworkType:I

.field protected mUSIM:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeLteRIL;->mUSIM:Z

    .line 57
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mLastDataIface:[Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeLteRIL;->RILJ_LOGV:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeLteRIL;->RILJ_LOGD:Z

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/LgeLteRIL;->RIL_INT_RADIO_OFF:I

    .line 62
    iput v2, p0, Lcom/android/internal/telephony/LgeLteRIL;->RIL_INT_RADIO_UNAVALIABLE:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->RIL_INT_RADIO_ON:I

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->RIL_INT_RADIO_ON_NG:I

    .line 65
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->RIL_INT_RADIO_ON_HTC:I

    .line 66
    iput v3, p0, Lcom/android/internal/telephony/LgeLteRIL;->mSetPreferredNetworkType:I

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeLteRIL;->isGSM:Z

    .line 78
    iput v3, p0, Lcom/android/internal/telephony/LgeLteRIL;->mSetPreferredNetworkType:I

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mQANElements:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/LgeLteRIL;-><init>(Landroid/content/Context;II)V

    .line 74
    return-void
.end method

.method private dataRegState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    aget-object v1, v0, v3

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    .line 679
    const-string v1, "1"

    aput-object v1, v0, v3

    .line 682
    :cond_0
    return-object v0
.end method

.method private setRadioStateFromRILInt(I)V
    .locals 6
    .param p1, "stateCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 435
    sparse-switch p1, :sswitch_data_0

    .line 462
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 437
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 438
    .local v2, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccHandler:Lcom/android/internal/telephony/LgeLteRIL$IccHandler;

    if-eqz v3, :cond_0

    .line 439
    iput-object v4, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 440
    iput-object v4, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccHandler:Lcom/android/internal/telephony/LgeLteRIL$IccHandler;

    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeLteRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 466
    return-void

    .line 444
    .end local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 445
    .restart local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 449
    .end local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccHandler:Lcom/android/internal/telephony/LgeLteRIL$IccHandler;

    if-nez v3, :cond_1

    .line 450
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 453
    iget-object v3, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 455
    iget-object v3, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 456
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/LgeLteRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/LgeLteRIL$IccHandler;-><init>(Lcom/android/internal/telephony/LgeLteRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccHandler:Lcom/android/internal/telephony/LgeLteRIL$IccHandler;

    .line 457
    iget-object v3, p0, Lcom/android/internal/telephony/LgeLteRIL;->mIccHandler:Lcom/android/internal/telephony/LgeLteRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/LgeLteRIL$IccHandler;->run()V

    .line 459
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 460
    .restart local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 435
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/LgeLteRIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 90
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0xb

    .line 119
    invoke-static {v3, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 121
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-boolean v1, p0, Lcom/android/internal/telephony/LgeLteRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI:RIL_REQUEST_GET_IMSI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/LgeLteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeLteRIL;->riljLog(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeLteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 131
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 714
    iget v1, p0, Lcom/android/internal/telephony/LgeLteRIL;->mRilVersion:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 715
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    if-eqz p1, :cond_0

    .line 718
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 720
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 721
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeLteRIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 322
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LgeLteRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/LgeLteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeLteRIL;->riljLog(Ljava/lang/String;)V

    .line 324
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeLteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 139
    iget-object v9, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/LgeLteRIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 140
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 595
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 596
    .local v5, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 598
    .local v1, "error":I
    const/4 v4, 0x0

    .line 601
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v9, p0, Lcom/android/internal/telephony/LgeLteRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v9

    .line 602
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/LgeLteRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    .line 603
    .local v7, "tr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v7, :cond_1

    iget v8, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v8, v5, :cond_1

    .line 604
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lez v8, :cond_1

    .line 605
    :cond_0
    :try_start_1
    iget v8, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v8, :pswitch_data_0

    .line 620
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    if-nez v4, :cond_3

    .line 624
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 627
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 656
    .end local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :goto_1
    return-object v7

    .line 608
    .restart local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :pswitch_0
    move-object v4, v7

    goto :goto_0

    .line 610
    :catch_0
    move-exception v6

    .line 612
    .local v6, "thr":Ljava/lang/Throwable;
    :try_start_3
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_2

    .line 613
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    invoke-static {v8, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 614
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 616
    :cond_2
    monitor-exit v9

    goto :goto_1

    .line 620
    .end local v6    # "thr":Ljava/lang/Throwable;
    .end local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 631
    .restart local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeLteRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 633
    if-nez v4, :cond_4

    move-object v7, v4

    .line 634
    goto :goto_1

    .line 637
    :cond_4
    const/4 v3, 0x0

    .line 639
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v8

    if-lez v8, :cond_6

    .line 640
    :cond_5
    iget v8, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v8, :pswitch_data_1

    .line 643
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized solicited response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 641
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeLteRIL;->dataRegState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 648
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_6
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeLteRIL;->RILJ_LOGD:Z

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/LgeLteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9, v3}, Lcom/android/internal/telephony/LgeLteRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeLteRIL;->riljLog(Ljava/lang/String;)V

    .line 651
    :cond_7
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_8

    .line 652
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 653
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    move-object v7, v4

    .line 656
    goto/16 :goto_1

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    .line 640
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 371
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .local v1, "response":I
    const-string v4, "datacall"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeLteRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    packed-switch v1, :pswitch_data_0

    .line 386
    :cond_0
    packed-switch v1, :pswitch_data_1

    .line 396
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 399
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 427
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 381
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeLteRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 382
    .local v2, "ret":Ljava/lang/Object;
    goto :goto_0

    .line 388
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeLteRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 403
    .restart local v2    # "ret":Ljava/lang/Object;
    :goto_1
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 405
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 406
    .local v3, "state":I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LgeLteRIL;->setRadioStateFromRILInt(I)V

    goto :goto_0

    .line 389
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "state":I
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeLteRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 390
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeLteRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 391
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeLteRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 392
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeLteRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 409
    :sswitch_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/LgeLteRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/LgeLteRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 411
    :cond_2
    check-cast v2, [I

    .end local v2    # "ret":Ljava/lang/Object;
    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeLteRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 417
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/LgeLteRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/LgeLteRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 419
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/LgeLteRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 420
    iget-object v4, p0, Lcom/android/internal/telephony/LgeLteRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x407
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 386
    :pswitch_data_1
    .packed-switch 0x40a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x40a -> :sswitch_2
        0x40b -> :sswitch_0
        0x40c -> :sswitch_0
        0x40d -> :sswitch_3
    .end sparse-switch
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 106
    iget-object v4, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/LgeLteRIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x2

    .line 147
    new-instance v8, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 148
    .local v8, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 152
    .local v5, "cardState":I
    if-le v5, v13, :cond_0

    .line 153
    add-int/lit8 v5, v5, -0x3

    .line 155
    :cond_0
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 164
    .local v7, "numApplications":I
    const/16 v11, 0x8

    if-le v7, v11, :cond_1

    .line 165
    const/16 v7, 0x8

    .line 167
    :cond_1
    new-array v11, v7, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 169
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 170
    .local v2, "ca":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 171
    if-eqz v6, :cond_2

    .line 172
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .end local v2    # "ca":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 174
    .restart local v2    # "ca":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 182
    const-string v11, "skippinpukcount"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/LgeLteRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 188
    :cond_3
    iget-object v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v2, v11, v6

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 191
    :cond_4
    if-ne v7, v9, :cond_5

    iget-boolean v11, p0, Lcom/android/internal/telephony/LgeLteRIL;->isGSM:Z

    if-nez v11, :cond_5

    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v12

    if-ne v11, v12, :cond_5

    .line 192
    add-int/lit8 v11, v7, 0x2

    new-array v11, v11, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 193
    iput v10, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 194
    iget-object v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v12, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    aput-object v2, v11, v12

    .line 195
    iput v9, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 196
    iput v13, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 197
    new-instance v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 198
    .local v3, "ca2":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v11

    iput-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 199
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 200
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 201
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 202
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 203
    iget v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v11, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 204
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 205
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v11, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 206
    iget-object v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v12, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    aput-object v3, v11, v12

    .line 207
    new-instance v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 208
    .local v4, "ca3":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v11

    iput-object v11, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 209
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v11, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 210
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v11, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 211
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v11, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 212
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v11, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 213
    iget v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v11, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 214
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v11, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 215
    iget-object v11, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v11, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 216
    iget-object v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v12, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    aput-object v4, v11, v12

    .line 219
    .end local v3    # "ca2":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v4    # "ca3":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_5
    const/4 v0, -0x1

    .line 220
    .local v0, "appIndex":I
    iget v11, p0, Lcom/android/internal/telephony/LgeLteRIL;->mPhoneType:I

    if-ne v11, v13, :cond_7

    iget v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    if-ltz v11, :cond_7

    .line 222
    iget v0, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 223
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is a CDMA PHONE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_1
    if-nez v5, :cond_8

    .line 245
    :cond_6
    :goto_2
    return-object v8

    .line 225
    :cond_7
    iget v0, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 226
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is a GSM PHONE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    :cond_8
    if-lez v7, :cond_6

    .line 234
    iget-object v11, v8, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v1, v11, v0

    .line 235
    .local v1, "application":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    iget-object v11, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v11, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    .line 236
    iget-object v11, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v11, v12, :cond_a

    :goto_3
    iput-boolean v9, p0, Lcom/android/internal/telephony/LgeLteRIL;->mUSIM:Z

    .line 238
    iget v9, p0, Lcom/android/internal/telephony/LgeLteRIL;->mPreferredNetworkType:I

    iput v9, p0, Lcom/android/internal/telephony/LgeLteRIL;->mSetPreferredNetworkType:I

    .line 240
    iget-object v9, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 241
    const-string v9, ""

    iput-object v9, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    .line 242
    :cond_9
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    move v9, v10

    .line 236
    goto :goto_3
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 344
    const/16 v17, 0xc

    .line 347
    .local v17, "numInts":I
    const-string v1, "signalstrength"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LgeLteRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v18

    .line 348
    .local v18, "oldRil":Z
    const/16 v16, 0x0

    .line 351
    .local v16, "noLte":Z
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 352
    .local v19, "response":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 353
    if-nez v18, :cond_0

    if-eqz v16, :cond_2

    :cond_0
    const/4 v1, 0x6

    if-le v15, v1, :cond_2

    const/16 v1, 0xc

    if-ge v15, v1, :cond_2

    .line 354
    const/4 v1, -0x1

    aput v1, v19, v15

    .line 358
    :goto_1
    const/4 v1, 0x7

    if-ne v15, v1, :cond_1

    aget v1, v19, v15

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1

    .line 359
    const/4 v1, -0x1

    aput v1, v19, v15

    .line 360
    const/16 v16, 0x1

    .line 352
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v19, v15

    goto :goto_1

    .line 363
    :cond_3
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v2, 0x0

    aget v2, v19, v2

    const/4 v3, 0x1

    aget v3, v19, v3

    const/4 v4, 0x2

    aget v4, v19, v4

    const/4 v5, 0x3

    aget v5, v19, v5

    const/4 v6, 0x4

    aget v6, v19, v6

    const/4 v7, 0x5

    aget v7, v19, v7

    const/4 v8, 0x6

    aget v8, v19, v8

    const/4 v9, 0x7

    aget v9, v19, v9

    const/16 v10, 0x8

    aget v10, v19, v10

    const/16 v11, 0x9

    aget v11, v19, v11

    const/16 v12, 0xa

    aget v12, v19, v12

    const/16 v13, 0xb

    aget v13, v19, v13

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    return-object v1
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 113
    iget-object v5, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/LgeLteRIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 114
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 575
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 579
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/LgeLteRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/LgeLteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeLteRIL;->riljLog(Ljava/lang/String;)V

    .line 582
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, "NOCHANGE"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeLteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 587
    return-void
.end method

.method public setPhoneType(I)V
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->setPhoneType(I)V

    .line 251
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->isGSM:Z

    .line 252
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mUSIM:Z

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mSetPreferredNetworkType:I

    if-ltz v0, :cond_0

    .line 334
    const/4 p1, 0x0

    .line 336
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/LgeLteRIL;->mSetPreferredNetworkType:I

    .line 338
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 339
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/LgeLteRIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 85
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/LgeLteRIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 95
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/LgeLteRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/LgeLteRIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 100
    return-void
.end method
