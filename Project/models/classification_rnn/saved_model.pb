П╪
Ь 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.10.02unknown8вЛ
Ъ
!RMSprop/time_distributed/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!RMSprop/time_distributed/bias/rms
У
5RMSprop/time_distributed/bias/rms/Read/ReadVariableOpReadVariableOp!RMSprop/time_distributed/bias/rms*
_output_shapes
:*
dtype0
г
#RMSprop/time_distributed/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*4
shared_name%#RMSprop/time_distributed/kernel/rms
Ь
7RMSprop/time_distributed/kernel/rms/Read/ReadVariableOpReadVariableOp#RMSprop/time_distributed/kernel/rms*
_output_shapes
:	А*
dtype0
п
+RMSprop/simple_rnn/simple_rnn_cell/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*<
shared_name-+RMSprop/simple_rnn/simple_rnn_cell/bias/rms
и
?RMSprop/simple_rnn/simple_rnn_cell/bias/rms/Read/ReadVariableOpReadVariableOp+RMSprop/simple_rnn/simple_rnn_cell/bias/rms*
_output_shapes	
:А*
dtype0
╠
7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*H
shared_name97RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms
┼
KRMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms* 
_output_shapes
:
АА*
dtype0
╖
-RMSprop/simple_rnn/simple_rnn_cell/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*>
shared_name/-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms
░
ARMSprop/simple_rnn/simple_rnn_cell/kernel/rms/Read/ReadVariableOpReadVariableOp-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms*
_output_shapes
:	А*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
В
time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nametime_distributed/bias
{
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes
:*
dtype0
Л
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*(
shared_nametime_distributed/kernel
Д
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel*
_output_shapes
:	А*
dtype0
Ч
simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!simple_rnn/simple_rnn_cell/bias
Р
3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes	
:А*
dtype0
┤
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
н
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
Я
!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*2
shared_name#!simple_rnn/simple_rnn_cell/kernel
Ш
5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel*
_output_shapes
:	А*
dtype0
В
serving_default_input_1Placeholder*+
_output_shapes
:         *
dtype0* 
shape:         
с
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kerneltime_distributed/kerneltime_distributed/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_582403

NoOpNoOp
Ц-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╤,
value╟,B─, B╜,
Ъ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
Ы
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	layer*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
░
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
%trace_0
&trace_1
'trace_2
(trace_3* 
6
)trace_0
*trace_1
+trace_2
,trace_3* 
* 
z
-iter
	.decay
/learning_rate
0momentum
1rho	rmsr	rmss	rmst	rmsu	rmsv*

2serving_default* 

0
1
2*

0
1
2*
* 
Я

3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
9trace_0
:trace_1
;trace_2
<trace_3* 
6
=trace_0
>trace_1
?trace_2
@trace_3* 
╙
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G_random_generator

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 
У
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Mtrace_0
Ntrace_1* 

Otrace_0
Ptrace_1* 
ж
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

kernel
bias*
a[
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEtime_distributed/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEtime_distributed/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

W0
X1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1
2*

0
1
2*
* 
У
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

^trace_0
_trace_1* 

`trace_0
atrace_1* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
У
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

gtrace_0* 

htrace_0* 
8
i	variables
j	keras_api
	ktotal
	lcount*
H
m	variables
n	keras_api
	ototal
	pcount
q
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

k0
l1*

i	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

m	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
МЕ
VARIABLE_VALUE-RMSprop/simple_rnn/simple_rnn_cell/kernel/rmsDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ЦП
VARIABLE_VALUE7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE+RMSprop/simple_rnn/simple_rnn_cell/bias/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE#RMSprop/time_distributed/kernel/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE!RMSprop/time_distributed/bias/rmsDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ы	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOp?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOp3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpARMSprop/simple_rnn/simple_rnn_cell/kernel/rms/Read/ReadVariableOpKRMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms/Read/ReadVariableOp?RMSprop/simple_rnn/simple_rnn_cell/bias/rms/Read/ReadVariableOp7RMSprop/time_distributed/kernel/rms/Read/ReadVariableOp5RMSprop/time_distributed/bias/rms/Read/ReadVariableOpConst* 
Tin
2	*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_583375
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/biastime_distributed/kerneltime_distributed/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototal_1count_1totalcount-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms+RMSprop/simple_rnn/simple_rnn_cell/bias/rms#RMSprop/time_distributed/kernel/rms!RMSprop/time_distributed/bias/rms*
Tin
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_583442ща
В
°
F__inference_sequential_layer_call_and_return_conditional_losses_582362
input_1$
simple_rnn_582347:	А 
simple_rnn_582349:	А%
simple_rnn_582351:
АА*
time_distributed_582354:	А%
time_distributed_582356:
identityИв"simple_rnn/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallУ
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1simple_rnn_582347simple_rnn_582349simple_rnn_582351*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582122╣
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0time_distributed_582354time_distributed_582356*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_581962o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   м
time_distributed/ReshapeReshape+simple_rnn/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         АД
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         Ц
NoOpNoOp#^simple_rnn/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1
юe
┬
!__inference__wrapped_model_581634
input_1W
Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:	АT
Esequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	АZ
Fsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
ААS
@sequential_time_distributed_dense_matmul_readvariableop_resource:	АO
Asequential_time_distributed_dense_biasadd_readvariableop_resource:
identityИв<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpв;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpв=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpвsequential/simple_rnn/whileв8sequential/time_distributed/dense/BiasAdd/ReadVariableOpв7sequential/time_distributed/dense/MatMul/ReadVariableOpR
sequential/simple_rnn/ShapeShapeinput_1*
T0*
_output_shapes
:s
)sequential/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential/simple_rnn/strided_sliceStridedSlice$sequential/simple_rnn/Shape:output:02sequential/simple_rnn/strided_slice/stack:output:04sequential/simple_rnn/strided_slice/stack_1:output:04sequential/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А╡
"sequential/simple_rnn/zeros/packedPack,sequential/simple_rnn/strided_slice:output:0-sequential/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    п
sequential/simple_rnn/zerosFill+sequential/simple_rnn/zeros/packed:output:0*sequential/simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:         Аy
$sequential/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
sequential/simple_rnn/transpose	Transposeinput_1-sequential/simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:         p
sequential/simple_rnn/Shape_1Shape#sequential/simple_rnn/transpose:y:0*
T0*
_output_shapes
:u
+sequential/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential/simple_rnn/strided_slice_1StridedSlice&sequential/simple_rnn/Shape_1:output:04sequential/simple_rnn/strided_slice_1/stack:output:06sequential/simple_rnn/strided_slice_1/stack_1:output:06sequential/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ў
#sequential/simple_rnn/TensorArrayV2TensorListReserve:sequential/simple_rnn/TensorArrayV2/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ь
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       в
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/simple_rnn/transpose:y:0Tsequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥u
+sequential/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╫
%sequential/simple_rnn/strided_slice_2StridedSlice#sequential/simple_rnn/transpose:y:04sequential/simple_rnn/strided_slice_2/stack:output:06sequential/simple_rnn/strided_slice_2/stack_1:output:06sequential/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┴
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpDsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0▐
,sequential/simple_rnn/simple_rnn_cell/MatMulMatMul.sequential/simple_rnn/strided_slice_2:output:0Csequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А┐
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0щ
-sequential/simple_rnn/simple_rnn_cell/BiasAddBiasAdd6sequential/simple_rnn/simple_rnn_cell/MatMul:product:0Dsequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╞
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╪
.sequential/simple_rnn/simple_rnn_cell/MatMul_1MatMul$sequential/simple_rnn/zeros:output:0Esequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╫
)sequential/simple_rnn/simple_rnn_cell/addAddV26sequential/simple_rnn/simple_rnn_cell/BiasAdd:output:08sequential/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         АФ
*sequential/simple_rnn/simple_rnn_cell/TanhTanh-sequential/simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         АД
3sequential/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ·
%sequential/simple_rnn/TensorArrayV2_1TensorListReserve<sequential/simple_rnn/TensorArrayV2_1/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥\
sequential/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
sequential/simple_rnn/whileWhile1sequential/simple_rnn/while/loop_counter:output:07sequential/simple_rnn/while/maximum_iterations:output:0#sequential/simple_rnn/time:output:0.sequential/simple_rnn/TensorArrayV2_1:handle:0$sequential/simple_rnn/zeros:output:0.sequential/simple_rnn/strided_slice_1:output:0Msequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'sequential_simple_rnn_while_body_581555*3
cond+R)
'sequential_simple_rnn_while_cond_581554*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Ч
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   Е
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/simple_rnn/while:output:3Osequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0~
+sequential/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
%sequential/simple_rnn/strided_slice_3StridedSliceAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04sequential/simple_rnn/strided_slice_3/stack:output:06sequential/simple_rnn/strided_slice_3/stack_1:output:06sequential/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask{
&sequential/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ┘
!sequential/simple_rnn/transpose_1	TransposeAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аz
)sequential/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╝
#sequential/time_distributed/ReshapeReshape%sequential/simple_rnn/transpose_1:y:02sequential/time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         А╣
7sequential/time_distributed/dense/MatMul/ReadVariableOpReadVariableOp@sequential_time_distributed_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0╙
(sequential/time_distributed/dense/MatMulMatMul,sequential/time_distributed/Reshape:output:0?sequential/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╢
8sequential/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0▄
)sequential/time_distributed/dense/BiasAddBiasAdd2sequential/time_distributed/dense/MatMul:product:0@sequential/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ъ
)sequential/time_distributed/dense/SoftmaxSoftmax2sequential/time_distributed/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         А
+sequential/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╤
%sequential/time_distributed/Reshape_1Reshape3sequential/time_distributed/dense/Softmax:softmax:04sequential/time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         |
+sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   └
%sequential/time_distributed/Reshape_2Reshape%sequential/simple_rnn/transpose_1:y:04sequential/time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         АБ
IdentityIdentity.sequential/time_distributed/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:         Ц
NoOpNoOp=^sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<^sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp>^sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn/while9^sequential/time_distributed/dense/BiasAdd/ReadVariableOp8^sequential/time_distributed/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2|
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2z
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2~
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2:
sequential/simple_rnn/whilesequential/simple_rnn/while2t
8sequential/time_distributed/dense/BiasAdd/ReadVariableOp8sequential/time_distributed/dense/BiasAdd/ReadVariableOp2r
7sequential/time_distributed/dense/MatMul/ReadVariableOp7sequential/time_distributed/dense/MatMul/ReadVariableOp:T P
+
_output_shapes
:         
!
_user_specified_name	input_1
м
Ц
L__inference_time_distributed_layer_call_and_return_conditional_losses_583191

inputs7
$dense_matmul_readvariableop_resource:	А3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         АБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:         \
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ж
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  Г
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:                  А: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
╫X
э
F__inference_sequential_layer_call_and_return_conditional_losses_582675

inputsL
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:	АI
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	АO
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
ААH
5time_distributed_dense_matmul_readvariableop_resource:	АD
6time_distributed_dense_biasadd_readvariableop_resource:
identityИв1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpв0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpв2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpвsimple_rnn/whileв-time_distributed/dense/BiasAdd/ReadVariableOpв,time_distributed/dense/MatMul/ReadVariableOpF
simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АФ
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    О
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:         Аn
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Г
simple_rnn/transpose	Transposeinputs"simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:         Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╒
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥С
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Б
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskл
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0╜
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ай
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╚
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А░
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╖
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╢
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         А~
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Аy
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ┘
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         _
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : у
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *(
body R
simple_rnn_while_body_582596*(
cond R
simple_rnn_while_cond_582595*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations М
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ф
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╕
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аo
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   Ы
time_distributed/ReshapeReshapesimple_rnn/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         Аг
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0▓
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
time_distributed/dense/SoftmaxSoftmax'time_distributed/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         u
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ░
time_distributed/Reshape_1Reshape(time_distributed/dense/Softmax:softmax:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   Я
time_distributed/Reshape_2Reshapesimple_rnn/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         Аv
IdentityIdentity#time_distributed/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:         ╘
NoOpNoOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
э<
▒
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582122

inputsA
.simple_rnn_cell_matmul_readvariableop_resource:	А>
/simple_rnn_cell_biasadd_readvariableop_resource:	АD
0simple_rnn_cell_matmul_1_readvariableop_resource:
АА
identityИв&simple_rnn_cell/BiasAdd/ReadVariableOpв%simple_rnn_cell/MatMul/ReadVariableOpв'simple_rnn_cell/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskХ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ь
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЪ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ц
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аh
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_582056*
condR
while_cond_582055*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аc
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         А╔
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
М
ъ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_581682

inputs

states1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         АH
TanhTanhadd:z:0*
T0*(
_output_shapes
:         АX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         АZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         АС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_namestates
п
╠
'sequential_simple_rnn_while_cond_581554H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2J
Fsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_581554___redundant_placeholder0`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_581554___redundant_placeholder1`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_581554___redundant_placeholder2`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_581554___redundant_placeholder3(
$sequential_simple_rnn_while_identity
║
 sequential/simple_rnn/while/LessLess'sequential_simple_rnn_while_placeholderFsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1*
T0*
_output_shapes
: w
$sequential/simple_rnn/while/IdentityIdentity$sequential/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
▄
к
while_cond_583084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_583084___redundant_placeholder04
0while_while_cond_583084___redundant_placeholder14
0while_while_cond_583084___redundant_placeholder24
0while_while_cond_583084___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
ц+
╛
while_body_582761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	АF
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	АL
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	АD
5while_simple_rnn_cell_biasadd_readvariableop_resource:	АJ
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИв,while/simple_rnn_cell/BiasAdd/ReadVariableOpв+while/simple_rnn_cell/MatMul/ReadVariableOpв-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0└
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╣
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аи
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0з
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аз
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аt
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         А╟
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         А┘

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Т
╚
L__inference_time_distributed_layer_call_and_return_conditional_losses_581962

inputs
dense_581952:	А
dense_581954:
identityИвdense/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         Аю
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_581952dense_581954*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_581951\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Х
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:                  А: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
ц+
╛
while_body_582977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	АF
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	АL
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	АD
5while_simple_rnn_cell_biasadd_readvariableop_resource:	АJ
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИв,while/simple_rnn_cell/BiasAdd/ReadVariableOpв+while/simple_rnn_cell/MatMul/ReadVariableOpв-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0└
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╣
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аи
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0з
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аз
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аt
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         А╟
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         А┘

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
▐
ё
+__inference_sequential_layer_call_fn_582151
input_1
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_582138s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1
И
╣
+__inference_simple_rnn_layer_call_fn_582719

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582272t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ц+
╛
while_body_583085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	АF
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	АL
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	АD
5while_simple_rnn_cell_biasadd_readvariableop_resource:	АJ
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИв,while/simple_rnn_cell/BiasAdd/ReadVariableOpв+while/simple_rnn_cell/MatMul/ReadVariableOpв-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0└
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╣
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аи
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0з
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аз
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аt
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         А╟
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         А┘

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
▓
╗
+__inference_simple_rnn_layer_call_fn_582686
inputs_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_581758}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
л=
│
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582935
inputs_0A
.simple_rnn_cell_matmul_readvariableop_resource:	А>
/simple_rnn_cell_biasadd_readvariableop_resource:	АD
0simple_rnn_cell_matmul_1_readvariableop_resource:
АА
identityИв&simple_rnn_cell/BiasAdd/ReadVariableOpв%simple_rnn_cell/MatMul/ReadVariableOpв'simple_rnn_cell/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskХ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ь
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЪ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ц
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аh
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_582869*
condR
while_cond_582868*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Аl
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  А╔
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
К6
И
simple_rnn_while_body_5825962
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0T
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:	АQ
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	АW
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorR
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:	АO
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	АU
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИв7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpв6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpв8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpУ
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ▌
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╣
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0с
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╖
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0┌
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╛
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0╚
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╚
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         АК
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Ає
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :У
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: Ц
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: з
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: Э
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:         АЕ
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"Ж
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"И
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"Д
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"╘
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
эN
╚
"__inference__traced_restore_583442
file_prefixE
2assignvariableop_simple_rnn_simple_rnn_cell_kernel:	АR
>assignvariableop_1_simple_rnn_simple_rnn_cell_recurrent_kernel:
ААA
2assignvariableop_2_simple_rnn_simple_rnn_cell_bias:	А=
*assignvariableop_3_time_distributed_kernel:	А6
(assignvariableop_4_time_distributed_bias:)
assignvariableop_5_rmsprop_iter:	 *
 assignvariableop_6_rmsprop_decay: 2
(assignvariableop_7_rmsprop_learning_rate: -
#assignvariableop_8_rmsprop_momentum: (
assignvariableop_9_rmsprop_rho: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: #
assignvariableop_12_total: #
assignvariableop_13_count: T
Aassignvariableop_14_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms:	А_
Kassignvariableop_15_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms:
ААN
?assignvariableop_16_rmsprop_simple_rnn_simple_rnn_cell_bias_rms:	АJ
7assignvariableop_17_rmsprop_time_distributed_kernel_rms:	АC
5assignvariableop_18_rmsprop_time_distributed_bias_rms:
identity_20ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9я
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Х
valueЛBИB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHШ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B В
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOpAssignVariableOp2assignvariableop_simple_rnn_simple_rnn_cell_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_1AssignVariableOp>assignvariableop_1_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_2AssignVariableOp2assignvariableop_2_simple_rnn_simple_rnn_cell_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_3AssignVariableOp*assignvariableop_3_time_distributed_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_4AssignVariableOp(assignvariableop_4_time_distributed_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_5AssignVariableOpassignvariableop_5_rmsprop_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_6AssignVariableOp assignvariableop_6_rmsprop_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_7AssignVariableOp(assignvariableop_7_rmsprop_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_8AssignVariableOp#assignvariableop_8_rmsprop_momentumIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_rmsprop_rhoIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_14AssignVariableOpAassignvariableop_14_rmsprop_simple_rnn_simple_rnn_cell_kernel_rmsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_15AssignVariableOpKassignvariableop_15_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:░
AssignVariableOp_16AssignVariableOp?assignvariableop_16_rmsprop_simple_rnn_simple_rnn_cell_bias_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_17AssignVariableOp7assignvariableop_17_rmsprop_time_distributed_kernel_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_18AssignVariableOp5assignvariableop_18_rmsprop_time_distributed_bias_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ё
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: ▐
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
√3
Х
F__inference_simple_rnn_layer_call_and_return_conditional_losses_581758

inputs)
simple_rnn_cell_581683:	А%
simple_rnn_cell_581685:	А*
simple_rnn_cell_581687:
АА
identityИв'simple_rnn_cell/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask▀
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_581683simple_rnn_cell_581685simple_rnn_cell_581687*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_581682n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Й
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_581683simple_rnn_cell_581685simple_rnn_cell_581687*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_581695*
condR
while_cond_581694*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Аl
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  Аx
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Й
Я
1__inference_time_distributed_layer_call_fn_583160

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_581962|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:                  А: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
б

є
A__inference_dense_layer_call_and_return_conditional_losses_583295

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▄
к
while_cond_582055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_582055___redundant_placeholder04
0while_while_cond_582055___redundant_placeholder14
0while_while_cond_582055___redundant_placeholder24
0while_while_cond_582055___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
В
°
F__inference_sequential_layer_call_and_return_conditional_losses_582380
input_1$
simple_rnn_582365:	А 
simple_rnn_582367:	А%
simple_rnn_582369:
АА*
time_distributed_582372:	А%
time_distributed_582374:
identityИв"simple_rnn/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallУ
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1simple_rnn_582365simple_rnn_582367simple_rnn_582369*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582272╣
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0time_distributed_582372time_distributed_582374*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_582001o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   м
time_distributed/ReshapeReshape+simple_rnn/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         АД
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         Ц
NoOpNoOp#^simple_rnn/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1
ц+
╛
while_body_582056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	АF
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	АL
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	АD
5while_simple_rnn_cell_biasadd_readvariableop_resource:	АJ
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИв,while/simple_rnn_cell/BiasAdd/ReadVariableOpв+while/simple_rnn_cell/MatMul/ReadVariableOpв-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0└
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╣
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аи
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0з
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аз
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аt
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         А╟
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         А┘

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╙/
к	
__inference__traced_save_583375
file_prefix@
<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopJ
Fsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop>
:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopL
Hsavev2_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms_read_readvariableopV
Rsavev2_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms_read_readvariableopJ
Fsavev2_rmsprop_simple_rnn_simple_rnn_cell_bias_rms_read_readvariableopB
>savev2_rmsprop_time_distributed_kernel_rms_read_readvariableop@
<savev2_rmsprop_time_distributed_bias_rms_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ь
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Х
valueЛBИB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHХ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ╡	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopFsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopHsavev2_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms_read_readvariableopRsavev2_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms_read_readvariableopFsavev2_rmsprop_simple_rnn_simple_rnn_cell_bias_rms_read_readvariableop>savev2_rmsprop_time_distributed_kernel_rms_read_readvariableop<savev2_rmsprop_time_distributed_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*З
_input_shapesv
t: :	А:
АА:А:	А:: : : : : : : : : :	А:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: 
╒ 
╦
while_body_581854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_581876_0:	А-
while_simple_rnn_cell_581878_0:	А2
while_simple_rnn_cell_581880_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_581876:	А+
while_simple_rnn_cell_581878:	А0
while_simple_rnn_cell_581880:
ААИв-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_581876_0while_simple_rnn_cell_581878_0while_simple_rnn_cell_581880_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_581802▀
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ф
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         А|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_581876while_simple_rnn_cell_581876_0">
while_simple_rnn_cell_581878while_simple_rnn_cell_581878_0">
while_simple_rnn_cell_581880while_simple_rnn_cell_581880_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Ж

√
simple_rnn_while_cond_5824742
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1J
Fsimple_rnn_while_simple_rnn_while_cond_582474___redundant_placeholder0J
Fsimple_rnn_while_simple_rnn_while_cond_582474___redundant_placeholder1J
Fsimple_rnn_while_simple_rnn_while_cond_582474___redundant_placeholder2J
Fsimple_rnn_while_simple_rnn_while_cond_582474___redundant_placeholder3
simple_rnn_while_identity
О
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
▄
к
while_cond_582760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_582760___redundant_placeholder04
0while_while_cond_582760___redundant_placeholder14
0while_while_cond_582760___redundant_placeholder24
0while_while_cond_582760___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
ц+
╛
while_body_582869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	АF
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	АL
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	АD
5while_simple_rnn_cell_biasadd_readvariableop_resource:	АJ
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИв,while/simple_rnn_cell/BiasAdd/ReadVariableOpв+while/simple_rnn_cell/MatMul/ReadVariableOpв-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0└
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╣
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аи
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0з
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аз
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аt
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         А╟
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         А┘

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
┐
Ф
&__inference_dense_layer_call_fn_583284

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_581951o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
л=
│
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582827
inputs_0A
.simple_rnn_cell_matmul_readvariableop_resource:	А>
/simple_rnn_cell_biasadd_readvariableop_resource:	АD
0simple_rnn_cell_matmul_1_readvariableop_resource:
АА
identityИв&simple_rnn_cell/BiasAdd/ReadVariableOpв%simple_rnn_cell/MatMul/ReadVariableOpв'simple_rnn_cell/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskХ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ь
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЪ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ц
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аh
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_582761*
condR
while_cond_582760*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Аl
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  А╔
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
э<
▒
F__inference_simple_rnn_layer_call_and_return_conditional_losses_583151

inputsA
.simple_rnn_cell_matmul_readvariableop_resource:	А>
/simple_rnn_cell_biasadd_readvariableop_resource:	АD
0simple_rnn_cell_matmul_1_readvariableop_resource:
АА
identityИв&simple_rnn_cell/BiasAdd/ReadVariableOpв%simple_rnn_cell/MatMul/ReadVariableOpв'simple_rnn_cell/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskХ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ь
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЪ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ц
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аh
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_583085*
condR
while_cond_583084*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аc
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         А╔
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т
ь
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_583258

inputs
states_01
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         АH
TanhTanhadd:z:0*
T0*(
_output_shapes
:         АX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         АZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         АС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0
э<
▒
F__inference_simple_rnn_layer_call_and_return_conditional_losses_583043

inputsA
.simple_rnn_cell_matmul_readvariableop_resource:	А>
/simple_rnn_cell_biasadd_readvariableop_resource:	АD
0simple_rnn_cell_matmul_1_readvariableop_resource:
АА
identityИв&simple_rnn_cell/BiasAdd/ReadVariableOpв%simple_rnn_cell/MatMul/ReadVariableOpв'simple_rnn_cell/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskХ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ь
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЪ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ц
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аh
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_582977*
condR
while_cond_582976*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аc
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         А╔
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
К6
И
simple_rnn_while_body_5824752
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0T
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:	АQ
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	АW
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorR
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:	АO
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	АU
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИв7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpв6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpв8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpУ
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ▌
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╣
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0с
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╖
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0┌
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╛
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0╚
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╚
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         АК
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Ає
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :У
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: Ц
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: з
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: Э
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:         АЕ
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"Ж
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"И
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"Д
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"╘
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
√3
Х
F__inference_simple_rnn_layer_call_and_return_conditional_losses_581917

inputs)
simple_rnn_cell_581842:	А%
simple_rnn_cell_581844:	А*
simple_rnn_cell_581846:
АА
identityИв'simple_rnn_cell/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask▀
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_581842simple_rnn_cell_581844simple_rnn_cell_581846*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_581802n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Й
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_581842simple_rnn_cell_581844simple_rnn_cell_581846*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_581854*
condR
while_cond_581853*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Аl
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  Аx
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
█
Ё
+__inference_sequential_layer_call_fn_582418

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_582138s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
б

є
A__inference_dense_layer_call_and_return_conditional_losses_581951

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┐

▄
0__inference_simple_rnn_cell_layer_call_fn_583227

inputs
states_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identity

identity_1ИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_581682p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0
╫X
э
F__inference_sequential_layer_call_and_return_conditional_losses_582554

inputsL
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:	АI
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	АO
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
ААH
5time_distributed_dense_matmul_readvariableop_resource:	АD
6time_distributed_dense_biasadd_readvariableop_resource:
identityИв1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpв0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpв2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpвsimple_rnn/whileв-time_distributed/dense/BiasAdd/ReadVariableOpв,time_distributed/dense/MatMul/ReadVariableOpF
simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АФ
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    О
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:         Аn
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Г
simple_rnn/transpose	Transposeinputs"simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:         Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╒
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥С
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Б
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskл
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0╜
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ай
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╚
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А░
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╖
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╢
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         А~
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Аy
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ┘
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         _
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : у
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *(
body R
simple_rnn_while_body_582475*(
cond R
simple_rnn_while_cond_582474*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations М
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ф
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╕
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аo
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   Ы
time_distributed/ReshapeReshapesimple_rnn/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         Аг
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0▓
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
time_distributed/dense/SoftmaxSoftmax'time_distributed/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         u
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ░
time_distributed/Reshape_1Reshape(time_distributed/dense/Softmax:softmax:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   Я
time_distributed/Reshape_2Reshapesimple_rnn/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         Аv
IdentityIdentity#time_distributed/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:         ╘
NoOpNoOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▄
к
while_cond_582868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_582868___redundant_placeholder04
0while_while_cond_582868___redundant_placeholder14
0while_while_cond_582868___redundant_placeholder24
0while_while_cond_582868___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
И
╣
+__inference_simple_rnn_layer_call_fn_582708

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582122t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
э<
▒
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582272

inputsA
.simple_rnn_cell_matmul_readvariableop_resource:	А>
/simple_rnn_cell_biasadd_readvariableop_resource:	АD
0simple_rnn_cell_matmul_1_readvariableop_resource:
АА
identityИв&simple_rnn_cell/BiasAdd/ReadVariableOpв%simple_rnn_cell/MatMul/ReadVariableOpв'simple_rnn_cell/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskХ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ь
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЪ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ц
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аh
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_582206*
condR
while_cond_582205*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аc
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         А╔
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▐
ё
+__inference_sequential_layer_call_fn_582344
input_1
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_582316s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1
ц+
╛
while_body_582206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	АF
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	АL
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	АD
5while_simple_rnn_cell_biasadd_readvariableop_resource:	АJ
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИв,while/simple_rnn_cell/BiasAdd/ReadVariableOpв+while/simple_rnn_cell/MatMul/ReadVariableOpв-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0└
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╣
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аи
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0з
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аз
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аt
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         А╟
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:         А┘

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
М
ъ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_581802

inputs

states1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         АH
TanhTanhadd:z:0*
T0*(
_output_shapes
:         АX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         АZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         АС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_namestates
▓
╗
+__inference_simple_rnn_layer_call_fn_582697
inputs_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_581917}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Т
ь
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_583275

inputs
states_01
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аe
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         АH
TanhTanhadd:z:0*
T0*(
_output_shapes
:         АX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         АZ

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:         АС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0
 
ў
F__inference_sequential_layer_call_and_return_conditional_losses_582138

inputs$
simple_rnn_582123:	А 
simple_rnn_582125:	А%
simple_rnn_582127:
АА*
time_distributed_582130:	А%
time_distributed_582132:
identityИв"simple_rnn/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallТ
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_582123simple_rnn_582125simple_rnn_582127*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582122╣
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0time_distributed_582130time_distributed_582132*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_581962o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   м
time_distributed/ReshapeReshape+simple_rnn/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         АД
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         Ц
NoOpNoOp#^simple_rnn/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
 
ў
F__inference_sequential_layer_call_and_return_conditional_losses_582316

inputs$
simple_rnn_582301:	А 
simple_rnn_582303:	А%
simple_rnn_582305:
АА*
time_distributed_582308:	А%
time_distributed_582310:
identityИв"simple_rnn/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallТ
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_582301simple_rnn_582303simple_rnn_582305*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582272╣
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0time_distributed_582308time_distributed_582310*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_582001o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   м
time_distributed/ReshapeReshape+simple_rnn/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         АД
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         Ц
NoOpNoOp#^simple_rnn/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▄
к
while_cond_581694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_581694___redundant_placeholder04
0while_while_cond_581694___redundant_placeholder14
0while_while_cond_581694___redundant_placeholder24
0while_while_cond_581694___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
▓
ъ
$__inference_signature_wrapper_582403
input_1
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_581634s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1
╒ 
╦
while_body_581695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_581717_0:	А-
while_simple_rnn_cell_581719_0:	А2
while_simple_rnn_cell_581721_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_581717:	А+
while_simple_rnn_cell_581719:	А0
while_simple_rnn_cell_581721:
ААИв-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_581717_0while_simple_rnn_cell_581719_0while_simple_rnn_cell_581721_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_581682▀
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ф
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         А|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_581717while_simple_rnn_cell_581717_0">
while_simple_rnn_cell_581719while_simple_rnn_cell_581719_0">
while_simple_rnn_cell_581721while_simple_rnn_cell_581721_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
▄
к
while_cond_582205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_582205___redundant_placeholder04
0while_while_cond_582205___redundant_placeholder14
0while_while_cond_582205___redundant_placeholder24
0while_while_cond_582205___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
█
Ё
+__inference_sequential_layer_call_fn_582433

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_582316s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
░@
╘
'sequential_simple_rnn_while_body_581555H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2G
Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0Г
sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:	А\
Msequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	Аb
Nsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
АА(
$sequential_simple_rnn_while_identity*
&sequential_simple_rnn_while_identity_1*
&sequential_simple_rnn_while_identity_2*
&sequential_simple_rnn_while_identity_3*
&sequential_simple_rnn_while_identity_4E
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1Б
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor]
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:	АZ
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	А`
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
ААИвBsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpвAsequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpвCsequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpЮ
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ф
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0'sequential_simple_rnn_while_placeholderVsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╧
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0В
2sequential/simple_rnn/while/simple_rnn_cell/MatMulMatMulFsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А═
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0√
3sequential/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd<sequential/simple_rnn/while/simple_rnn_cell/MatMul:product:0Jsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╘
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0щ
4sequential/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul)sequential_simple_rnn_while_placeholder_2Ksequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ащ
/sequential/simple_rnn/while/simple_rnn_cell/addAddV2<sequential/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0>sequential/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Аа
0sequential/simple_rnn/while/simple_rnn_cell/TanhTanh3sequential/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:         АЯ
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_simple_rnn_while_placeholder_1'sequential_simple_rnn_while_placeholder4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥c
!sequential/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
sequential/simple_rnn/while/addAddV2'sequential_simple_rnn_while_placeholder*sequential/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential/simple_rnn/while/add_1AddV2Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counter,sequential/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
$sequential/simple_rnn/while/IdentityIdentity%sequential/simple_rnn/while/add_1:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: ┬
&sequential/simple_rnn/while/Identity_1IdentityJsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: Ы
&sequential/simple_rnn/while/Identity_2Identity#sequential/simple_rnn/while/add:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: ╚
&sequential/simple_rnn/while/Identity_3IdentityPsequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: ╛
&sequential/simple_rnn/while/Identity_4Identity4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0!^sequential/simple_rnn/while/NoOp*
T0*(
_output_shapes
:         А▒
 sequential/simple_rnn/while/NoOpNoOpC^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0"Y
&sequential_simple_rnn_while_identity_1/sequential/simple_rnn/while/Identity_1:output:0"Y
&sequential_simple_rnn_while_identity_2/sequential/simple_rnn/while/Identity_2:output:0"Y
&sequential_simple_rnn_while_identity_3/sequential/simple_rnn/while/Identity_3:output:0"Y
&sequential_simple_rnn_while_identity_4/sequential/simple_rnn/while/Identity_4:output:0"И
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0"Ь
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Ю
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"Ъ
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"А
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2И
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpBsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2Ж
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpAsequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2К
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpCsequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
▄
к
while_cond_582976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_582976___redundant_placeholder04
0while_while_cond_582976___redundant_placeholder14
0while_while_cond_582976___redundant_placeholder24
0while_while_cond_582976___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Т
╚
L__inference_time_distributed_layer_call_and_return_conditional_losses_582001

inputs
dense_581991:	А
dense_581993:
identityИвdense/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         Аю
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_581991dense_581993*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_581951\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Х
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:                  А: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
▄
к
while_cond_581853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_581853___redundant_placeholder04
0while_while_cond_581853___redundant_placeholder14
0while_while_cond_581853___redundant_placeholder24
0while_while_cond_581853___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Ж

√
simple_rnn_while_cond_5825952
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1J
Fsimple_rnn_while_simple_rnn_while_cond_582595___redundant_placeholder0J
Fsimple_rnn_while_simple_rnn_while_cond_582595___redundant_placeholder1J
Fsimple_rnn_while_simple_rnn_while_cond_582595___redundant_placeholder2J
Fsimple_rnn_while_simple_rnn_while_cond_582595___redundant_placeholder3
simple_rnn_while_identity
О
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
┐

▄
0__inference_simple_rnn_cell_layer_call_fn_583241

inputs
states_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identity

identity_1ИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_581802p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0
м
Ц
L__inference_time_distributed_layer_call_and_return_conditional_losses_583213

inputs7
$dense_matmul_readvariableop_resource:	А3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         АБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:         \
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ж
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  Г
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:                  А: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
Й
Я
1__inference_time_distributed_layer_call_fn_583169

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_582001|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:                  А: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultз
?
input_14
serving_default_input_1:0         H
time_distributed4
StatefulPartitionedCall:0         tensorflow/serving/predict:┘▒
┤
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
├
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
░
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	layer"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
%trace_0
&trace_1
'trace_2
(trace_32Ў
+__inference_sequential_layer_call_fn_582151
+__inference_sequential_layer_call_fn_582418
+__inference_sequential_layer_call_fn_582433
+__inference_sequential_layer_call_fn_582344┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z%trace_0z&trace_1z'trace_2z(trace_3
═
)trace_0
*trace_1
+trace_2
,trace_32т
F__inference_sequential_layer_call_and_return_conditional_losses_582554
F__inference_sequential_layer_call_and_return_conditional_losses_582675
F__inference_sequential_layer_call_and_return_conditional_losses_582362
F__inference_sequential_layer_call_and_return_conditional_losses_582380┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z)trace_0z*trace_1z+trace_2z,trace_3
╠B╔
!__inference__wrapped_model_581634input_1"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Й
-iter
	.decay
/learning_rate
0momentum
1rho	rmsr	rmss	rmst	rmsu	rmsv"
	optimizer
,
2serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ў
9trace_0
:trace_1
;trace_2
<trace_32Л
+__inference_simple_rnn_layer_call_fn_582686
+__inference_simple_rnn_layer_call_fn_582697
+__inference_simple_rnn_layer_call_fn_582708
+__inference_simple_rnn_layer_call_fn_582719╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z9trace_0z:trace_1z;trace_2z<trace_3
т
=trace_0
>trace_1
?trace_2
@trace_32ў
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582827
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582935
F__inference_simple_rnn_layer_call_and_return_conditional_losses_583043
F__inference_simple_rnn_layer_call_and_return_conditional_losses_583151╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z=trace_0z>trace_1z?trace_2z@trace_3
ш
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G_random_generator

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▀
Mtrace_0
Ntrace_12и
1__inference_time_distributed_layer_call_fn_583160
1__inference_time_distributed_layer_call_fn_583169┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zMtrace_0zNtrace_1
Х
Otrace_0
Ptrace_12▐
L__inference_time_distributed_layer_call_and_return_conditional_losses_583191
L__inference_time_distributed_layer_call_and_return_conditional_losses_583213┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zOtrace_0zPtrace_1
╗
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
4:2	А2!simple_rnn/simple_rnn_cell/kernel
?:=
АА2+simple_rnn/simple_rnn_cell/recurrent_kernel
.:,А2simple_rnn/simple_rnn_cell/bias
*:(	А2time_distributed/kernel
#:!2time_distributed/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B·
+__inference_sequential_layer_call_fn_582151input_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
+__inference_sequential_layer_call_fn_582418inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
+__inference_sequential_layer_call_fn_582433inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
+__inference_sequential_layer_call_fn_582344input_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
F__inference_sequential_layer_call_and_return_conditional_losses_582554inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
F__inference_sequential_layer_call_and_return_conditional_losses_582675inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
F__inference_sequential_layer_call_and_return_conditional_losses_582362input_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
F__inference_sequential_layer_call_and_return_conditional_losses_582380input_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
╦B╚
$__inference_signature_wrapper_582403input_1"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
УBР
+__inference_simple_rnn_layer_call_fn_582686inputs/0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
УBР
+__inference_simple_rnn_layer_call_fn_582697inputs/0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
+__inference_simple_rnn_layer_call_fn_582708inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
+__inference_simple_rnn_layer_call_fn_582719inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
оBл
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582827inputs/0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
оBл
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582935inputs/0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
мBй
F__inference_simple_rnn_layer_call_and_return_conditional_losses_583043inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
мBй
F__inference_simple_rnn_layer_call_and_return_conditional_losses_583151inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
█
^trace_0
_trace_12д
0__inference_simple_rnn_cell_layer_call_fn_583227
0__inference_simple_rnn_cell_layer_call_fn_583241╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z^trace_0z_trace_1
С
`trace_0
atrace_12┌
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_583258
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_583275╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z`trace_0zatrace_1
"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ВB 
1__inference_time_distributed_layer_call_fn_583160inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
1__inference_time_distributed_layer_call_fn_583169inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
L__inference_time_distributed_layer_call_and_return_conditional_losses_583191inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
L__inference_time_distributed_layer_call_and_return_conditional_losses_583213inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
ъ
gtrace_02═
&__inference_dense_layer_call_fn_583284в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0
Е
htrace_02ш
A__inference_dense_layer_call_and_return_conditional_losses_583295в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zhtrace_0
N
i	variables
j	keras_api
	ktotal
	lcount"
_tf_keras_metric
^
m	variables
n	keras_api
	ototal
	pcount
q
_fn_kwargs"
_tf_keras_metric
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
ЙBЖ
0__inference_simple_rnn_cell_layer_call_fn_583227inputsstates/0"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЙBЖ
0__inference_simple_rnn_cell_layer_call_fn_583241inputsstates/0"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
дBб
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_583258inputsstates/0"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
дBб
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_583275inputsstates/0"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
&__inference_dense_layer_call_fn_583284inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_dense_layer_call_and_return_conditional_losses_583295inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
k0
l1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
:  (2total
:  (2count
.
o0
p1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
>:<	А2-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms
I:G
АА27RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms
8:6А2+RMSprop/simple_rnn/simple_rnn_cell/bias/rms
4:2	А2#RMSprop/time_distributed/kernel/rms
-:+2!RMSprop/time_distributed/bias/rmsм
!__inference__wrapped_model_581634Ж4в1
*в'
%К"
input_1         
к "GкD
B
time_distributed.К+
time_distributed         в
A__inference_dense_layer_call_and_return_conditional_losses_583295]0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ z
&__inference_dense_layer_call_fn_583284P0в-
&в#
!К
inputs         А
к "К         ║
F__inference_sequential_layer_call_and_return_conditional_losses_582362p<в9
2в/
%К"
input_1         
p 

 
к ")в&
К
0         
Ъ ║
F__inference_sequential_layer_call_and_return_conditional_losses_582380p<в9
2в/
%К"
input_1         
p

 
к ")в&
К
0         
Ъ ╣
F__inference_sequential_layer_call_and_return_conditional_losses_582554o;в8
1в.
$К!
inputs         
p 

 
к ")в&
К
0         
Ъ ╣
F__inference_sequential_layer_call_and_return_conditional_losses_582675o;в8
1в.
$К!
inputs         
p

 
к ")в&
К
0         
Ъ Т
+__inference_sequential_layer_call_fn_582151c<в9
2в/
%К"
input_1         
p 

 
к "К         Т
+__inference_sequential_layer_call_fn_582344c<в9
2в/
%К"
input_1         
p

 
к "К         С
+__inference_sequential_layer_call_fn_582418b;в8
1в.
$К!
inputs         
p 

 
к "К         С
+__inference_sequential_layer_call_fn_582433b;в8
1в.
$К!
inputs         
p

 
к "К         ║
$__inference_signature_wrapper_582403С?в<
в 
5к2
0
input_1%К"
input_1         "GкD
B
time_distributed.К+
time_distributed         К
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_583258║]вZ
SвP
 К
inputs         
(в%
#К 
states/0         А
p 
к "TвQ
JвG
К
0/0         А
%Ъ"
 К
0/1/0         А
Ъ К
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_583275║]вZ
SвP
 К
inputs         
(в%
#К 
states/0         А
p
к "TвQ
JвG
К
0/0         А
%Ъ"
 К
0/1/0         А
Ъ с
0__inference_simple_rnn_cell_layer_call_fn_583227м]вZ
SвP
 К
inputs         
(в%
#К 
states/0         А
p 
к "FвC
К
0         А
#Ъ 
К
1/0         Ас
0__inference_simple_rnn_cell_layer_call_fn_583241м]вZ
SвP
 К
inputs         
(в%
#К 
states/0         А
p
к "FвC
К
0         А
#Ъ 
К
1/0         А╓
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582827ЛOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "3в0
)К&
0                  А
Ъ ╓
F__inference_simple_rnn_layer_call_and_return_conditional_losses_582935ЛOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "3в0
)К&
0                  А
Ъ ╝
F__inference_simple_rnn_layer_call_and_return_conditional_losses_583043r?в<
5в2
$К!
inputs         

 
p 

 
к "*в'
 К
0         А
Ъ ╝
F__inference_simple_rnn_layer_call_and_return_conditional_losses_583151r?в<
5в2
$К!
inputs         

 
p

 
к "*в'
 К
0         А
Ъ н
+__inference_simple_rnn_layer_call_fn_582686~OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "&К#                  Ан
+__inference_simple_rnn_layer_call_fn_582697~OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "&К#                  АФ
+__inference_simple_rnn_layer_call_fn_582708e?в<
5в2
$К!
inputs         

 
p 

 
к "К         АФ
+__inference_simple_rnn_layer_call_fn_582719e?в<
5в2
$К!
inputs         

 
p

 
к "К         А╧
L__inference_time_distributed_layer_call_and_return_conditional_losses_583191EвB
;в8
.К+
inputs                  А
p 

 
к "2в/
(К%
0                  
Ъ ╧
L__inference_time_distributed_layer_call_and_return_conditional_losses_583213EвB
;в8
.К+
inputs                  А
p

 
к "2в/
(К%
0                  
Ъ з
1__inference_time_distributed_layer_call_fn_583160rEвB
;в8
.К+
inputs                  А
p 

 
к "%К"                  з
1__inference_time_distributed_layer_call_fn_583169rEвB
;в8
.К+
inputs                  А
p

 
к "%К"                  