??
??
?
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
dtypetype?
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
delete_old_dirsbool(?
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
?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
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
?
5ActorDistributionNetwork/EncodingNetwork/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*F
shared_name75ActorDistributionNetwork/EncodingNetwork/dense/kernel
?
IActorDistributionNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpReadVariableOp5ActorDistributionNetwork/EncodingNetwork/dense/kernel*
_output_shapes

:d*
dtype0
?
3ActorDistributionNetwork/EncodingNetwork/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*D
shared_name53ActorDistributionNetwork/EncodingNetwork/dense/bias
?
GActorDistributionNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpReadVariableOp3ActorDistributionNetwork/EncodingNetwork/dense/bias*
_output_shapes
:d*
dtype0
?
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*T
shared_nameECActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel
?
WActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel/Read/ReadVariableOpReadVariableOpCActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel*
_output_shapes

:d*
dtype0
?
AActorDistributionNetwork/CategoricalProjectionNetwork/logits/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*R
shared_nameCAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias
?
UActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias/Read/ReadVariableOpReadVariableOpAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
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

0
1
2
	3


0
 
wu
VARIABLE_VALUE5ActorDistributionNetwork/EncodingNetwork/dense/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE3ActorDistributionNetwork/EncodingNetwork/dense/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE

ref
1

_actor_network
z
_encoder
_projection_networks
	variables
trainable_variables
regularization_losses
	keras_api
n
_postprocessing_layers
	variables
trainable_variables
regularization_losses
	keras_api
i
_projection_layer
	variables
trainable_variables
regularization_losses
	keras_api

0
1
2
	3

0
1
2
	3
 
?
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses

"0
#1

0
1

0
1
 
?
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
h

kernel
	bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api

0
	1

0
	1
 
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
 

0
1
 
 
 
R
2	variables
3trainable_variables
4regularization_losses
5	keras_api
h

kernel
bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
 

"0
#1
 
 
 

0
	1

0
	1
 
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
)	variables
*trainable_variables
+regularization_losses
 

0
 
 
 
 
 
 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
2	variables
3trainable_variables
4regularization_losses

0
1

0
1
 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
6	variables
7trainable_variables
8regularization_losses
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
:?????????*
dtype0*
shape:?????????
w
action_0_observationPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
j
action_0_rewardPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
m
action_0_step_typePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallaction_0_discountaction_0_observationaction_0_rewardaction_0_step_type5ActorDistributionNetwork/EncodingNetwork/dense/kernel3ActorDistributionNetwork/EncodingNetwork/dense/biasCActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernelAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias*
Tin

