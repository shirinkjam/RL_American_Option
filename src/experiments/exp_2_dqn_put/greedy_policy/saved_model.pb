
»

ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
>
Minimum
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-rc1-69-gc256c071bb28
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	
¦
%QNetwork/EncodingNetwork/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K*6
shared_name'%QNetwork/EncodingNetwork/dense/kernel

9QNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpReadVariableOp%QNetwork/EncodingNetwork/dense/kernel*
_output_shapes

:K*
dtype0

#QNetwork/EncodingNetwork/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*4
shared_name%#QNetwork/EncodingNetwork/dense/bias

7QNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpReadVariableOp#QNetwork/EncodingNetwork/dense/bias*
_output_shapes
:K*
dtype0
ª
'QNetwork/EncodingNetwork/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K2*8
shared_name)'QNetwork/EncodingNetwork/dense_1/kernel
£
;QNetwork/EncodingNetwork/dense_1/kernel/Read/ReadVariableOpReadVariableOp'QNetwork/EncodingNetwork/dense_1/kernel*
_output_shapes

:K2*
dtype0
¢
%QNetwork/EncodingNetwork/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*6
shared_name'%QNetwork/EncodingNetwork/dense_1/bias

9QNetwork/EncodingNetwork/dense_1/bias/Read/ReadVariableOpReadVariableOp%QNetwork/EncodingNetwork/dense_1/bias*
_output_shapes
:2*
dtype0
ª
'QNetwork/EncodingNetwork/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2K*8
shared_name)'QNetwork/EncodingNetwork/dense_2/kernel
£
;QNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOpReadVariableOp'QNetwork/EncodingNetwork/dense_2/kernel*
_output_shapes

:2K*
dtype0
¢
%QNetwork/EncodingNetwork/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*6
shared_name'%QNetwork/EncodingNetwork/dense_2/bias

9QNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOpReadVariableOp%QNetwork/EncodingNetwork/dense_2/bias*
_output_shapes
:K*
dtype0

