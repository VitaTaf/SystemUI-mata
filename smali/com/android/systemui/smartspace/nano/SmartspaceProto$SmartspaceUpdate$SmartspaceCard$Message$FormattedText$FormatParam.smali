.class public final Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SmartspaceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatParam"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;


# instance fields
.field public formatParamArgs:I

.field public text:Ljava/lang/String;

.field public truncateLocation:I

.field public updateTimeLocally:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;
    .locals 2

    .line 52
    sget-object v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->_emptyArray:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->_emptyArray:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    .line 56
    sput-object v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->_emptyArray:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->_emptyArray:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;
    .locals 1

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->truncateLocation:I

    .line 82
    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->updateTimeLocally:Z

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 108
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 110
    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    .line 111
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_0
    iget v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->truncateLocation:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 115
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_1
    iget v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 119
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->updateTimeLocally:Z

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    .line 123
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 138
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->updateTimeLocally:Z

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 166
    :cond_3
    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    goto :goto_0

    .line 154
    :cond_5
    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->truncateLocation:I

    goto :goto_0

    .line 144
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 94
    :cond_0
    iget v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->truncateLocation:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 95
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 97
    :cond_1
    iget v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 98
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 100
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->updateTimeLocally:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 101
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 103
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