2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_15752380
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
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
GPU 2J 8? */
f*R(
&__inference_signature_wrapper_15752392
?
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
GPU 2J 8? */
f*R(
&__inference_signature_wrapper_15752414
?
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
GPU 2J 8? */
f*R(
&__inference_signature_wrapper_15752407
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpIActorDistributionNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpWActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel/Read/ReadVariableOpUActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias/Read/ReadVariableOpConst*
Tin
	2	*
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
GPU 2J 8? **
f%R#
!__inference__traced_save_15752601
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable5ActorDistributionNetwork/EncodingNetwork/dense/kernel3ActorDistributionNetwork/EncodingNetwork/dense/biasCActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernelAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias*
Tin

2*
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_15752626??
?
(
&__inference_signature_wrapper_15752414?
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
GPU 2J 8? *5
f0R.
,__inference_function_with_signature_15752410*(
_construction_contextkEagerRuntime*
_input_shapes 
?
.
,__inference_function_with_signature_15752410?
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
GPU 2J 8? *&
f!R
__inference_<lambda>_15752203*(
_construction_contextkEagerRuntime*
_input_shapes 
?
8
&__inference_get_initial_state_15752558

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
?
?
!__inference__traced_save_15752601
file_prefix'
#savev2_variable_read_readvariableop	T
Psavev2_actordistributionnetwork_encodingnetwork_dense_kernel_read_readvariableopR
Nsavev2_actordistributionnetwork_encodingnetwork_dense_bias_read_readvariableopb
^savev2_actordistributionnetwork_categoricalprojectionnetwork_logits_kernel_read_readvariableop`
\savev2_actordistributionnetwork_categoricalprojectionnetwork_logits_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHy
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopPsavev2_actordistributionnetwork_encodingnetwork_dense_kernel_read_readvariableopNsavev2_actordistributionnetwork_encodingnetwork_dense_bias_read_readvariableop^savev2_actordistributionnetwork_categoricalprojectionnetwork_logits_kernel_read_readvariableop\savev2_actordistributionnetwork_categoricalprojectionnetwork_logits_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes

2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*9
_input_shapes(
&: : :d:d:d:: 2(
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

:d: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::

_output_shapes
: 
?O
?
*__inference_polymorphic_action_fn_15752525
time_step_step_type
time_step_reward
time_step_discount
time_step_observation_
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource:d\
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:dm
[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource:dj
\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource:
identity	??SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp?RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp?EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshapetime_step_observation?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:??????????
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
3ActorDistributionNetwork/EncodingNetwork/dense/ReluRelu?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d?
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/dense/Relu:activations:0ZActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
DActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddMActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0[ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
CActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
=ActorDistributionNetwork/CategoricalProjectionNetwork/ReshapeReshapeMActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0LActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
fCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
\Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMaxArgMaxFActorDistributionNetwork/CategoricalProjectionNetwork/Reshape:output:0oCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????T
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
valueB ?
Deterministic/sample/ShapeShapeeCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0*
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
valueB:?
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
valueB ?
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
value	B : ?
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:?
 Deterministic/sample/BroadcastToBroadcastToeCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:?????????u
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
valueB:?
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
value	B : ?
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????Q
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:??????????
NoOpNoOpT^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpS^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpF^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????:?????????:?????????:?????????: : : : 2?
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpSActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2?
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpRActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2?
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:X T
#
_output_shapes
:?????????
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:?????????
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:?????????
,
_user_specified_nametime_step/discount:^Z
'
_output_shapes
:?????????
/
_user_specified_nametime_step/observation
?

?
&__inference_signature_wrapper_15752380
discount
observation

reward
	step_type
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *5
f0R.
,__inference_function_with_signature_15752362k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????:?????????:?????????:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:VR
'
_output_shapes
:?????????
'
_user_specified_name0/observation:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:PL
#
_output_shapes
:?????????
%
_user_specified_name0/step_type
?
?
$__inference__traced_restore_15752626
file_prefix#
assignvariableop_variable:	 Z
Hassignvariableop_1_actordistributionnetwork_encodingnetwork_dense_kernel:dT
Fassignvariableop_2_actordistributionnetwork_encodingnetwork_dense_bias:dh
Vassignvariableop_3_actordistributionnetwork_categoricalprojectionnetwork_logits_kernel:db
Tassignvariableop_4_actordistributionnetwork_categoricalprojectionnetwork_logits_bias:

identity_6??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpHassignvariableop_1_actordistributionnetwork_encodingnetwork_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpFassignvariableop_2_actordistributionnetwork_encodingnetwork_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpVassignvariableop_3_actordistributionnetwork_categoricalprojectionnetwork_logits_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpTassignvariableop_4_actordistributionnetwork_categoricalprojectionnetwork_logits_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_5Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_6IdentityIdentity_5:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*
_input_shapes
: : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_4:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
8
&__inference_signature_wrapper_15752392

batch_size?
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
GPU 2J 8? *5
f0R.
,__inference_function_with_signature_15752387*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
d
__inference_<lambda>_15752200!
readvariableop_resource:	 
identity	??ReadVariableOp^
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
?

?
,__inference_function_with_signature_15752362
	step_type

reward
discount
observation
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *3
f.R,
*__inference_polymorphic_action_fn_15752351k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????:?????????:?????????:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_name0/step_type:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:OK
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:VR
'
_output_shapes
:?????????
'
_user_specified_name0/observation
?
8
&__inference_get_initial_state_15752386

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
?
l
,__inference_function_with_signature_15752399
unknown:	 
identity	??StatefulPartitionedCall?
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
GPU 2J 8? *&
f!R
__inference_<lambda>_15752200^
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
?
f
&__inference_signature_wrapper_15752407
unknown:	 
identity	??StatefulPartitionedCall?
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
GPU 2J 8? *5
f0R.
,__inference_function_with_signature_15752399^
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
?N
?
*__inference_polymorphic_action_fn_15752470
	step_type

reward
discount
observation_
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource:d\
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:dm
[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource:dj
\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource:
identity	??SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp?RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp?EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshapeobservation?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:??????????
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
3ActorDistributionNetwork/EncodingNetwork/dense/ReluRelu?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d?
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/dense/Relu:activations:0ZActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
DActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddMActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0[ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
CActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
=ActorDistributionNetwork/CategoricalProjectionNetwork/ReshapeReshapeMActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0LActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
fCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
\Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMaxArgMaxFActorDistributionNetwork/CategoricalProjectionNetwork/Reshape:output:0oCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????T
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
valueB ?
Deterministic/sample/ShapeShapeeCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0*
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
valueB:?
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
valueB ?
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
value	B : ?
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:?
 Deterministic/sample/BroadcastToBroadcastToeCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:?????????u
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
valueB:?
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
value	B : ?
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????Q
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:??????????
NoOpNoOpT^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpS^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpF^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????:?????????:?????????:?????????: : : : 2?
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpSActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2?
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpRActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2?
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:TP
'
_output_shapes
:?????????
%
_user_specified_nameobservation
?2
?
0__inference_polymorphic_distribution_fn_15752555
	step_type

reward
discount
observation_
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource:d\
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:dm
[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource:dj
\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource:
identity	

identity_1	

identity_2	??SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp?RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp?EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshapeobservation?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:??????????
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
3ActorDistributionNetwork/EncodingNetwork/dense/ReluRelu?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d?
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/dense/Relu:activations:0ZActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
DActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddMActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0[ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
CActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
=ActorDistributionNetwork/CategoricalProjectionNetwork/ReshapeReshapeMActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0LActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
fCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
\Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMaxArgMaxFActorDistributionNetwork/CategoricalProjectionNetwork/Reshape:output:0oCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????T
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
: ?

Identity_1IdentityeCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0^NoOp*
T0	*#
_output_shapes
:?????????[

Identity_2IdentityDeterministic/rtol:output:0^NoOp*
T0	*
_output_shapes
: ?
NoOpNoOpT^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpS^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpF^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????:?????????:?????????:?????????: : : : 2?
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpSActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2?
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpRActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2?
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:TP
'
_output_shapes
:?????????
%
_user_specified_nameobservation
^

__inference_<lambda>_15752203*(
_construction_contextkEagerRuntime*
_input_shapes 
?O
?
*__inference_polymorphic_action_fn_15752351
	time_step
time_step_1
time_step_2
time_step_3_
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource:d\
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:dm
[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource:dj
\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource:
identity	??SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp?RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp?EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshapetime_step_3?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:??????????
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
3ActorDistributionNetwork/EncodingNetwork/dense/ReluRelu?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d?
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/dense/Relu:activations:0ZActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
DActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddMActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0[ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
CActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
=ActorDistributionNetwork/CategoricalProjectionNetwork/ReshapeReshapeMActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0LActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
fCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
\Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMaxArgMaxFActorDistributionNetwork/CategoricalProjectionNetwork/Reshape:output:0oCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????T
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
valueB ?
Deterministic/sample/ShapeShapeeCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0*
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
valueB:?
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
valueB ?
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
value	B : ?
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:?
 Deterministic/sample/BroadcastToBroadcastToeCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0$Deterministic/sample/concat:output:0*
T0	*'
_output_shapes
:?????????u
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
valueB:?
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
value	B : ?
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????Q
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????\
IdentityIdentityclip_by_value:z:0^NoOp*
T0	*#
_output_shapes
:??????????
NoOpNoOpT^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpS^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpF^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????:?????????:?????????:?????????: : : : 2?
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpSActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2?
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpRActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2?
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:RN
'
_output_shapes
:?????????
#
_user_specified_name	time_step
?
>
,__inference_function_with_signature_15752387

batch_size?
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
GPU 2J 8? */
f*R(
&__inference_get_initial_state_15752386*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
action?
4

0/discount&
action_0_discount:0?????????
>
0/observation-
action_0_observation:0?????????
0
0/reward$
action_0_reward:0?????????
6
0/step_type'
action_0_step_type:0?????????6
action,
StatefulPartitionedCall:0	?????????tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:?_
?

train_step
metadata
model_variables
_all_assets

signatures

Iaction
Jdistribution
Kget_initial_state
Lget_metadata
Mget_train_step"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
=
0
1
2
	3"
trackable_tuple_wrapper
'

0"
trackable_list_wrapper
`

Naction
Oget_initial_state
Pget_train_step
Qget_metadata"
signature_map
G:Ed25ActorDistributionNetwork/EncodingNetwork/dense/kernel
A:?d23ActorDistributionNetwork/EncodingNetwork/dense/bias
U:Sd2CActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel
O:M2AActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias
1
ref
1"
trackable_tuple_wrapper
2
_actor_network"
_generic_user_object
?
_encoder
_projection_networks
	variables
trainable_variables
regularization_losses
	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
?
_postprocessing_layers
	variables
trainable_variables
regularization_losses
	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
?
_projection_layer
	variables
trainable_variables
regularization_losses
	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
1
2
	3"
trackable_list_wrapper
<
0
1
2
	3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
.
"0
#1"
trackable_list_wrapper
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
?
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
?

kernel
	bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
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
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
)	variables
*trainable_variables
+regularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
2	variables
3trainable_variables
4regularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
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
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
6	variables
7trainable_variables
8regularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
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
?2?
*__inference_polymorphic_action_fn_15752470
*__inference_polymorphic_action_fn_15752525?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults?
? 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_polymorphic_distribution_fn_15752555?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults?
? 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_get_initial_state_15752558?
???
FullArgSpec!
args?
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_15752203"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_15752200"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_15752380
0/discount0/observation0/reward0/step_type"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_15752392
batch_size"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_15752407"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_15752414"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecU
argsM?J
jself
jobservations
j	step_type
jnetwork_state

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecU
argsM?J
jself
jobservations
j	step_type
jnetwork_state

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec?
args7?4
jself
jinputs
j
outer_rank

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec?
args7?4
jself
jinputs
j
outer_rank

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 <
__inference_<lambda>_15752200?

? 
? "? 	5
__inference_<lambda>_15752203?

? 
? "? S
&__inference_get_initial_state_15752558)"?
?
?

batch_size 
? "? ?
*__inference_polymorphic_action_fn_15752470?	???
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????4
observation%?"
observation?????????
? 
? "R?O

PolicyStep&
action?
action?????????	
state? 
info? ?
*__inference_polymorphic_action_fn_15752525?	???
???
???
TimeStep6
	step_type)?&
time_step/step_type?????????0
reward&?#
time_step/reward?????????4
discount(?%
time_step/discount?????????>
observation/?,
time_step/observation?????????
? 
? "R?O

PolicyStep&
action?
action?????????	
state? 
info? ?
0__inference_polymorphic_distribution_fn_15752555?	???
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????4
observation%?"
observation?????????
? 
? "???

PolicyStep?
action??????
`
B??

atol? 	

loc??????????	

rtol? 	
J?G

allow_nan_statsp

namejDeterministic_1

validate_argsp 
?
j
parameters
? 
?
jnameEtf_agents.policies.greedy_policy.DeterministicWithLogProb_ACTTypeSpec 
state? 
info? ?
&__inference_signature_wrapper_15752380?	???
? 
???
.

0/discount ?

0/discount?????????
8
0/observation'?$
0/observation?????????
*
0/reward?
0/reward?????????
0
0/step_type!?
0/step_type?????????"+?(
&
action?
action?????????	a
&__inference_signature_wrapper_1575239270?-
? 
&?#
!

batch_size?

batch_size "? Z
&__inference_signature_wrapper_157524070?

? 
? "?

int64?
int64 	>
&__inference_signature_wrapper_15752414?

? 
? "? 