QNetwork/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K*(
shared_nameQNetwork/dense_3/kernel

+QNetwork/dense_3/kernel/Read/ReadVariableOpReadVariableOpQNetwork/dense_3/kernel*
_output_shapes

:K*
dtype0

QNetwork/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameQNetwork/dense_3/bias
{
)QNetwork/dense_3/bias/Read/ReadVariableOpReadVariableOpQNetwork/dense_3/bias*
_output_shapes
:*
dtype0

NoOpNoOp
©
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ä
valueÚB× BÐ
T

train_step
metadata
model_variables
_all_assets

signatures
CA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE
 
8
0
1
2
	3

4
5
6
7

0
 
ge
VARIABLE_VALUE%QNetwork/EncodingNetwork/dense/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE#QNetwork/EncodingNetwork/dense/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE'QNetwork/EncodingNetwork/dense_1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE%QNetwork/EncodingNetwork/dense_1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE'QNetwork/EncodingNetwork/dense_2/kernel,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE%QNetwork/EncodingNetwork/dense_2/bias,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEQNetwork/dense_3/kernel,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEQNetwork/dense_3/bias,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE

ref
1


_q_network
t
_encoder
_q_value_layer
	variables
trainable_variables
regularization_losses
	keras_api
n
_postprocessing_layers
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
8
0
1
2
	3

4
5
6
7
8
0
1
2
	3

4
5
6
7
 
­
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses

%0
&1
'2
(3
*
0
1
2
	3

4
5
*
0
1
2
	3

4
5
 
­
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses

0
1

0
1
 
­
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
 

0
1
 
 
 
R
3	variables
4trainable_variables
5regularization_losses
6	keras_api
h

kernel
bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
h

kernel
	bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
h


kernel
bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
 

%0
&1
'2
(3
 
 
 
 
 
 
 
 
 
 
 
­
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
3	variables
4trainable_variables
5regularization_losses

0
1

0
1
 
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
7	variables
8trainable_variables
9regularization_losses

0
	1

0
	1
 
­
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
;	variables
<trainable_variables
=regularization_losses


0
1


0
1
 
­
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
l
action_0_discountPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
w
action_0_observationPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
j
action_0_rewardPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
m
action_0_step_typePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallaction_0_discountaction_0_observationaction_0_rewardaction_0_step_type%QNetwork/EncodingNetwork/dense/kernel#QNetwork/EncodingNetwork/dense/bias'QNetwork/EncodingNetwork/dense_1/kernel%QNetwork/EncodingNetwork/dense_1/bias'QNetwork/EncodingNetwork/dense_2/kernel%QNetwork/EncodingNetwork/dense_2/biasQNetwork/dense_3/kernelQNetwork/dense_3/bias*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_33315132
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
û
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_33315144
Ü
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_33315166

StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_33315159
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOp9QNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOp7QNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOp;QNetwork/EncodingNetwork/dense_1/kernel/Read/ReadVariableOp9QNetwork/EncodingNetwork/dense_1/bias/Read/ReadVariableOp;QNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOp9QNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOp+QNetwork/dense_3/kernel/Read/ReadVariableOp)QNetwork/dense_3/bias/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_save_33315401
Ç
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable%QNetwork/EncodingNetwork/dense/kernel#QNetwork/EncodingNetwork/dense/bias'QNetwork/EncodingNetwork/dense_1/kernel%QNetwork/EncodingNetwork/dense_1/bias'QNetwork/EncodingNetwork/dense_2/kernel%QNetwork/EncodingNetwork/dense_2/biasQNetwork/dense_3/kernelQNetwork/dense_3/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__traced_restore_33315438èÄ
^

__inference_<lambda>_33314903*(
_construction_contextkEagerRuntime*
_input_shapes 
¿
8
&__inference_get_initial_state_33315138

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
à
(
&__inference_signature_wrapper_33315166ö
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *5
f0R.
,__inference_function_with_signature_33315162*(
_construction_contextkEagerRuntime*
_input_shapes 
ËW
	
*__inference_polymorphic_action_fn_33315087
	time_step
time_step_1
time_step_2
time_step_3O
=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource:KL
>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:KQ
?qnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource:K2N
@qnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource:2Q
?qnetwork_encodingnetwork_dense_2_matmul_readvariableop_resource:2KN
@qnetwork_encodingnetwork_dense_2_biasadd_readvariableop_resource:KA
/qnetwork_dense_3_matmul_readvariableop_resource:K>
0qnetwork_dense_3_biasadd_readvariableop_resource:
identity	¢5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¢4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¢7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp¢6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp¢7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp¢6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp¢'QNetwork/dense_3/BiasAdd/ReadVariableOp¢&QNetwork/dense_3/MatMul/ReadVariableOpw
&QNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   £
(QNetwork/EncodingNetwork/flatten/ReshapeReshapetime_step_3/QNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0Ò
%QNetwork/EncodingNetwork/dense/MatMulMatMul1QNetwork/EncodingNetwork/flatten/Reshape:output:0<QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK°
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ó
&QNetwork/EncodingNetwork/dense/BiasAddBiasAdd/QNetwork/EncodingNetwork/dense/MatMul:product:0=QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
#QNetwork/EncodingNetwork/dense/ReluRelu/QNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¶
6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype0Ö
'QNetwork/EncodingNetwork/dense_1/MatMulMatMul1QNetwork/EncodingNetwork/dense/Relu:activations:0>QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ù
(QNetwork/EncodingNetwork/dense_1/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_1/MatMul:product:0?QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%QNetwork/EncodingNetwork/dense_1/ReluRelu1QNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¶
6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_2_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0Ø
'QNetwork/EncodingNetwork/dense_2/MatMulMatMul3QNetwork/EncodingNetwork/dense_1/Relu:activations:0>QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK´
7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_2_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ù
(QNetwork/EncodingNetwork/dense_2/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_2/MatMul:product:0?QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
%QNetwork/EncodingNetwork/dense_2/ReluRelu1QNetwork/EncodingNetwork/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
&QNetwork/dense_3/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_3_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0¸
QNetwork/dense_3/MatMulMatMul3QNetwork/EncodingNetwork/dense_2/Relu:activations:0.QNetwork/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'QNetwork/dense_3/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
QNetwork/dense_3/BiasAddBiasAdd!QNetwork/dense_3/MatMul:product:0/QNetwork/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Categorical/mode/ArgMaxArgMax!QNetwork/dense_3/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R T
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB j
Deterministic/sample/ShapeShape Categorical/mode/ArgMax:output:0*
T0	*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ®
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:©
 Deterministic/sample/BroadcastToBroadcastTo Categorical/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:À
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¨
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp6^QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5^QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp8^QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp8^QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp(^QNetwork/dense_3/BiasAdd/ReadVariableOp'^QNetwork/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2n
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2l
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2r
7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2r
7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp2R
'QNetwork/dense_3/BiasAdd/ReadVariableOp'QNetwork/dense_3/BiasAdd/ReadVariableOp2P
&QNetwork/dense_3/MatMul/ReadVariableOp&QNetwork/dense_3/MatMul/ReadVariableOp:N J
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	time_step:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	time_step:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	time_step:RN
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	time_step

ã
&__inference_signature_wrapper_33315132
discount
observation

reward
	step_type
unknown:K
	unknown_0:K
	unknown_1:K2
	unknown_2:2
	unknown_3:2K
	unknown_4:K
	unknown_5:K
	unknown_6:
identity	¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *5
f0R.
,__inference_function_with_signature_33315106k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
0/discount:VR
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_name0/observation:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
0/reward:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_name0/step_type
Ç
8
&__inference_signature_wrapper_33315144

batch_size
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *5
f0R.
,__inference_function_with_signature_33315139*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
 
«
!__inference__traced_save_33315401
file_prefix'
#savev2_variable_read_readvariableop	D
@savev2_qnetwork_encodingnetwork_dense_kernel_read_readvariableopB
>savev2_qnetwork_encodingnetwork_dense_bias_read_readvariableopF
Bsavev2_qnetwork_encodingnetwork_dense_1_kernel_read_readvariableopD
@savev2_qnetwork_encodingnetwork_dense_1_bias_read_readvariableopF
Bsavev2_qnetwork_encodingnetwork_dense_2_kernel_read_readvariableopD
@savev2_qnetwork_encodingnetwork_dense_2_bias_read_readvariableop6
2savev2_qnetwork_dense_3_kernel_read_readvariableop4
0savev2_qnetwork_dense_3_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¡
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*Ê
valueÀB½
B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B Ò
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop@savev2_qnetwork_encodingnetwork_dense_kernel_read_readvariableop>savev2_qnetwork_encodingnetwork_dense_bias_read_readvariableopBsavev2_qnetwork_encodingnetwork_dense_1_kernel_read_readvariableop@savev2_qnetwork_encodingnetwork_dense_1_bias_read_readvariableopBsavev2_qnetwork_encodingnetwork_dense_2_kernel_read_readvariableop@savev2_qnetwork_encodingnetwork_dense_2_bias_read_readvariableop2savev2_qnetwork_dense_3_kernel_read_readvariableop0savev2_qnetwork_dense_3_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2
	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Y
_input_shapesH
F: : :K:K:K2:2:2K:K:K:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :$ 

_output_shapes

:K: 

_output_shapes
:K:$ 

_output_shapes

:K2: 

_output_shapes
:2:$ 

_output_shapes

:2K: 

_output_shapes
:K:$ 

_output_shapes

:K: 	

_output_shapes
::


_output_shapes
: 
÷
d
__inference_<lambda>_33314900!
readvariableop_resource:	 
identity	¢ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	T
IdentityIdentityReadVariableOp:value:0^NoOp*
T0	*
_output_shapes
: W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
¥)
ß
$__inference__traced_restore_33315438
file_prefix#
assignvariableop_variable:	 J
8assignvariableop_1_qnetwork_encodingnetwork_dense_kernel:KD
6assignvariableop_2_qnetwork_encodingnetwork_dense_bias:KL
:assignvariableop_3_qnetwork_encodingnetwork_dense_1_kernel:K2F
8assignvariableop_4_qnetwork_encodingnetwork_dense_1_bias:2L
:assignvariableop_5_qnetwork_encodingnetwork_dense_2_kernel:2KF
8assignvariableop_6_qnetwork_encodingnetwork_dense_2_bias:K<
*assignvariableop_7_qnetwork_dense_3_kernel:K6
(assignvariableop_8_qnetwork_dense_3_bias:
identity_10¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*Ê
valueÀB½
B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B Ð
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2
	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_1AssignVariableOp8assignvariableop_1_qnetwork_encodingnetwork_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_2AssignVariableOp6assignvariableop_2_qnetwork_encodingnetwork_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_3AssignVariableOp:assignvariableop_3_qnetwork_encodingnetwork_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_4AssignVariableOp8assignvariableop_4_qnetwork_encodingnetwork_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_5AssignVariableOp:assignvariableop_5_qnetwork_encodingnetwork_dense_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_6AssignVariableOp8assignvariableop_6_qnetwork_encodingnetwork_dense_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp*assignvariableop_7_qnetwork_dense_3_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp(assignvariableop_8_qnetwork_dense_3_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 

Identity_9Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^NoOp"/device:CPU:0*
T0*
_output_shapes
: V
Identity_10IdentityIdentity_9:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 "#
identity_10Identity_10:output:0*'
_input_shapes
: : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_8:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ç
>
,__inference_function_with_signature_33315139

batch_sizeÿ
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_get_initial_state_33315138*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
×
.
,__inference_function_with_signature_33315162ç
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference_<lambda>_33314903*(
_construction_contextkEagerRuntime*
_input_shapes 
¿
8
&__inference_get_initial_state_33315346

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
X
¯	
*__inference_polymorphic_action_fn_33315301
time_step_step_type
time_step_reward
time_step_discount
time_step_observationO
=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource:KL
>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:KQ
?qnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource:K2N
@qnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource:2Q
?qnetwork_encodingnetwork_dense_2_matmul_readvariableop_resource:2KN
@qnetwork_encodingnetwork_dense_2_biasadd_readvariableop_resource:KA
/qnetwork_dense_3_matmul_readvariableop_resource:K>
0qnetwork_dense_3_biasadd_readvariableop_resource:
identity	¢5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¢4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¢7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp¢6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp¢7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp¢6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp¢'QNetwork/dense_3/BiasAdd/ReadVariableOp¢&QNetwork/dense_3/MatMul/ReadVariableOpw
&QNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ­
(QNetwork/EncodingNetwork/flatten/ReshapeReshapetime_step_observation/QNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0Ò
%QNetwork/EncodingNetwork/dense/MatMulMatMul1QNetwork/EncodingNetwork/flatten/Reshape:output:0<QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK°
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ó
&QNetwork/EncodingNetwork/dense/BiasAddBiasAdd/QNetwork/EncodingNetwork/dense/MatMul:product:0=QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
#QNetwork/EncodingNetwork/dense/ReluRelu/QNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¶
6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype0Ö
'QNetwork/EncodingNetwork/dense_1/MatMulMatMul1QNetwork/EncodingNetwork/dense/Relu:activations:0>QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ù
(QNetwork/EncodingNetwork/dense_1/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_1/MatMul:product:0?QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%QNetwork/EncodingNetwork/dense_1/ReluRelu1QNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¶
6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_2_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0Ø
'QNetwork/EncodingNetwork/dense_2/MatMulMatMul3QNetwork/EncodingNetwork/dense_1/Relu:activations:0>QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK´
7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_2_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ù
(QNetwork/EncodingNetwork/dense_2/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_2/MatMul:product:0?QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
%QNetwork/EncodingNetwork/dense_2/ReluRelu1QNetwork/EncodingNetwork/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
&QNetwork/dense_3/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_3_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0¸
QNetwork/dense_3/MatMulMatMul3QNetwork/EncodingNetwork/dense_2/Relu:activations:0.QNetwork/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'QNetwork/dense_3/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
QNetwork/dense_3/BiasAddBiasAdd!QNetwork/dense_3/MatMul:product:0/QNetwork/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Categorical/mode/ArgMaxArgMax!QNetwork/dense_3/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R T
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB j
Deterministic/sample/ShapeShape Categorical/mode/ArgMax:output:0*
T0	*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ®
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:©
 Deterministic/sample/BroadcastToBroadcastTo Categorical/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:À
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¨
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp6^QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5^QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp8^QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp8^QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp(^QNetwork/dense_3/BiasAdd/ReadVariableOp'^QNetwork/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2n
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2l
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2r
7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2r
7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp2R
'QNetwork/dense_3/BiasAdd/ReadVariableOp'QNetwork/dense_3/BiasAdd/ReadVariableOp2P
&QNetwork/dense_3/MatMul/ReadVariableOp&QNetwork/dense_3/MatMul/ReadVariableOp:X T
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nametime_step/discount:^Z
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nametime_step/observation
Û
f
&__inference_signature_wrapper_33315159
unknown:	 
identity	¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *5
f0R.
,__inference_function_with_signature_33315151^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
Ò
l
,__inference_function_with_signature_33315151
unknown:	 
identity	¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference_<lambda>_33314900^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
Ù;
­	
0__inference_polymorphic_distribution_fn_33315343
	step_type

reward
discount
observationO
=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource:KL
>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:KQ
?qnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource:K2N
@qnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource:2Q
?qnetwork_encodingnetwork_dense_2_matmul_readvariableop_resource:2KN
@qnetwork_encodingnetwork_dense_2_biasadd_readvariableop_resource:KA
/qnetwork_dense_3_matmul_readvariableop_resource:K>
0qnetwork_dense_3_biasadd_readvariableop_resource:
identity	

identity_1	

identity_2	¢5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¢4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¢7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp¢6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp¢7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp¢6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp¢'QNetwork/dense_3/BiasAdd/ReadVariableOp¢&QNetwork/dense_3/MatMul/ReadVariableOpw
&QNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   £
(QNetwork/EncodingNetwork/flatten/ReshapeReshapeobservation/QNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0Ò
%QNetwork/EncodingNetwork/dense/MatMulMatMul1QNetwork/EncodingNetwork/flatten/Reshape:output:0<QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK°
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ó
&QNetwork/EncodingNetwork/dense/BiasAddBiasAdd/QNetwork/EncodingNetwork/dense/MatMul:product:0=QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
#QNetwork/EncodingNetwork/dense/ReluRelu/QNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¶
6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype0Ö
'QNetwork/EncodingNetwork/dense_1/MatMulMatMul1QNetwork/EncodingNetwork/dense/Relu:activations:0>QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ù
(QNetwork/EncodingNetwork/dense_1/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_1/MatMul:product:0?QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%QNetwork/EncodingNetwork/dense_1/ReluRelu1QNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¶
6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_2_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0Ø
'QNetwork/EncodingNetwork/dense_2/MatMulMatMul3QNetwork/EncodingNetwork/dense_1/Relu:activations:0>QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK´
7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_2_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ù
(QNetwork/EncodingNetwork/dense_2/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_2/MatMul:product:0?QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
%QNetwork/EncodingNetwork/dense_2/ReluRelu1QNetwork/EncodingNetwork/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
&QNetwork/dense_3/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_3_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0¸
QNetwork/dense_3/MatMulMatMul3QNetwork/EncodingNetwork/dense_2/Relu:activations:0.QNetwork/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'QNetwork/dense_3/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
QNetwork/dense_3/BiasAddBiasAdd!QNetwork/dense_3/MatMul:product:0/QNetwork/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Categorical/mode/ArgMaxArgMax!QNetwork/dense_3/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R T
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R Y
IdentityIdentityDeterministic/atol:output:0^NoOp*
T0	*
_output_shapes
: m

Identity_1Identity Categorical/mode/ArgMax:output:0^NoOp*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2IdentityDeterministic/rtol:output:0^NoOp*
T0	*
_output_shapes
: î
NoOpNoOp6^QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5^QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp8^QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp8^QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp(^QNetwork/dense_3/BiasAdd/ReadVariableOp'^QNetwork/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2n
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2l
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2r
7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2r
7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp2R
'QNetwork/dense_3/BiasAdd/ReadVariableOp'QNetwork/dense_3/BiasAdd/ReadVariableOp2P
&QNetwork/dense_3/MatMul/ReadVariableOp&QNetwork/dense_3/MatMul/ReadVariableOp:N J
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	step_type:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namereward:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
discount:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameobservation
ÁW
	
*__inference_polymorphic_action_fn_33315234
	step_type

reward
discount
observationO
=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource:KL
>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:KQ
?qnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource:K2N
@qnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource:2Q
?qnetwork_encodingnetwork_dense_2_matmul_readvariableop_resource:2KN
@qnetwork_encodingnetwork_dense_2_biasadd_readvariableop_resource:KA
/qnetwork_dense_3_matmul_readvariableop_resource:K>
0qnetwork_dense_3_biasadd_readvariableop_resource:
identity	¢5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¢4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¢7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp¢6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp¢7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp¢6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp¢'QNetwork/dense_3/BiasAdd/ReadVariableOp¢&QNetwork/dense_3/MatMul/ReadVariableOpw
&QNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   £
(QNetwork/EncodingNetwork/flatten/ReshapeReshapeobservation/QNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp=qnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0Ò
%QNetwork/EncodingNetwork/dense/MatMulMatMul1QNetwork/EncodingNetwork/flatten/Reshape:output:0<QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK°
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp>qnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ó
&QNetwork/EncodingNetwork/dense/BiasAddBiasAdd/QNetwork/EncodingNetwork/dense/MatMul:product:0=QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
#QNetwork/EncodingNetwork/dense/ReluRelu/QNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¶
6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes

:K2*
dtype0Ö
'QNetwork/EncodingNetwork/dense_1/MatMulMatMul1QNetwork/EncodingNetwork/dense/Relu:activations:0>QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ù
(QNetwork/EncodingNetwork/dense_1/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_1/MatMul:product:0?QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%QNetwork/EncodingNetwork/dense_1/ReluRelu1QNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¶
6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_2_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0Ø
'QNetwork/EncodingNetwork/dense_2/MatMulMatMul3QNetwork/EncodingNetwork/dense_1/Relu:activations:0>QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK´
7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_2_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ù
(QNetwork/EncodingNetwork/dense_2/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_2/MatMul:product:0?QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
%QNetwork/EncodingNetwork/dense_2/ReluRelu1QNetwork/EncodingNetwork/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
&QNetwork/dense_3/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_3_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0¸
QNetwork/dense_3/MatMulMatMul3QNetwork/EncodingNetwork/dense_2/Relu:activations:0.QNetwork/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'QNetwork/dense_3/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
QNetwork/dense_3/BiasAddBiasAdd!QNetwork/dense_3/MatMul:product:0/QNetwork/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Categorical/mode/ArgMaxArgMax!QNetwork/dense_3/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R T
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB j
Deterministic/sample/ShapeShape Categorical/mode/ArgMax:output:0*
T0	*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ®
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:©
 Deterministic/sample/BroadcastToBroadcastTo Categorical/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:À
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¨
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp6^QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5^QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp8^QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp8^QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp(^QNetwork/dense_3/BiasAdd/ReadVariableOp'^QNetwork/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2n
5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp5QNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2l
4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp4QNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2r
7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2r
7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_2/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_2/MatMul/ReadVariableOp2R
'QNetwork/dense_3/BiasAdd/ReadVariableOp'QNetwork/dense_3/BiasAdd/ReadVariableOp2P
&QNetwork/dense_3/MatMul/ReadVariableOp&QNetwork/dense_3/MatMul/ReadVariableOp:N J
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	step_type:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namereward:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
discount:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameobservation

é
,__inference_function_with_signature_33315106
	step_type

reward
discount
observation
unknown:K
	unknown_0:K
	unknown_1:K2
	unknown_2:2
	unknown_3:2K
	unknown_4:K
	unknown_5:K
	unknown_6:
identity	¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *3
f.R,
*__inference_polymorphic_action_fn_33315087k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_name0/step_type:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
0/reward:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
0/discount:VR
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_name0/observation"L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
action´
4

0/discount&
action_0_discount:0ÿÿÿÿÿÿÿÿÿ
>
0/observation-
action_0_observation:0ÿÿÿÿÿÿÿÿÿ
0
0/reward$
action_0_reward:0ÿÿÿÿÿÿÿÿÿ
6
0/step_type'
action_0_step_type:0ÿÿÿÿÿÿÿÿÿ6
action,
StatefulPartitionedCall:0	ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:Ýi
Í

train_step
metadata
model_variables
_all_assets

signatures

Waction
Xdistribution
Yget_initial_state
Zget_metadata
[get_train_step"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
Y
0
1
2
	3

4
5
6
7"
trackable_tuple_wrapper
'
0"
trackable_list_wrapper
`

\action
]get_initial_state
^get_train_step
_get_metadata"
signature_map
7:5K2%QNetwork/EncodingNetwork/dense/kernel
1:/K2#QNetwork/EncodingNetwork/dense/bias
9:7K22'QNetwork/EncodingNetwork/dense_1/kernel
3:122%QNetwork/EncodingNetwork/dense_1/bias
9:72K2'QNetwork/EncodingNetwork/dense_2/kernel
3:1K2%QNetwork/EncodingNetwork/dense_2/bias
):'K2QNetwork/dense_3/kernel
#:!2QNetwork/dense_3/bias
1
ref
1"
trackable_tuple_wrapper
.

_q_network"
_generic_user_object
Ç
_encoder
_q_value_layer
	variables
trainable_variables
regularization_losses
	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
Á
_postprocessing_layers
	variables
trainable_variables
regularization_losses
	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
X
0
1
2
	3

4
5
6
7"
trackable_list_wrapper
X
0
1
2
	3

4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
­
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
<
%0
&1
'2
(3"
trackable_list_wrapper
J
0
1
2
	3

4
5"
trackable_list_wrapper
J
0
1
2
	3

4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
­
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¥
3	variables
4trainable_variables
5regularization_losses
6	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
	bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
»


kernel
bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
<
%0
&1
'2
(3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
3	variables
4trainable_variables
5regularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
7	variables
8trainable_variables
9regularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
;	variables
<trainable_variables
=regularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
2
*__inference_polymorphic_action_fn_33315234
*__inference_polymorphic_action_fn_33315301±
ª²¦
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults¢
¢ 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
é2æ
0__inference_polymorphic_distribution_fn_33315343±
ª²¦
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults¢
¢ 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
&__inference_get_initial_state_33315346¦
²
FullArgSpec!
args
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³B°
__inference_<lambda>_33314903"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³B°
__inference_<lambda>_33314900"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ôBñ
&__inference_signature_wrapper_33315132
0/discount0/observation0/reward0/step_type"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÐBÍ
&__inference_signature_wrapper_33315144
batch_size"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÂB¿
&__inference_signature_wrapper_33315159"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÂB¿
&__inference_signature_wrapper_33315166"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 <
__inference_<lambda>_33314900¢

¢ 
ª " 	5
__inference_<lambda>_33314903¢

¢ 
ª "ª S
&__inference_get_initial_state_33315346)"¢
¢


batch_size 
ª "¢ î
*__inference_polymorphic_action_fn_33315234¿	
Þ¢Ú
Ò¢Î
Æ²Â
TimeStep,
	step_type
	step_typeÿÿÿÿÿÿÿÿÿ&
reward
rewardÿÿÿÿÿÿÿÿÿ*
discount
discountÿÿÿÿÿÿÿÿÿ4
observation%"
observationÿÿÿÿÿÿÿÿÿ
¢ 
ª "R²O

PolicyStep&
action
actionÿÿÿÿÿÿÿÿÿ	
state¢ 
info¢ 
*__inference_polymorphic_action_fn_33315301ç	
¢
ú¢ö
î²ê
TimeStep6
	step_type)&
time_step/step_typeÿÿÿÿÿÿÿÿÿ0
reward&#
time_step/rewardÿÿÿÿÿÿÿÿÿ4
discount(%
time_step/discountÿÿÿÿÿÿÿÿÿ>
observation/,
time_step/observationÿÿÿÿÿÿÿÿÿ
¢ 
ª "R²O

PolicyStep&
action
actionÿÿÿÿÿÿÿÿÿ	
state¢ 
info¢ ë
0__inference_polymorphic_distribution_fn_33315343¶	
Þ¢Ú
Ò¢Î
Æ²Â
TimeStep,
	step_type
	step_typeÿÿÿÿÿÿÿÿÿ&
reward
rewardÿÿÿÿÿÿÿÿÿ*
discount
discountÿÿÿÿÿÿÿÿÿ4
observation%"
observationÿÿÿÿÿÿÿÿÿ
¢ 
ª "È²Ä

PolicyStep
action½¢¹
`
Bª?

atol 	

locÿÿÿÿÿÿÿÿÿ	

rtol 	
JªG

allow_nan_statsp

namejDeterministic_1

validate_argsp 
¢
j
parameters
¢ 
¢
jnameEtf_agents.policies.greedy_policy.DeterministicWithLogProb_ACTTypeSpec 
state¢ 
info¢ ½
&__inference_signature_wrapper_33315132	
Ø¢Ô
¢ 
ÌªÈ
.

0/discount 

0/discountÿÿÿÿÿÿÿÿÿ
8
0/observation'$
0/observationÿÿÿÿÿÿÿÿÿ
*
0/reward
0/rewardÿÿÿÿÿÿÿÿÿ
0
0/step_type!
0/step_typeÿÿÿÿÿÿÿÿÿ"+ª(
&
action
actionÿÿÿÿÿÿÿÿÿ	a
&__inference_signature_wrapper_3331514470¢-
¢ 
&ª#
!

batch_size

batch_size "ª Z
&__inference_signature_wrapper_333151590¢

¢ 
ª "ª

int64
int64 	>
&__inference_signature_wrapper_33315166¢

¢ 
ª "ª 