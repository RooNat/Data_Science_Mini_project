╕┌;
й М 
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
Ъ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

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
 И"serve*2.10.02unknown8юР8
Щ
 Adam/lstm_12/lstm_cell_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*1
shared_name" Adam/lstm_12/lstm_cell_12/bias/v
Т
4Adam/lstm_12/lstm_cell_12/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_12/lstm_cell_12/bias/v*
_output_shapes	
:Р*
dtype0
╡
,Adam/lstm_12/lstm_cell_12/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*=
shared_name.,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v
о
@Adam/lstm_12/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v*
_output_shapes
:	dР*
dtype0
б
"Adam/lstm_12/lstm_cell_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 Р*3
shared_name$"Adam/lstm_12/lstm_cell_12/kernel/v
Ъ
6Adam/lstm_12/lstm_cell_12/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_12/lstm_cell_12/kernel/v*
_output_shapes
:	 Р*
dtype0
А
Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
:*
dtype0
И
Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_20/kernel/v
Б
*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes

:d*
dtype0
Д
Adam/conv2d_187/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_187/bias/v
}
*Adam/conv2d_187/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_187/bias/v*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_187/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_187/kernel/v
Н
,Adam/conv2d_187/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_187/kernel/v*&
_output_shapes
:  *
dtype0
Д
Adam/conv2d_186/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_186/bias/v
}
*Adam/conv2d_186/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_186/bias/v*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_186/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_186/kernel/v
Н
,Adam/conv2d_186/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_186/kernel/v*&
_output_shapes
: *
dtype0
Д
Adam/conv2d_185/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_185/bias/v
}
*Adam/conv2d_185/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_185/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_185/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_185/kernel/v
Н
,Adam/conv2d_185/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_185/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_184/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_184/bias/v
}
*Adam/conv2d_184/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_184/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_184/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_184/kernel/v
Н
,Adam/conv2d_184/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_184/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_183/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_183/bias/v
}
*Adam/conv2d_183/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_183/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_183/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_183/kernel/v
Н
,Adam/conv2d_183/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_183/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_182/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_182/bias/v
}
*Adam/conv2d_182/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_182/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_182/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_182/kernel/v
Н
,Adam/conv2d_182/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_182/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_181/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_181/bias/v
}
*Adam/conv2d_181/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_181/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_181/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_181/kernel/v
Н
,Adam/conv2d_181/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_181/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_180/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_180/bias/v
}
*Adam/conv2d_180/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_180/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_180/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_180/kernel/v
Н
,Adam/conv2d_180/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_180/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_179/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_179/bias/v
}
*Adam/conv2d_179/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_179/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_179/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_179/kernel/v
Н
,Adam/conv2d_179/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_179/kernel/v*&
_output_shapes
:*
dtype0
Щ
 Adam/lstm_12/lstm_cell_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*1
shared_name" Adam/lstm_12/lstm_cell_12/bias/m
Т
4Adam/lstm_12/lstm_cell_12/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_12/lstm_cell_12/bias/m*
_output_shapes	
:Р*
dtype0
╡
,Adam/lstm_12/lstm_cell_12/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*=
shared_name.,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m
о
@Adam/lstm_12/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m*
_output_shapes
:	dР*
dtype0
б
"Adam/lstm_12/lstm_cell_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 Р*3
shared_name$"Adam/lstm_12/lstm_cell_12/kernel/m
Ъ
6Adam/lstm_12/lstm_cell_12/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_12/lstm_cell_12/kernel/m*
_output_shapes
:	 Р*
dtype0
А
Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_20/kernel/m
Б
*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes

:d*
dtype0
Д
Adam/conv2d_187/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_187/bias/m
}
*Adam/conv2d_187/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_187/bias/m*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_187/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_187/kernel/m
Н
,Adam/conv2d_187/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_187/kernel/m*&
_output_shapes
:  *
dtype0
Д
Adam/conv2d_186/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_186/bias/m
}
*Adam/conv2d_186/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_186/bias/m*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_186/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_186/kernel/m
Н
,Adam/conv2d_186/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_186/kernel/m*&
_output_shapes
: *
dtype0
Д
Adam/conv2d_185/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_185/bias/m
}
*Adam/conv2d_185/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_185/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_185/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_185/kernel/m
Н
,Adam/conv2d_185/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_185/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_184/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_184/bias/m
}
*Adam/conv2d_184/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_184/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_184/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_184/kernel/m
Н
,Adam/conv2d_184/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_184/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_183/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_183/bias/m
}
*Adam/conv2d_183/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_183/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_183/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_183/kernel/m
Н
,Adam/conv2d_183/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_183/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_182/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_182/bias/m
}
*Adam/conv2d_182/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_182/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_182/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_182/kernel/m
Н
,Adam/conv2d_182/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_182/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_181/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_181/bias/m
}
*Adam/conv2d_181/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_181/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_181/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_181/kernel/m
Н
,Adam/conv2d_181/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_181/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_180/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_180/bias/m
}
*Adam/conv2d_180/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_180/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_180/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_180/kernel/m
Н
,Adam/conv2d_180/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_180/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_179/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_179/bias/m
}
*Adam/conv2d_179/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_179/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_179/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_179/kernel/m
Н
,Adam/conv2d_179/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_179/kernel/m*&
_output_shapes
:*
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
Л
lstm_12/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р**
shared_namelstm_12/lstm_cell_12/bias
Д
-lstm_12/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/bias*
_output_shapes	
:Р*
dtype0
з
%lstm_12/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*6
shared_name'%lstm_12/lstm_cell_12/recurrent_kernel
а
9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_12/lstm_cell_12/recurrent_kernel*
_output_shapes
:	dР*
dtype0
У
lstm_12/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 Р*,
shared_namelstm_12/lstm_cell_12/kernel
М
/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/kernel*
_output_shapes
:	 Р*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:*
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:d*
dtype0
v
conv2d_187/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_187/bias
o
#conv2d_187/bias/Read/ReadVariableOpReadVariableOpconv2d_187/bias*
_output_shapes
: *
dtype0
Ж
conv2d_187/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_187/kernel

%conv2d_187/kernel/Read/ReadVariableOpReadVariableOpconv2d_187/kernel*&
_output_shapes
:  *
dtype0
v
conv2d_186/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_186/bias
o
#conv2d_186/bias/Read/ReadVariableOpReadVariableOpconv2d_186/bias*
_output_shapes
: *
dtype0
Ж
conv2d_186/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_186/kernel

%conv2d_186/kernel/Read/ReadVariableOpReadVariableOpconv2d_186/kernel*&
_output_shapes
: *
dtype0
v
conv2d_185/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_185/bias
o
#conv2d_185/bias/Read/ReadVariableOpReadVariableOpconv2d_185/bias*
_output_shapes
:*
dtype0
Ж
conv2d_185/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_185/kernel

%conv2d_185/kernel/Read/ReadVariableOpReadVariableOpconv2d_185/kernel*&
_output_shapes
:*
dtype0
v
conv2d_184/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_184/bias
o
#conv2d_184/bias/Read/ReadVariableOpReadVariableOpconv2d_184/bias*
_output_shapes
:*
dtype0
Ж
conv2d_184/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_184/kernel

%conv2d_184/kernel/Read/ReadVariableOpReadVariableOpconv2d_184/kernel*&
_output_shapes
:*
dtype0
v
conv2d_183/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_183/bias
o
#conv2d_183/bias/Read/ReadVariableOpReadVariableOpconv2d_183/bias*
_output_shapes
:*
dtype0
Ж
conv2d_183/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_183/kernel

%conv2d_183/kernel/Read/ReadVariableOpReadVariableOpconv2d_183/kernel*&
_output_shapes
:*
dtype0
v
conv2d_182/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_182/bias
o
#conv2d_182/bias/Read/ReadVariableOpReadVariableOpconv2d_182/bias*
_output_shapes
:*
dtype0
Ж
conv2d_182/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_182/kernel

%conv2d_182/kernel/Read/ReadVariableOpReadVariableOpconv2d_182/kernel*&
_output_shapes
:*
dtype0
v
conv2d_181/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_181/bias
o
#conv2d_181/bias/Read/ReadVariableOpReadVariableOpconv2d_181/bias*
_output_shapes
:*
dtype0
Ж
conv2d_181/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_181/kernel

%conv2d_181/kernel/Read/ReadVariableOpReadVariableOpconv2d_181/kernel*&
_output_shapes
:*
dtype0
v
conv2d_180/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_180/bias
o
#conv2d_180/bias/Read/ReadVariableOpReadVariableOpconv2d_180/bias*
_output_shapes
:*
dtype0
Ж
conv2d_180/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_180/kernel

%conv2d_180/kernel/Read/ReadVariableOpReadVariableOpconv2d_180/kernel*&
_output_shapes
:*
dtype0
v
conv2d_179/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_179/bias
o
#conv2d_179/bias/Read/ReadVariableOpReadVariableOpconv2d_179/bias*
_output_shapes
:*
dtype0
Ж
conv2d_179/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_179/kernel

%conv2d_179/kernel/Read/ReadVariableOpReadVariableOpconv2d_179/kernel*&
_output_shapes
:*
dtype0
У
 serving_default_conv2d_179_inputPlaceholder*/
_output_shapes
:         2*
dtype0*$
shape:         2
н
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_179_inputconv2d_179/kernelconv2d_179/biasconv2d_180/kernelconv2d_180/biasconv2d_181/kernelconv2d_181/biasconv2d_182/kernelconv2d_182/biasconv2d_183/kernelconv2d_183/biasconv2d_184/kernelconv2d_184/biasconv2d_185/kernelconv2d_185/biasconv2d_186/kernelconv2d_186/biasconv2d_187/kernelconv2d_187/biaslstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biasdense_20/kerneldense_20/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_1238933

NoOpNoOp
·и
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┤и
valueйиBеи BЭи
│
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op*
О
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
╚
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
╚
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
╚
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op*
О
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
╚
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op*
╚
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias
 Z_jit_compiled_convolution_op*
╚
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
 c_jit_compiled_convolution_op*
╚
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias
 l_jit_compiled_convolution_op*
╚
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel
tbias
 u_jit_compiled_convolution_op*
О
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses* 
Ь
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses

Вlayer* 
╩
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Й_random_generator
	Кcell
Л
state_spec*
о
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses
Тkernel
	Уbias*
╖
0
 1
.2
/3
74
85
@6
A7
O8
P9
X10
Y11
a12
b13
j14
k15
s16
t17
Ф18
Х19
Ц20
Т21
У22*
╖
0
 1
.2
/3
74
85
@6
A7
O8
P9
X10
Y11
a12
b13
j14
k15
s16
t17
Ф18
Х19
Ц20
Т21
У22*
* 
╡
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Ьtrace_0
Эtrace_1
Юtrace_2
Яtrace_3* 
:
аtrace_0
бtrace_1
вtrace_2
гtrace_3* 
* 
Я
	дiter
еbeta_1
жbeta_2

зdecay
иlearning_ratem┴ m┬.m├/m─7m┼8m╞@m╟Am╚Om╔Pm╩Xm╦Ym╠am═bm╬jm╧km╨sm╤tm╥	Тm╙	Уm╘	Фm╒	Хm╓	Цm╫v╪ v┘.v┌/v█7v▄8v▌@v▐Av▀OvрPvсXvтYvуavфbvхjvцkvчsvшtvщ	Тvъ	Уvы	Фvь	Хvэ	Цvю*

йserving_default* 

0
 1*

0
 1*
* 
Ш
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

пtrace_0* 

░trace_0* 
a[
VARIABLE_VALUEconv2d_179/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_179/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

╢trace_0* 

╖trace_0* 

.0
/1*

.0
/1*
* 
Ш
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

╜trace_0* 

╛trace_0* 
a[
VARIABLE_VALUEconv2d_180/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_180/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

70
81*

70
81*
* 
Ш
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

─trace_0* 

┼trace_0* 
a[
VARIABLE_VALUEconv2d_181/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_181/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

@0
A1*

@0
A1*
* 
Ш
╞non_trainable_variables
╟layers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

╦trace_0* 

╠trace_0* 
a[
VARIABLE_VALUEconv2d_182/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_182/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

╥trace_0* 

╙trace_0* 

O0
P1*

O0
P1*
* 
Ш
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

┘trace_0* 

┌trace_0* 
a[
VARIABLE_VALUEconv2d_183/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_183/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

X0
Y1*

X0
Y1*
* 
Ш
█non_trainable_variables
▄layers
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

рtrace_0* 

сtrace_0* 
a[
VARIABLE_VALUEconv2d_184/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_184/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

a0
b1*

a0
b1*
* 
Ш
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

чtrace_0* 

шtrace_0* 
a[
VARIABLE_VALUEconv2d_185/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_185/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

j0
k1*

j0
k1*
* 
Ш
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

юtrace_0* 

яtrace_0* 
a[
VARIABLE_VALUEconv2d_186/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_186/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

s0
t1*

s0
t1*
* 
Ш
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

їtrace_0* 

Ўtrace_0* 
a[
VARIABLE_VALUEconv2d_187/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_187/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

№trace_0* 

¤trace_0* 
* 
* 
* 
Щ
■non_trainable_variables
 layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses* 

Гtrace_0
Дtrace_1* 

Еtrace_0
Жtrace_1* 
Ф
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses* 

Ф0
Х1
Ц2*

Ф0
Х1
Ц2*
* 
л
Нstates
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*
:
Уtrace_0
Фtrace_1
Хtrace_2
Цtrace_3* 
:
Чtrace_0
Шtrace_1
Щtrace_2
Ъtrace_3* 
* 
ю
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses
б_random_generator
в
state_size
Фkernel
Хrecurrent_kernel
	Цbias*
* 

Т0
У1*

Т0
У1*
* 
Ю
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses*

иtrace_0* 

йtrace_0* 
`Z
VARIABLE_VALUEdense_20/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_20/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUElstm_12/lstm_cell_12/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%lstm_12/lstm_cell_12/recurrent_kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElstm_12/lstm_cell_12/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*

к0
л1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 
* 
* 
* 
* 


В0* 
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
Ь
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses* 

▒trace_0* 

▓trace_0* 
* 
* 

К0*
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

Ф0
Х1
Ц2*

Ф0
Х1
Ц2*
* 
Ю
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses*
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
<
╕	variables
╣	keras_api

║total

╗count*
M
╝	variables
╜	keras_api

╛total

┐count
└
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

║0
╗1*

╕	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

╛0
┐1*

╝	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Д~
VARIABLE_VALUEAdam/conv2d_179/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_179/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_180/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_180/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_181/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_181/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_182/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_182/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_183/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_183/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_184/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_184/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_185/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_185/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_186/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_186/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_187/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_187/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_20/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_20/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/lstm_12/lstm_cell_12/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE,Adam/lstm_12/lstm_cell_12/recurrent_kernel/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/lstm_12/lstm_cell_12/bias/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_179/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_179/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_180/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_180/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_181/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_181/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_182/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_182/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_183/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_183/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_184/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_184/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_185/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_185/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_186/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_186/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_187/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_187/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_20/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_20/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/lstm_12/lstm_cell_12/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE,Adam/lstm_12/lstm_cell_12/recurrent_kernel/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/lstm_12/lstm_cell_12/bias/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Є
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_179/kernel/Read/ReadVariableOp#conv2d_179/bias/Read/ReadVariableOp%conv2d_180/kernel/Read/ReadVariableOp#conv2d_180/bias/Read/ReadVariableOp%conv2d_181/kernel/Read/ReadVariableOp#conv2d_181/bias/Read/ReadVariableOp%conv2d_182/kernel/Read/ReadVariableOp#conv2d_182/bias/Read/ReadVariableOp%conv2d_183/kernel/Read/ReadVariableOp#conv2d_183/bias/Read/ReadVariableOp%conv2d_184/kernel/Read/ReadVariableOp#conv2d_184/bias/Read/ReadVariableOp%conv2d_185/kernel/Read/ReadVariableOp#conv2d_185/bias/Read/ReadVariableOp%conv2d_186/kernel/Read/ReadVariableOp#conv2d_186/bias/Read/ReadVariableOp%conv2d_187/kernel/Read/ReadVariableOp#conv2d_187/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOp9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOp-lstm_12/lstm_cell_12/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_179/kernel/m/Read/ReadVariableOp*Adam/conv2d_179/bias/m/Read/ReadVariableOp,Adam/conv2d_180/kernel/m/Read/ReadVariableOp*Adam/conv2d_180/bias/m/Read/ReadVariableOp,Adam/conv2d_181/kernel/m/Read/ReadVariableOp*Adam/conv2d_181/bias/m/Read/ReadVariableOp,Adam/conv2d_182/kernel/m/Read/ReadVariableOp*Adam/conv2d_182/bias/m/Read/ReadVariableOp,Adam/conv2d_183/kernel/m/Read/ReadVariableOp*Adam/conv2d_183/bias/m/Read/ReadVariableOp,Adam/conv2d_184/kernel/m/Read/ReadVariableOp*Adam/conv2d_184/bias/m/Read/ReadVariableOp,Adam/conv2d_185/kernel/m/Read/ReadVariableOp*Adam/conv2d_185/bias/m/Read/ReadVariableOp,Adam/conv2d_186/kernel/m/Read/ReadVariableOp*Adam/conv2d_186/bias/m/Read/ReadVariableOp,Adam/conv2d_187/kernel/m/Read/ReadVariableOp*Adam/conv2d_187/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp6Adam/lstm_12/lstm_cell_12/kernel/m/Read/ReadVariableOp@Adam/lstm_12/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_12/lstm_cell_12/bias/m/Read/ReadVariableOp,Adam/conv2d_179/kernel/v/Read/ReadVariableOp*Adam/conv2d_179/bias/v/Read/ReadVariableOp,Adam/conv2d_180/kernel/v/Read/ReadVariableOp*Adam/conv2d_180/bias/v/Read/ReadVariableOp,Adam/conv2d_181/kernel/v/Read/ReadVariableOp*Adam/conv2d_181/bias/v/Read/ReadVariableOp,Adam/conv2d_182/kernel/v/Read/ReadVariableOp*Adam/conv2d_182/bias/v/Read/ReadVariableOp,Adam/conv2d_183/kernel/v/Read/ReadVariableOp*Adam/conv2d_183/bias/v/Read/ReadVariableOp,Adam/conv2d_184/kernel/v/Read/ReadVariableOp*Adam/conv2d_184/bias/v/Read/ReadVariableOp,Adam/conv2d_185/kernel/v/Read/ReadVariableOp*Adam/conv2d_185/bias/v/Read/ReadVariableOp,Adam/conv2d_186/kernel/v/Read/ReadVariableOp*Adam/conv2d_186/bias/v/Read/ReadVariableOp,Adam/conv2d_187/kernel/v/Read/ReadVariableOp*Adam/conv2d_187/bias/v/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp6Adam/lstm_12/lstm_cell_12/kernel/v/Read/ReadVariableOp@Adam/lstm_12/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_12/lstm_cell_12/bias/v/Read/ReadVariableOpConst*[
TinT
R2P	*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_1242330
╒
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_179/kernelconv2d_179/biasconv2d_180/kernelconv2d_180/biasconv2d_181/kernelconv2d_181/biasconv2d_182/kernelconv2d_182/biasconv2d_183/kernelconv2d_183/biasconv2d_184/kernelconv2d_184/biasconv2d_185/kernelconv2d_185/biasconv2d_186/kernelconv2d_186/biasconv2d_187/kernelconv2d_187/biasdense_20/kerneldense_20/biaslstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_179/kernel/mAdam/conv2d_179/bias/mAdam/conv2d_180/kernel/mAdam/conv2d_180/bias/mAdam/conv2d_181/kernel/mAdam/conv2d_181/bias/mAdam/conv2d_182/kernel/mAdam/conv2d_182/bias/mAdam/conv2d_183/kernel/mAdam/conv2d_183/bias/mAdam/conv2d_184/kernel/mAdam/conv2d_184/bias/mAdam/conv2d_185/kernel/mAdam/conv2d_185/bias/mAdam/conv2d_186/kernel/mAdam/conv2d_186/bias/mAdam/conv2d_187/kernel/mAdam/conv2d_187/bias/mAdam/dense_20/kernel/mAdam/dense_20/bias/m"Adam/lstm_12/lstm_cell_12/kernel/m,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m Adam/lstm_12/lstm_cell_12/bias/mAdam/conv2d_179/kernel/vAdam/conv2d_179/bias/vAdam/conv2d_180/kernel/vAdam/conv2d_180/bias/vAdam/conv2d_181/kernel/vAdam/conv2d_181/bias/vAdam/conv2d_182/kernel/vAdam/conv2d_182/bias/vAdam/conv2d_183/kernel/vAdam/conv2d_183/bias/vAdam/conv2d_184/kernel/vAdam/conv2d_184/bias/vAdam/conv2d_185/kernel/vAdam/conv2d_185/bias/vAdam/conv2d_186/kernel/vAdam/conv2d_186/bias/vAdam/conv2d_187/kernel/vAdam/conv2d_187/bias/vAdam/dense_20/kernel/vAdam/dense_20/bias/v"Adam/lstm_12/lstm_cell_12/kernel/v,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v Adam/lstm_12/lstm_cell_12/bias/v*Z
TinS
Q2O*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_1242574№П5
й
╛
D__inference_lstm_12_layer_call_and_return_conditional_losses_1237276

inputs/
read_readvariableop_resource:	 Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1237003i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
Й┬
ч
=__inference___backward_gpu_lstm_with_fallback_1237098_1237274
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:м
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                   :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                   u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Р{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                   t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesЎ
є:         d:         d:         d:         d: :         d:         d:         d:                  d::                   :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_3074a1f7-ecc5-4d48-ab03-aac3547b175a*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1237273*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d::6
4
_output_shapes"
 :                  d:	

_output_shapes
:::
6
4
_output_shapes"
 :                   :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ё
б
,__inference_conv2d_186_layer_call_fn_1240199

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         # *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1237428w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         # `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         &: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         &
 
_user_specified_nameinputs
л

А
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1237412

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         &w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         &: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         &
 
_user_specified_nameinputs
┴;
┴
!__inference_standard_lstm_1237003

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1236917*
condR
while_cond_1236916*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_3074a1f7-ecc5-4d48-ab03-aac3547b175a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
л

А
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1237341

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         ,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         /: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         /
 
_user_specified_nameinputs
┌)
╨
while_body_1241254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
╙
╢
/__inference_sequential_23_layer_call_fn_1238740
conv2d_179_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13: 

unknown_14: $

unknown_15:  

unknown_16: 

unknown_17:	 Р

unknown_18:	dР

unknown_19:	Р

unknown_20:d

unknown_21:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallconv2d_179_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238640o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:         2
*
_user_specified_nameconv2d_179_input
Ё
б
,__inference_conv2d_184_layer_call_fn_1240161

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1237396w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         &`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ): : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         )
 
_user_specified_nameinputs
┌)
╨
while_body_1241683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
∙
╢
)__inference_lstm_12_layer_call_fn_1240326

inputs
unknown:	 Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1238409o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
 : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs
Ц	
╞
while_cond_1240395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1240395___redundant_placeholder05
1while_while_cond_1240395___redundant_placeholder15
1while_while_cond_1240395___redundant_placeholder25
1while_while_cond_1240395___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
л

А
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1240104

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         ,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         /: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         /
 
_user_specified_nameinputs
┌)
╨
while_body_1236917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
л
H
,__inference_flatten_21_layer_call_fn_1242067

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_flatten_21_layer_call_and_return_conditional_losses_1236366`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
·Щ
╧!
 __inference__traced_save_1242330
file_prefix0
,savev2_conv2d_179_kernel_read_readvariableop.
*savev2_conv2d_179_bias_read_readvariableop0
,savev2_conv2d_180_kernel_read_readvariableop.
*savev2_conv2d_180_bias_read_readvariableop0
,savev2_conv2d_181_kernel_read_readvariableop.
*savev2_conv2d_181_bias_read_readvariableop0
,savev2_conv2d_182_kernel_read_readvariableop.
*savev2_conv2d_182_bias_read_readvariableop0
,savev2_conv2d_183_kernel_read_readvariableop.
*savev2_conv2d_183_bias_read_readvariableop0
,savev2_conv2d_184_kernel_read_readvariableop.
*savev2_conv2d_184_bias_read_readvariableop0
,savev2_conv2d_185_kernel_read_readvariableop.
*savev2_conv2d_185_bias_read_readvariableop0
,savev2_conv2d_186_kernel_read_readvariableop.
*savev2_conv2d_186_bias_read_readvariableop0
,savev2_conv2d_187_kernel_read_readvariableop.
*savev2_conv2d_187_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop:
6savev2_lstm_12_lstm_cell_12_kernel_read_readvariableopD
@savev2_lstm_12_lstm_cell_12_recurrent_kernel_read_readvariableop8
4savev2_lstm_12_lstm_cell_12_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_179_kernel_m_read_readvariableop5
1savev2_adam_conv2d_179_bias_m_read_readvariableop7
3savev2_adam_conv2d_180_kernel_m_read_readvariableop5
1savev2_adam_conv2d_180_bias_m_read_readvariableop7
3savev2_adam_conv2d_181_kernel_m_read_readvariableop5
1savev2_adam_conv2d_181_bias_m_read_readvariableop7
3savev2_adam_conv2d_182_kernel_m_read_readvariableop5
1savev2_adam_conv2d_182_bias_m_read_readvariableop7
3savev2_adam_conv2d_183_kernel_m_read_readvariableop5
1savev2_adam_conv2d_183_bias_m_read_readvariableop7
3savev2_adam_conv2d_184_kernel_m_read_readvariableop5
1savev2_adam_conv2d_184_bias_m_read_readvariableop7
3savev2_adam_conv2d_185_kernel_m_read_readvariableop5
1savev2_adam_conv2d_185_bias_m_read_readvariableop7
3savev2_adam_conv2d_186_kernel_m_read_readvariableop5
1savev2_adam_conv2d_186_bias_m_read_readvariableop7
3savev2_adam_conv2d_187_kernel_m_read_readvariableop5
1savev2_adam_conv2d_187_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableopA
=savev2_adam_lstm_12_lstm_cell_12_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_12_lstm_cell_12_bias_m_read_readvariableop7
3savev2_adam_conv2d_179_kernel_v_read_readvariableop5
1savev2_adam_conv2d_179_bias_v_read_readvariableop7
3savev2_adam_conv2d_180_kernel_v_read_readvariableop5
1savev2_adam_conv2d_180_bias_v_read_readvariableop7
3savev2_adam_conv2d_181_kernel_v_read_readvariableop5
1savev2_adam_conv2d_181_bias_v_read_readvariableop7
3savev2_adam_conv2d_182_kernel_v_read_readvariableop5
1savev2_adam_conv2d_182_bias_v_read_readvariableop7
3savev2_adam_conv2d_183_kernel_v_read_readvariableop5
1savev2_adam_conv2d_183_bias_v_read_readvariableop7
3savev2_adam_conv2d_184_kernel_v_read_readvariableop5
1savev2_adam_conv2d_184_bias_v_read_readvariableop7
3savev2_adam_conv2d_185_kernel_v_read_readvariableop5
1savev2_adam_conv2d_185_bias_v_read_readvariableop7
3savev2_adam_conv2d_186_kernel_v_read_readvariableop5
1savev2_adam_conv2d_186_bias_v_read_readvariableop7
3savev2_adam_conv2d_187_kernel_v_read_readvariableop5
1savev2_adam_conv2d_187_bias_v_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableopA
=savev2_adam_lstm_12_lstm_cell_12_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_12_lstm_cell_12_bias_v_read_readvariableop
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
: к+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*╙*
value╔*B╞*OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHО
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*│
valueйBжOB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B и 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_179_kernel_read_readvariableop*savev2_conv2d_179_bias_read_readvariableop,savev2_conv2d_180_kernel_read_readvariableop*savev2_conv2d_180_bias_read_readvariableop,savev2_conv2d_181_kernel_read_readvariableop*savev2_conv2d_181_bias_read_readvariableop,savev2_conv2d_182_kernel_read_readvariableop*savev2_conv2d_182_bias_read_readvariableop,savev2_conv2d_183_kernel_read_readvariableop*savev2_conv2d_183_bias_read_readvariableop,savev2_conv2d_184_kernel_read_readvariableop*savev2_conv2d_184_bias_read_readvariableop,savev2_conv2d_185_kernel_read_readvariableop*savev2_conv2d_185_bias_read_readvariableop,savev2_conv2d_186_kernel_read_readvariableop*savev2_conv2d_186_bias_read_readvariableop,savev2_conv2d_187_kernel_read_readvariableop*savev2_conv2d_187_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop6savev2_lstm_12_lstm_cell_12_kernel_read_readvariableop@savev2_lstm_12_lstm_cell_12_recurrent_kernel_read_readvariableop4savev2_lstm_12_lstm_cell_12_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_179_kernel_m_read_readvariableop1savev2_adam_conv2d_179_bias_m_read_readvariableop3savev2_adam_conv2d_180_kernel_m_read_readvariableop1savev2_adam_conv2d_180_bias_m_read_readvariableop3savev2_adam_conv2d_181_kernel_m_read_readvariableop1savev2_adam_conv2d_181_bias_m_read_readvariableop3savev2_adam_conv2d_182_kernel_m_read_readvariableop1savev2_adam_conv2d_182_bias_m_read_readvariableop3savev2_adam_conv2d_183_kernel_m_read_readvariableop1savev2_adam_conv2d_183_bias_m_read_readvariableop3savev2_adam_conv2d_184_kernel_m_read_readvariableop1savev2_adam_conv2d_184_bias_m_read_readvariableop3savev2_adam_conv2d_185_kernel_m_read_readvariableop1savev2_adam_conv2d_185_bias_m_read_readvariableop3savev2_adam_conv2d_186_kernel_m_read_readvariableop1savev2_adam_conv2d_186_bias_m_read_readvariableop3savev2_adam_conv2d_187_kernel_m_read_readvariableop1savev2_adam_conv2d_187_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop=savev2_adam_lstm_12_lstm_cell_12_kernel_m_read_readvariableopGsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_12_lstm_cell_12_bias_m_read_readvariableop3savev2_adam_conv2d_179_kernel_v_read_readvariableop1savev2_adam_conv2d_179_bias_v_read_readvariableop3savev2_adam_conv2d_180_kernel_v_read_readvariableop1savev2_adam_conv2d_180_bias_v_read_readvariableop3savev2_adam_conv2d_181_kernel_v_read_readvariableop1savev2_adam_conv2d_181_bias_v_read_readvariableop3savev2_adam_conv2d_182_kernel_v_read_readvariableop1savev2_adam_conv2d_182_bias_v_read_readvariableop3savev2_adam_conv2d_183_kernel_v_read_readvariableop1savev2_adam_conv2d_183_bias_v_read_readvariableop3savev2_adam_conv2d_184_kernel_v_read_readvariableop1savev2_adam_conv2d_184_bias_v_read_readvariableop3savev2_adam_conv2d_185_kernel_v_read_readvariableop1savev2_adam_conv2d_185_bias_v_read_readvariableop3savev2_adam_conv2d_186_kernel_v_read_readvariableop1savev2_adam_conv2d_186_bias_v_read_readvariableop3savev2_adam_conv2d_187_kernel_v_read_readvariableop1savev2_adam_conv2d_187_bias_v_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop=savev2_adam_lstm_12_lstm_cell_12_kernel_v_read_readvariableopGsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_12_lstm_cell_12_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *]
dtypesS
Q2O	Р
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

identity_1Identity_1:output:0*║
_input_shapesи
е: ::::::::::::::: : :  : :d::	 Р:	dР:Р: : : : : : : : : ::::::::::::::: : :  : :d::	 Р:	dР:Р::::::::::::::: : :  : :d::	 Р:	dР:Р: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	 Р:%!

_output_shapes
:	dР:!

_output_shapes	
:Р:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :,!(
&
_output_shapes
:: "

_output_shapes
::,#(
&
_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
:: &

_output_shapes
::,'(
&
_output_shapes
:: (

_output_shapes
::,)(
&
_output_shapes
:: *

_output_shapes
::,+(
&
_output_shapes
:: ,

_output_shapes
::,-(
&
_output_shapes
:: .

_output_shapes
::,/(
&
_output_shapes
: : 0

_output_shapes
: :,1(
&
_output_shapes
:  : 2

_output_shapes
: :$3 

_output_shapes

:d: 4

_output_shapes
::%5!

_output_shapes
:	 Р:%6!

_output_shapes
:	dР:!7

_output_shapes	
:Р:,8(
&
_output_shapes
:: 9

_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
::,<(
&
_output_shapes
:: =

_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
::,@(
&
_output_shapes
:: A

_output_shapes
::,B(
&
_output_shapes
:: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
::,F(
&
_output_shapes
: : G

_output_shapes
: :,H(
&
_output_shapes
:  : I

_output_shapes
: :$J 

_output_shapes

:d: K

_output_shapes
::%L!

_output_shapes
:	 Р:%M!

_output_shapes
:	dР:!N

_output_shapes	
:Р:O

_output_shapes
: 
╔@
═
*__inference_gpu_lstm_with_fallback_1236657

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_5aff946f-34e0-4cdd-bc1a-6b4647602afc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ё
б
,__inference_conv2d_180_layer_call_fn_1240075

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1237325w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         /`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
ж;
┴
!__inference_standard_lstm_1241340

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1241254*
condR
while_cond_1241253*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_3195e08e-9019-4fc3-a112-bb3623017084*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┴;
┴
!__inference_standard_lstm_1240911

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1240825*
condR
while_cond_1240824*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_ee6d1e0d-a22b-479e-8d22-925293bc6d78*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ц	
╞
while_cond_1236476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1236476___redundant_placeholder05
1while_while_cond_1236476___redundant_placeholder15
1while_while_cond_1236476___redundant_placeholder25
1while_while_cond_1236476___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
л

А
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1240056

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
┐
c
G__inference_flatten_21_layer_call_and_return_conditional_losses_1242073

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:          X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
Е
g
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1237313

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         2*
alpha%
╫#<g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
л

А
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1237428

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         # w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         &: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         &
 
_user_specified_nameinputs
Е
g
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1240066

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         2*
alpha%
╫#<g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
┌)
╨
while_body_1236477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
б

Ў
E__inference_dense_20_layer_call_and_return_conditional_losses_1242062

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
л

А
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1237302

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
Ё
б
,__inference_conv2d_182_layer_call_fn_1240113

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1237357w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ,: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
Ё
б
,__inference_conv2d_179_layer_call_fn_1240046

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1237302w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
┴┴
ч
=__inference___backward_gpu_lstm_with_fallback_1239351_1239527
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:
         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:
          :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
 u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
 t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:
         d::
          :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_ac81ccf0-4ff7-458b-bed8-32cd1ab046ec*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1239526*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:
         d:	

_output_shapes
::1
-
+
_output_shapes
:
          :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┴┴
ч
=__inference___backward_gpu_lstm_with_fallback_1241435_1241611
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:
         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:
          :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
 u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
 t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:
         d::
          :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_3195e08e-9019-4fc3-a112-bb3623017084*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1241610*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:
         d:	

_output_shapes
::1
-
+
_output_shapes
:
          :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
л

А
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1240228

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         # : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         # 
 
_user_specified_nameinputs
е@
═
*__inference_gpu_lstm_with_fallback_1238230

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_cb091bd2-efbb-4745-821f-5ab4d1e7c4f2*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┐
c
G__inference_flatten_21_layer_call_and_return_conditional_losses_1236366

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:          X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
▄K
в
(__forward_gpu_lstm_with_fallback_1241610

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_3195e08e-9019-4fc3-a112-bb3623017084*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1241435_1241611*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
∙
╢
)__inference_lstm_12_layer_call_fn_1240315

inputs
unknown:	 Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1237882o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
 : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs
▄K
в
(__forward_gpu_lstm_with_fallback_1242039

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_c04a4d62-e1b8-4b85-8aea-4dae3da67322*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1241864_1242040*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Й┬
ч
=__inference___backward_gpu_lstm_with_fallback_1236658_1236834
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:м
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                   :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                   u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Р{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                   t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesЎ
є:         d:         d:         d:         d: :         d:         d:         d:                  d::                   :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_5aff946f-34e0-4cdd-bc1a-6b4647602afc*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1236833*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d::6
4
_output_shapes"
 :                  d:	

_output_shapes
:::
6
4
_output_shapes"
 :                   :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ё
б
,__inference_conv2d_181_layer_call_fn_1240094

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1237341w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         /: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         /
 
_user_specified_nameinputs
┴┴
ч
=__inference___backward_gpu_lstm_with_fallback_1238231_1238407
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:
         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:
          :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
 u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
 t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:
         d::
          :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_cb091bd2-efbb-4745-821f-5ab4d1e7c4f2*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1238406*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:
         d:	

_output_shapes
::1
-
+
_output_shapes
:
          :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ж;
┴
!__inference_standard_lstm_1237609

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1237523*
condR
while_cond_1237522*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_c49407a6-dae0-4707-b79d-d71d36bdad1e*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ё
б
,__inference_conv2d_187_layer_call_fn_1240218

inputs!
unknown:  
	unknown_0: 
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1237444w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         # : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         # 
 
_user_specified_nameinputs
ж;
┴
!__inference_standard_lstm_1239757

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1239671*
condR
while_cond_1239670*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_7dfeb892-53cc-4dbc-82cd-f7016a947483*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ї
l
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1240265

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskb
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:          a
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"        |
flatten_21/ReshapeReshapeReshape:output:0flatten_21/Const:output:0*
T0*'
_output_shapes
:          \
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
value	B : Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapeflatten_21/Reshape:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                   g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"                   :` \
8
_output_shapes&
$:"                   
 
_user_specified_nameinputs
е@
═
*__inference_gpu_lstm_with_fallback_1239851

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_7dfeb892-53cc-4dbc-82cd-f7016a947483*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
ё
Q
5__inference_time_distributed_21_layer_call_fn_1240248

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1236400m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"                   :` \
8
_output_shapes&
$:"                   
 
_user_specified_nameinputs
┴┴
ч
=__inference___backward_gpu_lstm_with_fallback_1239852_1240028
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:
         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:
          :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
 u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
 t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:
         d::
          :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_7dfeb892-53cc-4dbc-82cd-f7016a947483*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1240027*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:
         d:	

_output_shapes
::1
-
+
_output_shapes
:
          :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ж;
┴
!__inference_standard_lstm_1236054

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1235968*
condR
while_cond_1235967*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_16204b02-d6ba-4ed3-92f7-010b34003e65*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ц	
╞
while_cond_1238049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1238049___redundant_placeholder05
1while_while_cond_1238049___redundant_placeholder15
1while_while_cond_1238049___redundant_placeholder25
1while_while_cond_1238049___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
▒
└
D__inference_lstm_12_layer_call_and_return_conditional_losses_1241184
inputs_0/
read_readvariableop_resource:	 Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp=
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р╡
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1240911i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
┌)
╨
while_body_1239671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
е@
═
*__inference_gpu_lstm_with_fallback_1239350

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_ac81ccf0-4ff7-458b-bed8-32cd1ab046ec*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╔@
═
*__inference_gpu_lstm_with_fallback_1241005

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_ee6d1e0d-a22b-479e-8d22-925293bc6d78*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Х
i
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1240238

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌)
╨
while_body_1237523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
┴;
┴
!__inference_standard_lstm_1236563

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1236477*
condR
while_cond_1236476*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_5aff946f-34e0-4cdd-bc1a-6b4647602afc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
е@
═
*__inference_gpu_lstm_with_fallback_1241863

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_c04a4d62-e1b8-4b85-8aea-4dae3da67322*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
ўK
в
(__forward_gpu_lstm_with_fallback_1241181

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_ee6d1e0d-a22b-479e-8d22-925293bc6d78*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1241006_1241182*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
С
╕
)__inference_lstm_12_layer_call_fn_1240304
inputs_0
unknown:	 Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1237276o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
л

А
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1240171

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         &w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         )
 
_user_specified_nameinputs
─
Ч
*__inference_dense_20_layer_call_fn_1242051

inputs
unknown:d
	unknown_0:
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1237901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ч
╛
D__inference_lstm_12_layer_call_and_return_conditional_losses_1242042

inputs/
read_readvariableop_resource:	 Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1241769i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
 : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs
╚Э
Д
"__inference__wrapped_model_1236334
conv2d_179_inputQ
7sequential_23_conv2d_179_conv2d_readvariableop_resource:F
8sequential_23_conv2d_179_biasadd_readvariableop_resource:Q
7sequential_23_conv2d_180_conv2d_readvariableop_resource:F
8sequential_23_conv2d_180_biasadd_readvariableop_resource:Q
7sequential_23_conv2d_181_conv2d_readvariableop_resource:F
8sequential_23_conv2d_181_biasadd_readvariableop_resource:Q
7sequential_23_conv2d_182_conv2d_readvariableop_resource:F
8sequential_23_conv2d_182_biasadd_readvariableop_resource:Q
7sequential_23_conv2d_183_conv2d_readvariableop_resource:F
8sequential_23_conv2d_183_biasadd_readvariableop_resource:Q
7sequential_23_conv2d_184_conv2d_readvariableop_resource:F
8sequential_23_conv2d_184_biasadd_readvariableop_resource:Q
7sequential_23_conv2d_185_conv2d_readvariableop_resource:F
8sequential_23_conv2d_185_biasadd_readvariableop_resource:Q
7sequential_23_conv2d_186_conv2d_readvariableop_resource: F
8sequential_23_conv2d_186_biasadd_readvariableop_resource: Q
7sequential_23_conv2d_187_conv2d_readvariableop_resource:  F
8sequential_23_conv2d_187_biasadd_readvariableop_resource: E
2sequential_23_lstm_12_read_readvariableop_resource:	 РG
4sequential_23_lstm_12_read_1_readvariableop_resource:	dРC
4sequential_23_lstm_12_read_2_readvariableop_resource:	РG
5sequential_23_dense_20_matmul_readvariableop_resource:dD
6sequential_23_dense_20_biasadd_readvariableop_resource:
identityИв/sequential_23/conv2d_179/BiasAdd/ReadVariableOpв.sequential_23/conv2d_179/Conv2D/ReadVariableOpв/sequential_23/conv2d_180/BiasAdd/ReadVariableOpв.sequential_23/conv2d_180/Conv2D/ReadVariableOpв/sequential_23/conv2d_181/BiasAdd/ReadVariableOpв.sequential_23/conv2d_181/Conv2D/ReadVariableOpв/sequential_23/conv2d_182/BiasAdd/ReadVariableOpв.sequential_23/conv2d_182/Conv2D/ReadVariableOpв/sequential_23/conv2d_183/BiasAdd/ReadVariableOpв.sequential_23/conv2d_183/Conv2D/ReadVariableOpв/sequential_23/conv2d_184/BiasAdd/ReadVariableOpв.sequential_23/conv2d_184/Conv2D/ReadVariableOpв/sequential_23/conv2d_185/BiasAdd/ReadVariableOpв.sequential_23/conv2d_185/Conv2D/ReadVariableOpв/sequential_23/conv2d_186/BiasAdd/ReadVariableOpв.sequential_23/conv2d_186/Conv2D/ReadVariableOpв/sequential_23/conv2d_187/BiasAdd/ReadVariableOpв.sequential_23/conv2d_187/Conv2D/ReadVariableOpв-sequential_23/dense_20/BiasAdd/ReadVariableOpв,sequential_23/dense_20/MatMul/ReadVariableOpв)sequential_23/lstm_12/Read/ReadVariableOpв+sequential_23/lstm_12/Read_1/ReadVariableOpв+sequential_23/lstm_12/Read_2/ReadVariableOpо
.sequential_23/conv2d_179/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_179_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╓
sequential_23/conv2d_179/Conv2DConv2Dconv2d_179_input6sequential_23/conv2d_179/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingVALID*
strides
д
/sequential_23/conv2d_179/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╚
 sequential_23/conv2d_179/BiasAddBiasAdd(sequential_23/conv2d_179/Conv2D:output:07sequential_23/conv2d_179/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2Я
&sequential_23/leaky_re_lu_50/LeakyRelu	LeakyRelu)sequential_23/conv2d_179/BiasAdd:output:0*/
_output_shapes
:         2*
alpha%
╫#<о
.sequential_23/conv2d_180/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_180_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0·
sequential_23/conv2d_180/Conv2DConv2D4sequential_23/leaky_re_lu_50/LeakyRelu:activations:06sequential_23/conv2d_180/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /*
paddingVALID*
strides
д
/sequential_23/conv2d_180/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╚
 sequential_23/conv2d_180/BiasAddBiasAdd(sequential_23/conv2d_180/Conv2D:output:07sequential_23/conv2d_180/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /о
.sequential_23/conv2d_181/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_181_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0я
sequential_23/conv2d_181/Conv2DConv2D)sequential_23/conv2d_180/BiasAdd:output:06sequential_23/conv2d_181/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
д
/sequential_23/conv2d_181/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╚
 sequential_23/conv2d_181/BiasAddBiasAdd(sequential_23/conv2d_181/Conv2D:output:07sequential_23/conv2d_181/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,о
.sequential_23/conv2d_182/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_182_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0я
sequential_23/conv2d_182/Conv2DConv2D)sequential_23/conv2d_181/BiasAdd:output:06sequential_23/conv2d_182/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
д
/sequential_23/conv2d_182/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_182_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╚
 sequential_23/conv2d_182/BiasAddBiasAdd(sequential_23/conv2d_182/Conv2D:output:07sequential_23/conv2d_182/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,Я
&sequential_23/leaky_re_lu_51/LeakyRelu	LeakyRelu)sequential_23/conv2d_182/BiasAdd:output:0*/
_output_shapes
:         ,*
alpha%
╫#<о
.sequential_23/conv2d_183/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_183_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0·
sequential_23/conv2d_183/Conv2DConv2D4sequential_23/leaky_re_lu_51/LeakyRelu:activations:06sequential_23/conv2d_183/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )*
paddingVALID*
strides
д
/sequential_23/conv2d_183/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_183_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╚
 sequential_23/conv2d_183/BiasAddBiasAdd(sequential_23/conv2d_183/Conv2D:output:07sequential_23/conv2d_183/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )о
.sequential_23/conv2d_184/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_184_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0я
sequential_23/conv2d_184/Conv2DConv2D)sequential_23/conv2d_183/BiasAdd:output:06sequential_23/conv2d_184/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
д
/sequential_23/conv2d_184/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_184_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╚
 sequential_23/conv2d_184/BiasAddBiasAdd(sequential_23/conv2d_184/Conv2D:output:07sequential_23/conv2d_184/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &о
.sequential_23/conv2d_185/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_185_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0я
sequential_23/conv2d_185/Conv2DConv2D)sequential_23/conv2d_184/BiasAdd:output:06sequential_23/conv2d_185/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
д
/sequential_23/conv2d_185/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_185_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╚
 sequential_23/conv2d_185/BiasAddBiasAdd(sequential_23/conv2d_185/Conv2D:output:07sequential_23/conv2d_185/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &о
.sequential_23/conv2d_186/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_186_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0я
sequential_23/conv2d_186/Conv2DConv2D)sequential_23/conv2d_185/BiasAdd:output:06sequential_23/conv2d_186/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # *
paddingVALID*
strides
д
/sequential_23/conv2d_186/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_186_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╚
 sequential_23/conv2d_186/BiasAddBiasAdd(sequential_23/conv2d_186/Conv2D:output:07sequential_23/conv2d_186/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # о
.sequential_23/conv2d_187/Conv2D/ReadVariableOpReadVariableOp7sequential_23_conv2d_187_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0я
sequential_23/conv2d_187/Conv2DConv2D)sequential_23/conv2d_186/BiasAdd:output:06sequential_23/conv2d_187/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingVALID*
strides
д
/sequential_23/conv2d_187/BiasAdd/ReadVariableOpReadVariableOp8sequential_23_conv2d_187_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╚
 sequential_23/conv2d_187/BiasAddBiasAdd(sequential_23/conv2d_187/Conv2D:output:07sequential_23/conv2d_187/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           ╔
&sequential_23/max_pooling2d_21/MaxPoolMaxPool)sequential_23/conv2d_187/BiasAdd:output:0*/
_output_shapes
:         
 *
ksize
*
paddingVALID*
strides
Д
/sequential_23/time_distributed_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           ╒
)sequential_23/time_distributed_21/ReshapeReshape/sequential_23/max_pooling2d_21/MaxPool:output:08sequential_23/time_distributed_21/Reshape/shape:output:0*
T0*+
_output_shapes
:          Г
2sequential_23/time_distributed_21/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"        т
4sequential_23/time_distributed_21/flatten_21/ReshapeReshape2sequential_23/time_distributed_21/Reshape:output:0;sequential_23/time_distributed_21/flatten_21/Const:output:0*
T0*'
_output_shapes
:          Ж
1sequential_23/time_distributed_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"    
       ч
+sequential_23/time_distributed_21/Reshape_1Reshape=sequential_23/time_distributed_21/flatten_21/Reshape:output:0:sequential_23/time_distributed_21/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         
 Ж
1sequential_23/time_distributed_21/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           ┘
+sequential_23/time_distributed_21/Reshape_2Reshape/sequential_23/max_pooling2d_21/MaxPool:output:0:sequential_23/time_distributed_21/Reshape_2/shape:output:0*
T0*+
_output_shapes
:          
sequential_23/lstm_12/ShapeShape4sequential_23/time_distributed_21/Reshape_1:output:0*
T0*
_output_shapes
:s
)sequential_23/lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_23/lstm_12/strided_sliceStridedSlice$sequential_23/lstm_12/Shape:output:02sequential_23/lstm_12/strided_slice/stack:output:04sequential_23/lstm_12/strided_slice/stack_1:output:04sequential_23/lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_23/lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╡
"sequential_23/lstm_12/zeros/packedPack,sequential_23/lstm_12/strided_slice:output:0-sequential_23/lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_23/lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
sequential_23/lstm_12/zerosFill+sequential_23/lstm_12/zeros/packed:output:0*sequential_23/lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:         dh
&sequential_23/lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╣
$sequential_23/lstm_12/zeros_1/packedPack,sequential_23/lstm_12/strided_slice:output:0/sequential_23/lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_23/lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_23/lstm_12/zeros_1Fill-sequential_23/lstm_12/zeros_1/packed:output:0,sequential_23/lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dЭ
)sequential_23/lstm_12/Read/ReadVariableOpReadVariableOp2sequential_23_lstm_12_read_readvariableop_resource*
_output_shapes
:	 Р*
dtype0З
sequential_23/lstm_12/IdentityIdentity1sequential_23/lstm_12/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рб
+sequential_23/lstm_12/Read_1/ReadVariableOpReadVariableOp4sequential_23_lstm_12_read_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Л
 sequential_23/lstm_12/Identity_1Identity3sequential_23/lstm_12/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРЭ
+sequential_23/lstm_12/Read_2/ReadVariableOpReadVariableOp4sequential_23_lstm_12_read_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0З
 sequential_23/lstm_12/Identity_2Identity3sequential_23/lstm_12/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Рх
%sequential_23/lstm_12/PartitionedCallPartitionedCall4sequential_23/time_distributed_21/Reshape_1:output:0$sequential_23/lstm_12/zeros:output:0&sequential_23/lstm_12/zeros_1:output:0'sequential_23/lstm_12/Identity:output:0)sequential_23/lstm_12/Identity_1:output:0)sequential_23/lstm_12/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1236054в
,sequential_23/dense_20/MatMul/ReadVariableOpReadVariableOp5sequential_23_dense_20_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0┐
sequential_23/dense_20/MatMulMatMul.sequential_23/lstm_12/PartitionedCall:output:04sequential_23/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_23/dense_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_23_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_23/dense_20/BiasAddBiasAdd'sequential_23/dense_20/MatMul:product:05sequential_23/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
sequential_23/dense_20/SoftmaxSoftmax'sequential_23/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:         w
IdentityIdentity(sequential_23/dense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         и	
NoOpNoOp0^sequential_23/conv2d_179/BiasAdd/ReadVariableOp/^sequential_23/conv2d_179/Conv2D/ReadVariableOp0^sequential_23/conv2d_180/BiasAdd/ReadVariableOp/^sequential_23/conv2d_180/Conv2D/ReadVariableOp0^sequential_23/conv2d_181/BiasAdd/ReadVariableOp/^sequential_23/conv2d_181/Conv2D/ReadVariableOp0^sequential_23/conv2d_182/BiasAdd/ReadVariableOp/^sequential_23/conv2d_182/Conv2D/ReadVariableOp0^sequential_23/conv2d_183/BiasAdd/ReadVariableOp/^sequential_23/conv2d_183/Conv2D/ReadVariableOp0^sequential_23/conv2d_184/BiasAdd/ReadVariableOp/^sequential_23/conv2d_184/Conv2D/ReadVariableOp0^sequential_23/conv2d_185/BiasAdd/ReadVariableOp/^sequential_23/conv2d_185/Conv2D/ReadVariableOp0^sequential_23/conv2d_186/BiasAdd/ReadVariableOp/^sequential_23/conv2d_186/Conv2D/ReadVariableOp0^sequential_23/conv2d_187/BiasAdd/ReadVariableOp/^sequential_23/conv2d_187/Conv2D/ReadVariableOp.^sequential_23/dense_20/BiasAdd/ReadVariableOp-^sequential_23/dense_20/MatMul/ReadVariableOp*^sequential_23/lstm_12/Read/ReadVariableOp,^sequential_23/lstm_12/Read_1/ReadVariableOp,^sequential_23/lstm_12/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 2b
/sequential_23/conv2d_179/BiasAdd/ReadVariableOp/sequential_23/conv2d_179/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_179/Conv2D/ReadVariableOp.sequential_23/conv2d_179/Conv2D/ReadVariableOp2b
/sequential_23/conv2d_180/BiasAdd/ReadVariableOp/sequential_23/conv2d_180/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_180/Conv2D/ReadVariableOp.sequential_23/conv2d_180/Conv2D/ReadVariableOp2b
/sequential_23/conv2d_181/BiasAdd/ReadVariableOp/sequential_23/conv2d_181/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_181/Conv2D/ReadVariableOp.sequential_23/conv2d_181/Conv2D/ReadVariableOp2b
/sequential_23/conv2d_182/BiasAdd/ReadVariableOp/sequential_23/conv2d_182/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_182/Conv2D/ReadVariableOp.sequential_23/conv2d_182/Conv2D/ReadVariableOp2b
/sequential_23/conv2d_183/BiasAdd/ReadVariableOp/sequential_23/conv2d_183/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_183/Conv2D/ReadVariableOp.sequential_23/conv2d_183/Conv2D/ReadVariableOp2b
/sequential_23/conv2d_184/BiasAdd/ReadVariableOp/sequential_23/conv2d_184/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_184/Conv2D/ReadVariableOp.sequential_23/conv2d_184/Conv2D/ReadVariableOp2b
/sequential_23/conv2d_185/BiasAdd/ReadVariableOp/sequential_23/conv2d_185/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_185/Conv2D/ReadVariableOp.sequential_23/conv2d_185/Conv2D/ReadVariableOp2b
/sequential_23/conv2d_186/BiasAdd/ReadVariableOp/sequential_23/conv2d_186/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_186/Conv2D/ReadVariableOp.sequential_23/conv2d_186/Conv2D/ReadVariableOp2b
/sequential_23/conv2d_187/BiasAdd/ReadVariableOp/sequential_23/conv2d_187/BiasAdd/ReadVariableOp2`
.sequential_23/conv2d_187/Conv2D/ReadVariableOp.sequential_23/conv2d_187/Conv2D/ReadVariableOp2^
-sequential_23/dense_20/BiasAdd/ReadVariableOp-sequential_23/dense_20/BiasAdd/ReadVariableOp2\
,sequential_23/dense_20/MatMul/ReadVariableOp,sequential_23/dense_20/MatMul/ReadVariableOp2V
)sequential_23/lstm_12/Read/ReadVariableOp)sequential_23/lstm_12/Read/ReadVariableOp2Z
+sequential_23/lstm_12/Read_1/ReadVariableOp+sequential_23/lstm_12/Read_1/ReadVariableOp2Z
+sequential_23/lstm_12/Read_2/ReadVariableOp+sequential_23/lstm_12/Read_2/ReadVariableOp:a ]
/
_output_shapes
:         2
*
_user_specified_nameconv2d_179_input
┴┴
ч
=__inference___backward_gpu_lstm_with_fallback_1236149_1236325
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:
         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:
          :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
 u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
 t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:
         d::
          :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_16204b02-d6ba-4ed3-92f7-010b34003e65*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1236324*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:
         d:	

_output_shapes
::1
-
+
_output_shapes
:
          :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┬~
Ю
J__inference_sequential_23_layer_call_and_return_conditional_losses_1240037

inputsC
)conv2d_179_conv2d_readvariableop_resource:8
*conv2d_179_biasadd_readvariableop_resource:C
)conv2d_180_conv2d_readvariableop_resource:8
*conv2d_180_biasadd_readvariableop_resource:C
)conv2d_181_conv2d_readvariableop_resource:8
*conv2d_181_biasadd_readvariableop_resource:C
)conv2d_182_conv2d_readvariableop_resource:8
*conv2d_182_biasadd_readvariableop_resource:C
)conv2d_183_conv2d_readvariableop_resource:8
*conv2d_183_biasadd_readvariableop_resource:C
)conv2d_184_conv2d_readvariableop_resource:8
*conv2d_184_biasadd_readvariableop_resource:C
)conv2d_185_conv2d_readvariableop_resource:8
*conv2d_185_biasadd_readvariableop_resource:C
)conv2d_186_conv2d_readvariableop_resource: 8
*conv2d_186_biasadd_readvariableop_resource: C
)conv2d_187_conv2d_readvariableop_resource:  8
*conv2d_187_biasadd_readvariableop_resource: 7
$lstm_12_read_readvariableop_resource:	 Р9
&lstm_12_read_1_readvariableop_resource:	dР5
&lstm_12_read_2_readvariableop_resource:	Р9
'dense_20_matmul_readvariableop_resource:d6
(dense_20_biasadd_readvariableop_resource:
identityИв!conv2d_179/BiasAdd/ReadVariableOpв conv2d_179/Conv2D/ReadVariableOpв!conv2d_180/BiasAdd/ReadVariableOpв conv2d_180/Conv2D/ReadVariableOpв!conv2d_181/BiasAdd/ReadVariableOpв conv2d_181/Conv2D/ReadVariableOpв!conv2d_182/BiasAdd/ReadVariableOpв conv2d_182/Conv2D/ReadVariableOpв!conv2d_183/BiasAdd/ReadVariableOpв conv2d_183/Conv2D/ReadVariableOpв!conv2d_184/BiasAdd/ReadVariableOpв conv2d_184/Conv2D/ReadVariableOpв!conv2d_185/BiasAdd/ReadVariableOpв conv2d_185/Conv2D/ReadVariableOpв!conv2d_186/BiasAdd/ReadVariableOpв conv2d_186/Conv2D/ReadVariableOpв!conv2d_187/BiasAdd/ReadVariableOpв conv2d_187/Conv2D/ReadVariableOpвdense_20/BiasAdd/ReadVariableOpвdense_20/MatMul/ReadVariableOpвlstm_12/Read/ReadVariableOpвlstm_12/Read_1/ReadVariableOpвlstm_12/Read_2/ReadVariableOpТ
 conv2d_179/Conv2D/ReadVariableOpReadVariableOp)conv2d_179_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0░
conv2d_179/Conv2DConv2Dinputs(conv2d_179/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingVALID*
strides
И
!conv2d_179/BiasAdd/ReadVariableOpReadVariableOp*conv2d_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_179/BiasAddBiasAddconv2d_179/Conv2D:output:0)conv2d_179/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2Г
leaky_re_lu_50/LeakyRelu	LeakyReluconv2d_179/BiasAdd:output:0*/
_output_shapes
:         2*
alpha%
╫#<Т
 conv2d_180/Conv2D/ReadVariableOpReadVariableOp)conv2d_180_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╨
conv2d_180/Conv2DConv2D&leaky_re_lu_50/LeakyRelu:activations:0(conv2d_180/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /*
paddingVALID*
strides
И
!conv2d_180/BiasAdd/ReadVariableOpReadVariableOp*conv2d_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_180/BiasAddBiasAddconv2d_180/Conv2D:output:0)conv2d_180/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /Т
 conv2d_181/Conv2D/ReadVariableOpReadVariableOp)conv2d_181_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┼
conv2d_181/Conv2DConv2Dconv2d_180/BiasAdd:output:0(conv2d_181/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
И
!conv2d_181/BiasAdd/ReadVariableOpReadVariableOp*conv2d_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_181/BiasAddBiasAddconv2d_181/Conv2D:output:0)conv2d_181/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,Т
 conv2d_182/Conv2D/ReadVariableOpReadVariableOp)conv2d_182_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┼
conv2d_182/Conv2DConv2Dconv2d_181/BiasAdd:output:0(conv2d_182/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
И
!conv2d_182/BiasAdd/ReadVariableOpReadVariableOp*conv2d_182_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_182/BiasAddBiasAddconv2d_182/Conv2D:output:0)conv2d_182/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,Г
leaky_re_lu_51/LeakyRelu	LeakyReluconv2d_182/BiasAdd:output:0*/
_output_shapes
:         ,*
alpha%
╫#<Т
 conv2d_183/Conv2D/ReadVariableOpReadVariableOp)conv2d_183_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╨
conv2d_183/Conv2DConv2D&leaky_re_lu_51/LeakyRelu:activations:0(conv2d_183/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )*
paddingVALID*
strides
И
!conv2d_183/BiasAdd/ReadVariableOpReadVariableOp*conv2d_183_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_183/BiasAddBiasAddconv2d_183/Conv2D:output:0)conv2d_183/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )Т
 conv2d_184/Conv2D/ReadVariableOpReadVariableOp)conv2d_184_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┼
conv2d_184/Conv2DConv2Dconv2d_183/BiasAdd:output:0(conv2d_184/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
И
!conv2d_184/BiasAdd/ReadVariableOpReadVariableOp*conv2d_184_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_184/BiasAddBiasAddconv2d_184/Conv2D:output:0)conv2d_184/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &Т
 conv2d_185/Conv2D/ReadVariableOpReadVariableOp)conv2d_185_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┼
conv2d_185/Conv2DConv2Dconv2d_184/BiasAdd:output:0(conv2d_185/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
И
!conv2d_185/BiasAdd/ReadVariableOpReadVariableOp*conv2d_185_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_185/BiasAddBiasAddconv2d_185/Conv2D:output:0)conv2d_185/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &Т
 conv2d_186/Conv2D/ReadVariableOpReadVariableOp)conv2d_186_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0┼
conv2d_186/Conv2DConv2Dconv2d_185/BiasAdd:output:0(conv2d_186/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # *
paddingVALID*
strides
И
!conv2d_186/BiasAdd/ReadVariableOpReadVariableOp*conv2d_186_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ю
conv2d_186/BiasAddBiasAddconv2d_186/Conv2D:output:0)conv2d_186/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # Т
 conv2d_187/Conv2D/ReadVariableOpReadVariableOp)conv2d_187_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0┼
conv2d_187/Conv2DConv2Dconv2d_186/BiasAdd:output:0(conv2d_187/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingVALID*
strides
И
!conv2d_187/BiasAdd/ReadVariableOpReadVariableOp*conv2d_187_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ю
conv2d_187/BiasAddBiasAddconv2d_187/Conv2D:output:0)conv2d_187/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           н
max_pooling2d_21/MaxPoolMaxPoolconv2d_187/BiasAdd:output:0*/
_output_shapes
:         
 *
ksize
*
paddingVALID*
strides
v
!time_distributed_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           л
time_distributed_21/ReshapeReshape!max_pooling2d_21/MaxPool:output:0*time_distributed_21/Reshape/shape:output:0*
T0*+
_output_shapes
:          u
$time_distributed_21/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"        ╕
&time_distributed_21/flatten_21/ReshapeReshape$time_distributed_21/Reshape:output:0-time_distributed_21/flatten_21/Const:output:0*
T0*'
_output_shapes
:          x
#time_distributed_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"    
       ╜
time_distributed_21/Reshape_1Reshape/time_distributed_21/flatten_21/Reshape:output:0,time_distributed_21/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         
 x
#time_distributed_21/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           п
time_distributed_21/Reshape_2Reshape!max_pooling2d_21/MaxPool:output:0,time_distributed_21/Reshape_2/shape:output:0*
T0*+
_output_shapes
:          c
lstm_12/ShapeShape&time_distributed_21/Reshape_1:output:0*
T0*
_output_shapes
:e
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЛ
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dП
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dБ
lstm_12/Read/ReadVariableOpReadVariableOp$lstm_12_read_readvariableop_resource*
_output_shapes
:	 Р*
dtype0k
lstm_12/IdentityIdentity#lstm_12/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	 РЕ
lstm_12/Read_1/ReadVariableOpReadVariableOp&lstm_12_read_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0o
lstm_12/Identity_1Identity%lstm_12/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРБ
lstm_12/Read_2/ReadVariableOpReadVariableOp&lstm_12_read_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0k
lstm_12/Identity_2Identity%lstm_12/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:РГ
lstm_12/PartitionedCallPartitionedCall&time_distributed_21/Reshape_1:output:0lstm_12/zeros:output:0lstm_12/zeros_1:output:0lstm_12/Identity:output:0lstm_12/Identity_1:output:0lstm_12/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1239757Ж
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Х
dense_20/MatMulMatMul lstm_12/PartitionedCall:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_20/SoftmaxSoftmaxdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ц
NoOpNoOp"^conv2d_179/BiasAdd/ReadVariableOp!^conv2d_179/Conv2D/ReadVariableOp"^conv2d_180/BiasAdd/ReadVariableOp!^conv2d_180/Conv2D/ReadVariableOp"^conv2d_181/BiasAdd/ReadVariableOp!^conv2d_181/Conv2D/ReadVariableOp"^conv2d_182/BiasAdd/ReadVariableOp!^conv2d_182/Conv2D/ReadVariableOp"^conv2d_183/BiasAdd/ReadVariableOp!^conv2d_183/Conv2D/ReadVariableOp"^conv2d_184/BiasAdd/ReadVariableOp!^conv2d_184/Conv2D/ReadVariableOp"^conv2d_185/BiasAdd/ReadVariableOp!^conv2d_185/Conv2D/ReadVariableOp"^conv2d_186/BiasAdd/ReadVariableOp!^conv2d_186/Conv2D/ReadVariableOp"^conv2d_187/BiasAdd/ReadVariableOp!^conv2d_187/Conv2D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp^lstm_12/Read/ReadVariableOp^lstm_12/Read_1/ReadVariableOp^lstm_12/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_179/BiasAdd/ReadVariableOp!conv2d_179/BiasAdd/ReadVariableOp2D
 conv2d_179/Conv2D/ReadVariableOp conv2d_179/Conv2D/ReadVariableOp2F
!conv2d_180/BiasAdd/ReadVariableOp!conv2d_180/BiasAdd/ReadVariableOp2D
 conv2d_180/Conv2D/ReadVariableOp conv2d_180/Conv2D/ReadVariableOp2F
!conv2d_181/BiasAdd/ReadVariableOp!conv2d_181/BiasAdd/ReadVariableOp2D
 conv2d_181/Conv2D/ReadVariableOp conv2d_181/Conv2D/ReadVariableOp2F
!conv2d_182/BiasAdd/ReadVariableOp!conv2d_182/BiasAdd/ReadVariableOp2D
 conv2d_182/Conv2D/ReadVariableOp conv2d_182/Conv2D/ReadVariableOp2F
!conv2d_183/BiasAdd/ReadVariableOp!conv2d_183/BiasAdd/ReadVariableOp2D
 conv2d_183/Conv2D/ReadVariableOp conv2d_183/Conv2D/ReadVariableOp2F
!conv2d_184/BiasAdd/ReadVariableOp!conv2d_184/BiasAdd/ReadVariableOp2D
 conv2d_184/Conv2D/ReadVariableOp conv2d_184/Conv2D/ReadVariableOp2F
!conv2d_185/BiasAdd/ReadVariableOp!conv2d_185/BiasAdd/ReadVariableOp2D
 conv2d_185/Conv2D/ReadVariableOp conv2d_185/Conv2D/ReadVariableOp2F
!conv2d_186/BiasAdd/ReadVariableOp!conv2d_186/BiasAdd/ReadVariableOp2D
 conv2d_186/Conv2D/ReadVariableOp conv2d_186/Conv2D/ReadVariableOp2F
!conv2d_187/BiasAdd/ReadVariableOp!conv2d_187/BiasAdd/ReadVariableOp2D
 conv2d_187/Conv2D/ReadVariableOp conv2d_187/Conv2D/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2:
lstm_12/Read/ReadVariableOplstm_12/Read/ReadVariableOp2>
lstm_12/Read_1/ReadVariableOplstm_12/Read_1/ReadVariableOp2>
lstm_12/Read_2/ReadVariableOplstm_12/Read_2/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
┴┴
ч
=__inference___backward_gpu_lstm_with_fallback_1241864_1242040
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:
         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:
          :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
 u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
 t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:
         d::
          :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_c04a4d62-e1b8-4b85-8aea-4dae3da67322*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1242039*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:
         d:	

_output_shapes
::1
-
+
_output_shapes
:
          :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
л

А
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1237396

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         &w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         )
 
_user_specified_nameinputs
Й┬
ч
=__inference___backward_gpu_lstm_with_fallback_1240577_1240753
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:м
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                   :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                   u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Р{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                   t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesЎ
є:         d:         d:         d:         d: :         d:         d:         d:                  d::                   :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_6df5218d-ed19-494a-8d7e-341fff09d843*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1240752*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d::6
4
_output_shapes"
 :                  d:	

_output_shapes
:::
6
4
_output_shapes"
 :                   :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╡
м
/__inference_sequential_23_layer_call_fn_1238984

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13: 

unknown_14: $

unknown_15:  

unknown_16: 

unknown_17:	 Р

unknown_18:	dР

unknown_19:	Р

unknown_20:d

unknown_21:
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_23_layer_call_and_return_conditional_losses_1237908o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
л

А
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1237380

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         )w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
▒
└
D__inference_lstm_12_layer_call_and_return_conditional_losses_1240755
inputs_0/
read_readvariableop_resource:	 Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp=
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р╡
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1240482i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
▄K
в
(__forward_gpu_lstm_with_fallback_1238406

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_cb091bd2-efbb-4745-821f-5ab4d1e7c4f2*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1238231_1238407*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┤J
Б
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238807
conv2d_179_input,
conv2d_179_1238743: 
conv2d_179_1238745:,
conv2d_180_1238749: 
conv2d_180_1238751:,
conv2d_181_1238754: 
conv2d_181_1238756:,
conv2d_182_1238759: 
conv2d_182_1238761:,
conv2d_183_1238765: 
conv2d_183_1238767:,
conv2d_184_1238770: 
conv2d_184_1238772:,
conv2d_185_1238775: 
conv2d_185_1238777:,
conv2d_186_1238780:  
conv2d_186_1238782: ,
conv2d_187_1238785:   
conv2d_187_1238787: "
lstm_12_1238794:	 Р"
lstm_12_1238796:	dР
lstm_12_1238798:	Р"
dense_20_1238801:d
dense_20_1238803:
identityИв"conv2d_179/StatefulPartitionedCallв"conv2d_180/StatefulPartitionedCallв"conv2d_181/StatefulPartitionedCallв"conv2d_182/StatefulPartitionedCallв"conv2d_183/StatefulPartitionedCallв"conv2d_184/StatefulPartitionedCallв"conv2d_185/StatefulPartitionedCallв"conv2d_186/StatefulPartitionedCallв"conv2d_187/StatefulPartitionedCallв dense_20/StatefulPartitionedCallвlstm_12/StatefulPartitionedCallН
"conv2d_179/StatefulPartitionedCallStatefulPartitionedCallconv2d_179_inputconv2d_179_1238743conv2d_179_1238745*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1237302Є
leaky_re_lu_50/PartitionedCallPartitionedCall+conv2d_179/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1237313д
"conv2d_180/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_50/PartitionedCall:output:0conv2d_180_1238749conv2d_180_1238751*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1237325и
"conv2d_181/StatefulPartitionedCallStatefulPartitionedCall+conv2d_180/StatefulPartitionedCall:output:0conv2d_181_1238754conv2d_181_1238756*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1237341и
"conv2d_182/StatefulPartitionedCallStatefulPartitionedCall+conv2d_181/StatefulPartitionedCall:output:0conv2d_182_1238759conv2d_182_1238761*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1237357Є
leaky_re_lu_51/PartitionedCallPartitionedCall+conv2d_182/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1237368д
"conv2d_183/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_51/PartitionedCall:output:0conv2d_183_1238765conv2d_183_1238767*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         )*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1237380и
"conv2d_184/StatefulPartitionedCallStatefulPartitionedCall+conv2d_183/StatefulPartitionedCall:output:0conv2d_184_1238770conv2d_184_1238772*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1237396и
"conv2d_185/StatefulPartitionedCallStatefulPartitionedCall+conv2d_184/StatefulPartitionedCall:output:0conv2d_185_1238775conv2d_185_1238777*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1237412и
"conv2d_186/StatefulPartitionedCallStatefulPartitionedCall+conv2d_185/StatefulPartitionedCall:output:0conv2d_186_1238780conv2d_186_1238782*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         # *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1237428и
"conv2d_187/StatefulPartitionedCallStatefulPartitionedCall+conv2d_186/StatefulPartitionedCall:output:0conv2d_187_1238785conv2d_187_1238787*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1237444Ў
 max_pooling2d_21/PartitionedCallPartitionedCall+conv2d_187/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1236343Ў
#time_distributed_21/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1236373v
!time_distributed_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           │
time_distributed_21/ReshapeReshape)max_pooling2d_21/PartitionedCall:output:0*time_distributed_21/Reshape/shape:output:0*
T0*+
_output_shapes
:          и
lstm_12/StatefulPartitionedCallStatefulPartitionedCall,time_distributed_21/PartitionedCall:output:0lstm_12_1238794lstm_12_1238796lstm_12_1238798*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1237882Х
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0dense_20_1238801dense_20_1238803*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1237901x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╪
NoOpNoOp#^conv2d_179/StatefulPartitionedCall#^conv2d_180/StatefulPartitionedCall#^conv2d_181/StatefulPartitionedCall#^conv2d_182/StatefulPartitionedCall#^conv2d_183/StatefulPartitionedCall#^conv2d_184/StatefulPartitionedCall#^conv2d_185/StatefulPartitionedCall#^conv2d_186/StatefulPartitionedCall#^conv2d_187/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 2H
"conv2d_179/StatefulPartitionedCall"conv2d_179/StatefulPartitionedCall2H
"conv2d_180/StatefulPartitionedCall"conv2d_180/StatefulPartitionedCall2H
"conv2d_181/StatefulPartitionedCall"conv2d_181/StatefulPartitionedCall2H
"conv2d_182/StatefulPartitionedCall"conv2d_182/StatefulPartitionedCall2H
"conv2d_183/StatefulPartitionedCall"conv2d_183/StatefulPartitionedCall2H
"conv2d_184/StatefulPartitionedCall"conv2d_184/StatefulPartitionedCall2H
"conv2d_185/StatefulPartitionedCall"conv2d_185/StatefulPartitionedCall2H
"conv2d_186/StatefulPartitionedCall"conv2d_186/StatefulPartitionedCall2H
"conv2d_187/StatefulPartitionedCall"conv2d_187/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:a ]
/
_output_shapes
:         2
*
_user_specified_nameconv2d_179_input
Ч
╛
D__inference_lstm_12_layer_call_and_return_conditional_losses_1241613

inputs/
read_readvariableop_resource:	 Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1241340i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
 : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs
б

Ў
E__inference_dense_20_layer_call_and_return_conditional_losses_1237901

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Е
g
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1240133

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         ,*
alpha%
╫#<g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         ,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ,:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
В╣
 2
#__inference__traced_restore_1242574
file_prefix<
"assignvariableop_conv2d_179_kernel:0
"assignvariableop_1_conv2d_179_bias:>
$assignvariableop_2_conv2d_180_kernel:0
"assignvariableop_3_conv2d_180_bias:>
$assignvariableop_4_conv2d_181_kernel:0
"assignvariableop_5_conv2d_181_bias:>
$assignvariableop_6_conv2d_182_kernel:0
"assignvariableop_7_conv2d_182_bias:>
$assignvariableop_8_conv2d_183_kernel:0
"assignvariableop_9_conv2d_183_bias:?
%assignvariableop_10_conv2d_184_kernel:1
#assignvariableop_11_conv2d_184_bias:?
%assignvariableop_12_conv2d_185_kernel:1
#assignvariableop_13_conv2d_185_bias:?
%assignvariableop_14_conv2d_186_kernel: 1
#assignvariableop_15_conv2d_186_bias: ?
%assignvariableop_16_conv2d_187_kernel:  1
#assignvariableop_17_conv2d_187_bias: 5
#assignvariableop_18_dense_20_kernel:d/
!assignvariableop_19_dense_20_bias:B
/assignvariableop_20_lstm_12_lstm_cell_12_kernel:	 РL
9assignvariableop_21_lstm_12_lstm_cell_12_recurrent_kernel:	dР<
-assignvariableop_22_lstm_12_lstm_cell_12_bias:	Р'
assignvariableop_23_adam_iter:	 )
assignvariableop_24_adam_beta_1: )
assignvariableop_25_adam_beta_2: (
assignvariableop_26_adam_decay: 0
&assignvariableop_27_adam_learning_rate: %
assignvariableop_28_total_1: %
assignvariableop_29_count_1: #
assignvariableop_30_total: #
assignvariableop_31_count: F
,assignvariableop_32_adam_conv2d_179_kernel_m:8
*assignvariableop_33_adam_conv2d_179_bias_m:F
,assignvariableop_34_adam_conv2d_180_kernel_m:8
*assignvariableop_35_adam_conv2d_180_bias_m:F
,assignvariableop_36_adam_conv2d_181_kernel_m:8
*assignvariableop_37_adam_conv2d_181_bias_m:F
,assignvariableop_38_adam_conv2d_182_kernel_m:8
*assignvariableop_39_adam_conv2d_182_bias_m:F
,assignvariableop_40_adam_conv2d_183_kernel_m:8
*assignvariableop_41_adam_conv2d_183_bias_m:F
,assignvariableop_42_adam_conv2d_184_kernel_m:8
*assignvariableop_43_adam_conv2d_184_bias_m:F
,assignvariableop_44_adam_conv2d_185_kernel_m:8
*assignvariableop_45_adam_conv2d_185_bias_m:F
,assignvariableop_46_adam_conv2d_186_kernel_m: 8
*assignvariableop_47_adam_conv2d_186_bias_m: F
,assignvariableop_48_adam_conv2d_187_kernel_m:  8
*assignvariableop_49_adam_conv2d_187_bias_m: <
*assignvariableop_50_adam_dense_20_kernel_m:d6
(assignvariableop_51_adam_dense_20_bias_m:I
6assignvariableop_52_adam_lstm_12_lstm_cell_12_kernel_m:	 РS
@assignvariableop_53_adam_lstm_12_lstm_cell_12_recurrent_kernel_m:	dРC
4assignvariableop_54_adam_lstm_12_lstm_cell_12_bias_m:	РF
,assignvariableop_55_adam_conv2d_179_kernel_v:8
*assignvariableop_56_adam_conv2d_179_bias_v:F
,assignvariableop_57_adam_conv2d_180_kernel_v:8
*assignvariableop_58_adam_conv2d_180_bias_v:F
,assignvariableop_59_adam_conv2d_181_kernel_v:8
*assignvariableop_60_adam_conv2d_181_bias_v:F
,assignvariableop_61_adam_conv2d_182_kernel_v:8
*assignvariableop_62_adam_conv2d_182_bias_v:F
,assignvariableop_63_adam_conv2d_183_kernel_v:8
*assignvariableop_64_adam_conv2d_183_bias_v:F
,assignvariableop_65_adam_conv2d_184_kernel_v:8
*assignvariableop_66_adam_conv2d_184_bias_v:F
,assignvariableop_67_adam_conv2d_185_kernel_v:8
*assignvariableop_68_adam_conv2d_185_bias_v:F
,assignvariableop_69_adam_conv2d_186_kernel_v: 8
*assignvariableop_70_adam_conv2d_186_bias_v: F
,assignvariableop_71_adam_conv2d_187_kernel_v:  8
*assignvariableop_72_adam_conv2d_187_bias_v: <
*assignvariableop_73_adam_dense_20_kernel_v:d6
(assignvariableop_74_adam_dense_20_bias_v:I
6assignvariableop_75_adam_lstm_12_lstm_cell_12_kernel_v:	 РS
@assignvariableop_76_adam_lstm_12_lstm_cell_12_recurrent_kernel_v:	dРC
4assignvariableop_77_adam_lstm_12_lstm_cell_12_bias_v:	Р
identity_79ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_8вAssignVariableOp_9н+
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*╙*
value╔*B╞*OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHС
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*│
valueйBжOB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B м
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╥
_output_shapes┐
╝:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*]
dtypesS
Q2O	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_179_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_179_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_180_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_180_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_181_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_181_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_182_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_182_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv2d_183_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_183_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv2d_184_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_184_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_185_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_185_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv2d_186_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv2d_186_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv2d_187_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv2d_187_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_20_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_20_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_20AssignVariableOp/assignvariableop_20_lstm_12_lstm_cell_12_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_21AssignVariableOp9assignvariableop_21_lstm_12_lstm_cell_12_recurrent_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_22AssignVariableOp-assignvariableop_22_lstm_12_lstm_cell_12_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_iterIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_beta_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_beta_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_decayIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_27AssignVariableOp&assignvariableop_27_adam_learning_rateIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_28AssignVariableOpassignvariableop_28_total_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_29AssignVariableOpassignvariableop_29_count_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_30AssignVariableOpassignvariableop_30_totalIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_31AssignVariableOpassignvariableop_31_countIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_conv2d_179_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_179_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_34AssignVariableOp,assignvariableop_34_adam_conv2d_180_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_180_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_36AssignVariableOp,assignvariableop_36_adam_conv2d_181_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_181_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_38AssignVariableOp,assignvariableop_38_adam_conv2d_182_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_conv2d_182_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_40AssignVariableOp,assignvariableop_40_adam_conv2d_183_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_conv2d_183_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_42AssignVariableOp,assignvariableop_42_adam_conv2d_184_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_conv2d_184_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_44AssignVariableOp,assignvariableop_44_adam_conv2d_185_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv2d_185_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_46AssignVariableOp,assignvariableop_46_adam_conv2d_186_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_conv2d_186_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_48AssignVariableOp,assignvariableop_48_adam_conv2d_187_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_conv2d_187_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_dense_20_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_dense_20_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_lstm_12_lstm_cell_12_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_53AssignVariableOp@assignvariableop_53_adam_lstm_12_lstm_cell_12_recurrent_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_54AssignVariableOp4assignvariableop_54_adam_lstm_12_lstm_cell_12_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_conv2d_179_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_conv2d_179_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_57AssignVariableOp,assignvariableop_57_adam_conv2d_180_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_conv2d_180_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_59AssignVariableOp,assignvariableop_59_adam_conv2d_181_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_conv2d_181_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_61AssignVariableOp,assignvariableop_61_adam_conv2d_182_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_conv2d_182_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_conv2d_183_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_conv2d_183_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_65AssignVariableOp,assignvariableop_65_adam_conv2d_184_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_conv2d_184_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_67AssignVariableOp,assignvariableop_67_adam_conv2d_185_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_conv2d_185_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_69AssignVariableOp,assignvariableop_69_adam_conv2d_186_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_70AssignVariableOp*assignvariableop_70_adam_conv2d_186_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv2d_187_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv2d_187_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_20_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_20_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_75AssignVariableOp6assignvariableop_75_adam_lstm_12_lstm_cell_12_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_76AssignVariableOp@assignvariableop_76_adam_lstm_12_lstm_cell_12_recurrent_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_77AssignVariableOp4assignvariableop_77_adam_lstm_12_lstm_cell_12_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Г
Identity_78Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_79IdentityIdentity_78:output:0^NoOp_1*
T0*
_output_shapes
: Ё
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_79Identity_79:output:0*│
_input_shapesб
Ю: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
х
l
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1236373

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskb
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:          ╟
flatten_21/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_flatten_21_layer_call_and_return_conditional_losses_1236366\
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
value	B : Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Т
	Reshape_1Reshape#flatten_21/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                   g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"                   :` \
8
_output_shapes&
$:"                   
 
_user_specified_nameinputs
┌)
╨
while_body_1235968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
й
╛
D__inference_lstm_12_layer_call_and_return_conditional_losses_1236836

inputs/
read_readvariableop_resource:	 Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1236563i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
▄K
в
(__forward_gpu_lstm_with_fallback_1237879

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_c49407a6-dae0-4707-b79d-d71d36bdad1e*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1237704_1237880*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ц	
╞
while_cond_1241253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1241253___redundant_placeholder05
1while_while_cond_1241253___redundant_placeholder15
1while_while_cond_1241253___redundant_placeholder25
1while_while_cond_1241253___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Й┬
ч
=__inference___backward_gpu_lstm_with_fallback_1241006_1241182
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:м
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                   :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                   u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Р{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                   t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesЎ
є:         d:         d:         d:         d: :         d:         d:         d:                  d::                   :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_ee6d1e0d-a22b-479e-8d22-925293bc6d78*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1241181*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d::6
4
_output_shapes"
 :                  d:	

_output_shapes
:::
6
4
_output_shapes"
 :                   :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
С
╕
)__inference_lstm_12_layer_call_fn_1240293
inputs_0
unknown:	 Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1236836o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
Ё
б
,__inference_conv2d_183_layer_call_fn_1240142

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         )*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1237380w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         )`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ,: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
ўK
в
(__forward_gpu_lstm_with_fallback_1240752

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_6df5218d-ed19-494a-8d7e-341fff09d843*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1240577_1240753*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┌)
╨
while_body_1240825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
Ц	
╞
while_cond_1239670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1239670___redundant_placeholder05
1while_while_cond_1239670___redundant_placeholder15
1while_while_cond_1239670___redundant_placeholder25
1while_while_cond_1239670___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
б
м
%__inference_signature_wrapper_1238933
conv2d_179_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13: 

unknown_14: $

unknown_15:  

unknown_16: 

unknown_17:	 Р

unknown_18:	dР

unknown_19:	Р

unknown_20:d

unknown_21:
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallconv2d_179_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_1236334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:         2
*
_user_specified_nameconv2d_179_input
╝
N
2__inference_max_pooling2d_21_layer_call_fn_1240233

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1236343Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ч
╛
D__inference_lstm_12_layer_call_and_return_conditional_losses_1237882

inputs/
read_readvariableop_resource:	 Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1237609i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
 : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs
ж;
┴
!__inference_standard_lstm_1239256

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1239170*
condR
while_cond_1239169*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_ac81ccf0-4ff7-458b-bed8-32cd1ab046ec*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
ЦJ
ў

J__inference_sequential_23_layer_call_and_return_conditional_losses_1237908

inputs,
conv2d_179_1237303: 
conv2d_179_1237305:,
conv2d_180_1237326: 
conv2d_180_1237328:,
conv2d_181_1237342: 
conv2d_181_1237344:,
conv2d_182_1237358: 
conv2d_182_1237360:,
conv2d_183_1237381: 
conv2d_183_1237383:,
conv2d_184_1237397: 
conv2d_184_1237399:,
conv2d_185_1237413: 
conv2d_185_1237415:,
conv2d_186_1237429:  
conv2d_186_1237431: ,
conv2d_187_1237445:   
conv2d_187_1237447: "
lstm_12_1237883:	 Р"
lstm_12_1237885:	dР
lstm_12_1237887:	Р"
dense_20_1237902:d
dense_20_1237904:
identityИв"conv2d_179/StatefulPartitionedCallв"conv2d_180/StatefulPartitionedCallв"conv2d_181/StatefulPartitionedCallв"conv2d_182/StatefulPartitionedCallв"conv2d_183/StatefulPartitionedCallв"conv2d_184/StatefulPartitionedCallв"conv2d_185/StatefulPartitionedCallв"conv2d_186/StatefulPartitionedCallв"conv2d_187/StatefulPartitionedCallв dense_20/StatefulPartitionedCallвlstm_12/StatefulPartitionedCallГ
"conv2d_179/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_179_1237303conv2d_179_1237305*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1237302Є
leaky_re_lu_50/PartitionedCallPartitionedCall+conv2d_179/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1237313д
"conv2d_180/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_50/PartitionedCall:output:0conv2d_180_1237326conv2d_180_1237328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1237325и
"conv2d_181/StatefulPartitionedCallStatefulPartitionedCall+conv2d_180/StatefulPartitionedCall:output:0conv2d_181_1237342conv2d_181_1237344*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1237341и
"conv2d_182/StatefulPartitionedCallStatefulPartitionedCall+conv2d_181/StatefulPartitionedCall:output:0conv2d_182_1237358conv2d_182_1237360*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1237357Є
leaky_re_lu_51/PartitionedCallPartitionedCall+conv2d_182/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1237368д
"conv2d_183/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_51/PartitionedCall:output:0conv2d_183_1237381conv2d_183_1237383*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         )*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1237380и
"conv2d_184/StatefulPartitionedCallStatefulPartitionedCall+conv2d_183/StatefulPartitionedCall:output:0conv2d_184_1237397conv2d_184_1237399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1237396и
"conv2d_185/StatefulPartitionedCallStatefulPartitionedCall+conv2d_184/StatefulPartitionedCall:output:0conv2d_185_1237413conv2d_185_1237415*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1237412и
"conv2d_186/StatefulPartitionedCallStatefulPartitionedCall+conv2d_185/StatefulPartitionedCall:output:0conv2d_186_1237429conv2d_186_1237431*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         # *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1237428и
"conv2d_187/StatefulPartitionedCallStatefulPartitionedCall+conv2d_186/StatefulPartitionedCall:output:0conv2d_187_1237445conv2d_187_1237447*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1237444Ў
 max_pooling2d_21/PartitionedCallPartitionedCall+conv2d_187/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1236343Ў
#time_distributed_21/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1236373v
!time_distributed_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           │
time_distributed_21/ReshapeReshape)max_pooling2d_21/PartitionedCall:output:0*time_distributed_21/Reshape/shape:output:0*
T0*+
_output_shapes
:          и
lstm_12/StatefulPartitionedCallStatefulPartitionedCall,time_distributed_21/PartitionedCall:output:0lstm_12_1237883lstm_12_1237885lstm_12_1237887*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1237882Х
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0dense_20_1237902dense_20_1237904*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1237901x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╪
NoOpNoOp#^conv2d_179/StatefulPartitionedCall#^conv2d_180/StatefulPartitionedCall#^conv2d_181/StatefulPartitionedCall#^conv2d_182/StatefulPartitionedCall#^conv2d_183/StatefulPartitionedCall#^conv2d_184/StatefulPartitionedCall#^conv2d_185/StatefulPartitionedCall#^conv2d_186/StatefulPartitionedCall#^conv2d_187/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 2H
"conv2d_179/StatefulPartitionedCall"conv2d_179/StatefulPartitionedCall2H
"conv2d_180/StatefulPartitionedCall"conv2d_180/StatefulPartitionedCall2H
"conv2d_181/StatefulPartitionedCall"conv2d_181/StatefulPartitionedCall2H
"conv2d_182/StatefulPartitionedCall"conv2d_182/StatefulPartitionedCall2H
"conv2d_183/StatefulPartitionedCall"conv2d_183/StatefulPartitionedCall2H
"conv2d_184/StatefulPartitionedCall"conv2d_184/StatefulPartitionedCall2H
"conv2d_185/StatefulPartitionedCall"conv2d_185/StatefulPartitionedCall2H
"conv2d_186/StatefulPartitionedCall"conv2d_186/StatefulPartitionedCall2H
"conv2d_187/StatefulPartitionedCall"conv2d_187/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
Ц	
╞
while_cond_1235967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1235967___redundant_placeholder05
1while_while_cond_1235967___redundant_placeholder15
1while_while_cond_1235967___redundant_placeholder25
1while_while_cond_1235967___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
е@
═
*__inference_gpu_lstm_with_fallback_1237703

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_c49407a6-dae0-4707-b79d-d71d36bdad1e*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ц	
╞
while_cond_1240824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1240824___redundant_placeholder05
1while_while_cond_1240824___redundant_placeholder15
1while_while_cond_1240824___redundant_placeholder25
1while_while_cond_1240824___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
х
l
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1236400

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskb
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:          ╟
flatten_21/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_flatten_21_layer_call_and_return_conditional_losses_1236366\
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
value	B : Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Т
	Reshape_1Reshape#flatten_21/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                   g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"                   :` \
8
_output_shapes&
$:"                   
 
_user_specified_nameinputs
▄K
в
(__forward_gpu_lstm_with_fallback_1236324

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_16204b02-d6ba-4ed3-92f7-010b34003e65*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1236149_1236325*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Х
i
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1236343

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌)
╨
while_body_1238050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
л

А
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1237325

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         /w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
ўK
в
(__forward_gpu_lstm_with_fallback_1236833

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_5aff946f-34e0-4cdd-bc1a-6b4647602afc*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1236658_1236834*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╦
L
0__inference_leaky_re_lu_50_layer_call_fn_1240061

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1237313h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
Ц	
╞
while_cond_1239169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1239169___redundant_placeholder05
1while_while_cond_1239169___redundant_placeholder15
1while_while_cond_1239169___redundant_placeholder25
1while_while_cond_1239169___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
┴┴
ч
=__inference___backward_gpu_lstm_with_fallback_1237704_1237880
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:
         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:
          :         d:         d:рвЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
 u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Аj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:АЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d       з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
 t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:
         d::
          :         d:         d:рв::         d:         d: ::::::::: : : : *=
api_implements+)lstm_c49407a6-dae0-4707-b79d-d71d36bdad1e*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1237879*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:
         d:	

_output_shapes
::1
-
+
_output_shapes
:
          :1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:рв: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ўK
в
(__forward_gpu_lstm_with_fallback_1237273

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_3074a1f7-ecc5-4d48-ab03-aac3547b175a*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1237098_1237274*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ц	
╞
while_cond_1241682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1241682___redundant_placeholder05
1while_while_cond_1241682___redundant_placeholder15
1while_while_cond_1241682___redundant_placeholder25
1while_while_cond_1241682___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
л

А
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1237357

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         ,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
▄K
в
(__forward_gpu_lstm_with_fallback_1239526

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_ac81ccf0-4ff7-458b-bed8-32cd1ab046ec*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1239351_1239527*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
е@
═
*__inference_gpu_lstm_with_fallback_1241434

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_3195e08e-9019-4fc3-a112-bb3623017084*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┌)
╨
while_body_1240396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
е@
═
*__inference_gpu_lstm_with_fallback_1236148

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_16204b02-d6ba-4ed3-92f7-010b34003e65*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╔@
═
*__inference_gpu_lstm_with_fallback_1240576

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_6df5218d-ed19-494a-8d7e-341fff09d843*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
л

А
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1240123

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         ,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
┬~
Ю
J__inference_sequential_23_layer_call_and_return_conditional_losses_1239536

inputsC
)conv2d_179_conv2d_readvariableop_resource:8
*conv2d_179_biasadd_readvariableop_resource:C
)conv2d_180_conv2d_readvariableop_resource:8
*conv2d_180_biasadd_readvariableop_resource:C
)conv2d_181_conv2d_readvariableop_resource:8
*conv2d_181_biasadd_readvariableop_resource:C
)conv2d_182_conv2d_readvariableop_resource:8
*conv2d_182_biasadd_readvariableop_resource:C
)conv2d_183_conv2d_readvariableop_resource:8
*conv2d_183_biasadd_readvariableop_resource:C
)conv2d_184_conv2d_readvariableop_resource:8
*conv2d_184_biasadd_readvariableop_resource:C
)conv2d_185_conv2d_readvariableop_resource:8
*conv2d_185_biasadd_readvariableop_resource:C
)conv2d_186_conv2d_readvariableop_resource: 8
*conv2d_186_biasadd_readvariableop_resource: C
)conv2d_187_conv2d_readvariableop_resource:  8
*conv2d_187_biasadd_readvariableop_resource: 7
$lstm_12_read_readvariableop_resource:	 Р9
&lstm_12_read_1_readvariableop_resource:	dР5
&lstm_12_read_2_readvariableop_resource:	Р9
'dense_20_matmul_readvariableop_resource:d6
(dense_20_biasadd_readvariableop_resource:
identityИв!conv2d_179/BiasAdd/ReadVariableOpв conv2d_179/Conv2D/ReadVariableOpв!conv2d_180/BiasAdd/ReadVariableOpв conv2d_180/Conv2D/ReadVariableOpв!conv2d_181/BiasAdd/ReadVariableOpв conv2d_181/Conv2D/ReadVariableOpв!conv2d_182/BiasAdd/ReadVariableOpв conv2d_182/Conv2D/ReadVariableOpв!conv2d_183/BiasAdd/ReadVariableOpв conv2d_183/Conv2D/ReadVariableOpв!conv2d_184/BiasAdd/ReadVariableOpв conv2d_184/Conv2D/ReadVariableOpв!conv2d_185/BiasAdd/ReadVariableOpв conv2d_185/Conv2D/ReadVariableOpв!conv2d_186/BiasAdd/ReadVariableOpв conv2d_186/Conv2D/ReadVariableOpв!conv2d_187/BiasAdd/ReadVariableOpв conv2d_187/Conv2D/ReadVariableOpвdense_20/BiasAdd/ReadVariableOpвdense_20/MatMul/ReadVariableOpвlstm_12/Read/ReadVariableOpвlstm_12/Read_1/ReadVariableOpвlstm_12/Read_2/ReadVariableOpТ
 conv2d_179/Conv2D/ReadVariableOpReadVariableOp)conv2d_179_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0░
conv2d_179/Conv2DConv2Dinputs(conv2d_179/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingVALID*
strides
И
!conv2d_179/BiasAdd/ReadVariableOpReadVariableOp*conv2d_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_179/BiasAddBiasAddconv2d_179/Conv2D:output:0)conv2d_179/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2Г
leaky_re_lu_50/LeakyRelu	LeakyReluconv2d_179/BiasAdd:output:0*/
_output_shapes
:         2*
alpha%
╫#<Т
 conv2d_180/Conv2D/ReadVariableOpReadVariableOp)conv2d_180_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╨
conv2d_180/Conv2DConv2D&leaky_re_lu_50/LeakyRelu:activations:0(conv2d_180/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /*
paddingVALID*
strides
И
!conv2d_180/BiasAdd/ReadVariableOpReadVariableOp*conv2d_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_180/BiasAddBiasAddconv2d_180/Conv2D:output:0)conv2d_180/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /Т
 conv2d_181/Conv2D/ReadVariableOpReadVariableOp)conv2d_181_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┼
conv2d_181/Conv2DConv2Dconv2d_180/BiasAdd:output:0(conv2d_181/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
И
!conv2d_181/BiasAdd/ReadVariableOpReadVariableOp*conv2d_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_181/BiasAddBiasAddconv2d_181/Conv2D:output:0)conv2d_181/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,Т
 conv2d_182/Conv2D/ReadVariableOpReadVariableOp)conv2d_182_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┼
conv2d_182/Conv2DConv2Dconv2d_181/BiasAdd:output:0(conv2d_182/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,*
paddingVALID*
strides
И
!conv2d_182/BiasAdd/ReadVariableOpReadVariableOp*conv2d_182_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_182/BiasAddBiasAddconv2d_182/Conv2D:output:0)conv2d_182/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,Г
leaky_re_lu_51/LeakyRelu	LeakyReluconv2d_182/BiasAdd:output:0*/
_output_shapes
:         ,*
alpha%
╫#<Т
 conv2d_183/Conv2D/ReadVariableOpReadVariableOp)conv2d_183_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╨
conv2d_183/Conv2DConv2D&leaky_re_lu_51/LeakyRelu:activations:0(conv2d_183/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )*
paddingVALID*
strides
И
!conv2d_183/BiasAdd/ReadVariableOpReadVariableOp*conv2d_183_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_183/BiasAddBiasAddconv2d_183/Conv2D:output:0)conv2d_183/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )Т
 conv2d_184/Conv2D/ReadVariableOpReadVariableOp)conv2d_184_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┼
conv2d_184/Conv2DConv2Dconv2d_183/BiasAdd:output:0(conv2d_184/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
И
!conv2d_184/BiasAdd/ReadVariableOpReadVariableOp*conv2d_184_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_184/BiasAddBiasAddconv2d_184/Conv2D:output:0)conv2d_184/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &Т
 conv2d_185/Conv2D/ReadVariableOpReadVariableOp)conv2d_185_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┼
conv2d_185/Conv2DConv2Dconv2d_184/BiasAdd:output:0(conv2d_185/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
И
!conv2d_185/BiasAdd/ReadVariableOpReadVariableOp*conv2d_185_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_185/BiasAddBiasAddconv2d_185/Conv2D:output:0)conv2d_185/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &Т
 conv2d_186/Conv2D/ReadVariableOpReadVariableOp)conv2d_186_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0┼
conv2d_186/Conv2DConv2Dconv2d_185/BiasAdd:output:0(conv2d_186/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # *
paddingVALID*
strides
И
!conv2d_186/BiasAdd/ReadVariableOpReadVariableOp*conv2d_186_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ю
conv2d_186/BiasAddBiasAddconv2d_186/Conv2D:output:0)conv2d_186/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # Т
 conv2d_187/Conv2D/ReadVariableOpReadVariableOp)conv2d_187_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0┼
conv2d_187/Conv2DConv2Dconv2d_186/BiasAdd:output:0(conv2d_187/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingVALID*
strides
И
!conv2d_187/BiasAdd/ReadVariableOpReadVariableOp*conv2d_187_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ю
conv2d_187/BiasAddBiasAddconv2d_187/Conv2D:output:0)conv2d_187/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           н
max_pooling2d_21/MaxPoolMaxPoolconv2d_187/BiasAdd:output:0*/
_output_shapes
:         
 *
ksize
*
paddingVALID*
strides
v
!time_distributed_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           л
time_distributed_21/ReshapeReshape!max_pooling2d_21/MaxPool:output:0*time_distributed_21/Reshape/shape:output:0*
T0*+
_output_shapes
:          u
$time_distributed_21/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"        ╕
&time_distributed_21/flatten_21/ReshapeReshape$time_distributed_21/Reshape:output:0-time_distributed_21/flatten_21/Const:output:0*
T0*'
_output_shapes
:          x
#time_distributed_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"    
       ╜
time_distributed_21/Reshape_1Reshape/time_distributed_21/flatten_21/Reshape:output:0,time_distributed_21/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         
 x
#time_distributed_21/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           п
time_distributed_21/Reshape_2Reshape!max_pooling2d_21/MaxPool:output:0,time_distributed_21/Reshape_2/shape:output:0*
T0*+
_output_shapes
:          c
lstm_12/ShapeShape&time_distributed_21/Reshape_1:output:0*
T0*
_output_shapes
:e
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЛ
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:         dZ
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dП
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dБ
lstm_12/Read/ReadVariableOpReadVariableOp$lstm_12_read_readvariableop_resource*
_output_shapes
:	 Р*
dtype0k
lstm_12/IdentityIdentity#lstm_12/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	 РЕ
lstm_12/Read_1/ReadVariableOpReadVariableOp&lstm_12_read_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0o
lstm_12/Identity_1Identity%lstm_12/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРБ
lstm_12/Read_2/ReadVariableOpReadVariableOp&lstm_12_read_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0k
lstm_12/Identity_2Identity%lstm_12/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:РГ
lstm_12/PartitionedCallPartitionedCall&time_distributed_21/Reshape_1:output:0lstm_12/zeros:output:0lstm_12/zeros_1:output:0lstm_12/Identity:output:0lstm_12/Identity_1:output:0lstm_12/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1239256Ж
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Х
dense_20/MatMulMatMul lstm_12/PartitionedCall:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_20/SoftmaxSoftmaxdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ц
NoOpNoOp"^conv2d_179/BiasAdd/ReadVariableOp!^conv2d_179/Conv2D/ReadVariableOp"^conv2d_180/BiasAdd/ReadVariableOp!^conv2d_180/Conv2D/ReadVariableOp"^conv2d_181/BiasAdd/ReadVariableOp!^conv2d_181/Conv2D/ReadVariableOp"^conv2d_182/BiasAdd/ReadVariableOp!^conv2d_182/Conv2D/ReadVariableOp"^conv2d_183/BiasAdd/ReadVariableOp!^conv2d_183/Conv2D/ReadVariableOp"^conv2d_184/BiasAdd/ReadVariableOp!^conv2d_184/Conv2D/ReadVariableOp"^conv2d_185/BiasAdd/ReadVariableOp!^conv2d_185/Conv2D/ReadVariableOp"^conv2d_186/BiasAdd/ReadVariableOp!^conv2d_186/Conv2D/ReadVariableOp"^conv2d_187/BiasAdd/ReadVariableOp!^conv2d_187/Conv2D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp^lstm_12/Read/ReadVariableOp^lstm_12/Read_1/ReadVariableOp^lstm_12/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_179/BiasAdd/ReadVariableOp!conv2d_179/BiasAdd/ReadVariableOp2D
 conv2d_179/Conv2D/ReadVariableOp conv2d_179/Conv2D/ReadVariableOp2F
!conv2d_180/BiasAdd/ReadVariableOp!conv2d_180/BiasAdd/ReadVariableOp2D
 conv2d_180/Conv2D/ReadVariableOp conv2d_180/Conv2D/ReadVariableOp2F
!conv2d_181/BiasAdd/ReadVariableOp!conv2d_181/BiasAdd/ReadVariableOp2D
 conv2d_181/Conv2D/ReadVariableOp conv2d_181/Conv2D/ReadVariableOp2F
!conv2d_182/BiasAdd/ReadVariableOp!conv2d_182/BiasAdd/ReadVariableOp2D
 conv2d_182/Conv2D/ReadVariableOp conv2d_182/Conv2D/ReadVariableOp2F
!conv2d_183/BiasAdd/ReadVariableOp!conv2d_183/BiasAdd/ReadVariableOp2D
 conv2d_183/Conv2D/ReadVariableOp conv2d_183/Conv2D/ReadVariableOp2F
!conv2d_184/BiasAdd/ReadVariableOp!conv2d_184/BiasAdd/ReadVariableOp2D
 conv2d_184/Conv2D/ReadVariableOp conv2d_184/Conv2D/ReadVariableOp2F
!conv2d_185/BiasAdd/ReadVariableOp!conv2d_185/BiasAdd/ReadVariableOp2D
 conv2d_185/Conv2D/ReadVariableOp conv2d_185/Conv2D/ReadVariableOp2F
!conv2d_186/BiasAdd/ReadVariableOp!conv2d_186/BiasAdd/ReadVariableOp2D
 conv2d_186/Conv2D/ReadVariableOp conv2d_186/Conv2D/ReadVariableOp2F
!conv2d_187/BiasAdd/ReadVariableOp!conv2d_187/BiasAdd/ReadVariableOp2D
 conv2d_187/Conv2D/ReadVariableOp conv2d_187/Conv2D/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2:
lstm_12/Read/ReadVariableOplstm_12/Read/ReadVariableOp2>
lstm_12/Read_1/ReadVariableOplstm_12/Read_1/ReadVariableOp2>
lstm_12/Read_2/ReadVariableOplstm_12/Read_2/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
ЦJ
ў

J__inference_sequential_23_layer_call_and_return_conditional_losses_1238640

inputs,
conv2d_179_1238576: 
conv2d_179_1238578:,
conv2d_180_1238582: 
conv2d_180_1238584:,
conv2d_181_1238587: 
conv2d_181_1238589:,
conv2d_182_1238592: 
conv2d_182_1238594:,
conv2d_183_1238598: 
conv2d_183_1238600:,
conv2d_184_1238603: 
conv2d_184_1238605:,
conv2d_185_1238608: 
conv2d_185_1238610:,
conv2d_186_1238613:  
conv2d_186_1238615: ,
conv2d_187_1238618:   
conv2d_187_1238620: "
lstm_12_1238627:	 Р"
lstm_12_1238629:	dР
lstm_12_1238631:	Р"
dense_20_1238634:d
dense_20_1238636:
identityИв"conv2d_179/StatefulPartitionedCallв"conv2d_180/StatefulPartitionedCallв"conv2d_181/StatefulPartitionedCallв"conv2d_182/StatefulPartitionedCallв"conv2d_183/StatefulPartitionedCallв"conv2d_184/StatefulPartitionedCallв"conv2d_185/StatefulPartitionedCallв"conv2d_186/StatefulPartitionedCallв"conv2d_187/StatefulPartitionedCallв dense_20/StatefulPartitionedCallвlstm_12/StatefulPartitionedCallГ
"conv2d_179/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_179_1238576conv2d_179_1238578*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1237302Є
leaky_re_lu_50/PartitionedCallPartitionedCall+conv2d_179/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1237313д
"conv2d_180/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_50/PartitionedCall:output:0conv2d_180_1238582conv2d_180_1238584*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1237325и
"conv2d_181/StatefulPartitionedCallStatefulPartitionedCall+conv2d_180/StatefulPartitionedCall:output:0conv2d_181_1238587conv2d_181_1238589*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1237341и
"conv2d_182/StatefulPartitionedCallStatefulPartitionedCall+conv2d_181/StatefulPartitionedCall:output:0conv2d_182_1238592conv2d_182_1238594*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1237357Є
leaky_re_lu_51/PartitionedCallPartitionedCall+conv2d_182/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1237368д
"conv2d_183/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_51/PartitionedCall:output:0conv2d_183_1238598conv2d_183_1238600*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         )*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1237380и
"conv2d_184/StatefulPartitionedCallStatefulPartitionedCall+conv2d_183/StatefulPartitionedCall:output:0conv2d_184_1238603conv2d_184_1238605*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1237396и
"conv2d_185/StatefulPartitionedCallStatefulPartitionedCall+conv2d_184/StatefulPartitionedCall:output:0conv2d_185_1238608conv2d_185_1238610*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1237412и
"conv2d_186/StatefulPartitionedCallStatefulPartitionedCall+conv2d_185/StatefulPartitionedCall:output:0conv2d_186_1238613conv2d_186_1238615*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         # *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1237428и
"conv2d_187/StatefulPartitionedCallStatefulPartitionedCall+conv2d_186/StatefulPartitionedCall:output:0conv2d_187_1238618conv2d_187_1238620*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1237444Ў
 max_pooling2d_21/PartitionedCallPartitionedCall+conv2d_187/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1236343Ў
#time_distributed_21/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1236400v
!time_distributed_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           │
time_distributed_21/ReshapeReshape)max_pooling2d_21/PartitionedCall:output:0*time_distributed_21/Reshape/shape:output:0*
T0*+
_output_shapes
:          и
lstm_12/StatefulPartitionedCallStatefulPartitionedCall,time_distributed_21/PartitionedCall:output:0lstm_12_1238627lstm_12_1238629lstm_12_1238631*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1238409Х
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0dense_20_1238634dense_20_1238636*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1237901x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╪
NoOpNoOp#^conv2d_179/StatefulPartitionedCall#^conv2d_180/StatefulPartitionedCall#^conv2d_181/StatefulPartitionedCall#^conv2d_182/StatefulPartitionedCall#^conv2d_183/StatefulPartitionedCall#^conv2d_184/StatefulPartitionedCall#^conv2d_185/StatefulPartitionedCall#^conv2d_186/StatefulPartitionedCall#^conv2d_187/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 2H
"conv2d_179/StatefulPartitionedCall"conv2d_179/StatefulPartitionedCall2H
"conv2d_180/StatefulPartitionedCall"conv2d_180/StatefulPartitionedCall2H
"conv2d_181/StatefulPartitionedCall"conv2d_181/StatefulPartitionedCall2H
"conv2d_182/StatefulPartitionedCall"conv2d_182/StatefulPartitionedCall2H
"conv2d_183/StatefulPartitionedCall"conv2d_183/StatefulPartitionedCall2H
"conv2d_184/StatefulPartitionedCall"conv2d_184/StatefulPartitionedCall2H
"conv2d_185/StatefulPartitionedCall"conv2d_185/StatefulPartitionedCall2H
"conv2d_186/StatefulPartitionedCall"conv2d_186/StatefulPartitionedCall2H
"conv2d_187/StatefulPartitionedCall"conv2d_187/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
Ц	
╞
while_cond_1237522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1237522___redundant_placeholder05
1while_while_cond_1237522___redundant_placeholder15
1while_while_cond_1237522___redundant_placeholder25
1while_while_cond_1237522___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
л

А
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1240152

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         )g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         )w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
л

А
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1240190

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         &g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         &w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         &: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         &
 
_user_specified_nameinputs
╦
L
0__inference_leaky_re_lu_51_layer_call_fn_1240128

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1237368h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         ,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ,:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
Е
g
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1237368

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         ,*
alpha%
╫#<g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         ,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ,:W S
/
_output_shapes
:         ,
 
_user_specified_nameinputs
╡
м
/__inference_sequential_23_layer_call_fn_1239035

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13: 

unknown_14: $

unknown_15:  

unknown_16: 

unknown_17:	 Р

unknown_18:	dР

unknown_19:	Р

unknown_20:d

unknown_21:
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238640o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
╔@
═
*__inference_gpu_lstm_with_fallback_1237097

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рв╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_3074a1f7-ecc5-4d48-ab03-aac3547b175a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
ё
Q
5__inference_time_distributed_21_layer_call_fn_1240243

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1236373m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"                   :` \
8
_output_shapes&
$:"                   
 
_user_specified_nameinputs
┴;
┴
!__inference_standard_lstm_1240482

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1240396*
condR
while_cond_1240395*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                   :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_6df5218d-ed19-494a-8d7e-341fff09d843*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
ж;
┴
!__inference_standard_lstm_1241769

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1241683*
condR
while_cond_1241682*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_c04a4d62-e1b8-4b85-8aea-4dae3da67322*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ч
╛
D__inference_lstm_12_layer_call_and_return_conditional_losses_1238409

inputs/
read_readvariableop_resource:	 Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1238136i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
 : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs
л

А
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1237444

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         # : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         # 
 
_user_specified_nameinputs
Ї
l
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1240282

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskb
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:          a
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"        |
flatten_21/ReshapeReshapeReshape:output:0flatten_21/Const:output:0*
T0*'
_output_shapes
:          \
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
value	B : Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapeflatten_21/Reshape:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                   g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"                   :` \
8
_output_shapes&
$:"                   
 
_user_specified_nameinputs
┤J
Б
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238874
conv2d_179_input,
conv2d_179_1238810: 
conv2d_179_1238812:,
conv2d_180_1238816: 
conv2d_180_1238818:,
conv2d_181_1238821: 
conv2d_181_1238823:,
conv2d_182_1238826: 
conv2d_182_1238828:,
conv2d_183_1238832: 
conv2d_183_1238834:,
conv2d_184_1238837: 
conv2d_184_1238839:,
conv2d_185_1238842: 
conv2d_185_1238844:,
conv2d_186_1238847:  
conv2d_186_1238849: ,
conv2d_187_1238852:   
conv2d_187_1238854: "
lstm_12_1238861:	 Р"
lstm_12_1238863:	dР
lstm_12_1238865:	Р"
dense_20_1238868:d
dense_20_1238870:
identityИв"conv2d_179/StatefulPartitionedCallв"conv2d_180/StatefulPartitionedCallв"conv2d_181/StatefulPartitionedCallв"conv2d_182/StatefulPartitionedCallв"conv2d_183/StatefulPartitionedCallв"conv2d_184/StatefulPartitionedCallв"conv2d_185/StatefulPartitionedCallв"conv2d_186/StatefulPartitionedCallв"conv2d_187/StatefulPartitionedCallв dense_20/StatefulPartitionedCallвlstm_12/StatefulPartitionedCallН
"conv2d_179/StatefulPartitionedCallStatefulPartitionedCallconv2d_179_inputconv2d_179_1238810conv2d_179_1238812*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1237302Є
leaky_re_lu_50/PartitionedCallPartitionedCall+conv2d_179/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1237313д
"conv2d_180/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_50/PartitionedCall:output:0conv2d_180_1238816conv2d_180_1238818*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         /*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1237325и
"conv2d_181/StatefulPartitionedCallStatefulPartitionedCall+conv2d_180/StatefulPartitionedCall:output:0conv2d_181_1238821conv2d_181_1238823*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1237341и
"conv2d_182/StatefulPartitionedCallStatefulPartitionedCall+conv2d_181/StatefulPartitionedCall:output:0conv2d_182_1238826conv2d_182_1238828*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1237357Є
leaky_re_lu_51/PartitionedCallPartitionedCall+conv2d_182/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1237368д
"conv2d_183/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_51/PartitionedCall:output:0conv2d_183_1238832conv2d_183_1238834*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         )*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1237380и
"conv2d_184/StatefulPartitionedCallStatefulPartitionedCall+conv2d_183/StatefulPartitionedCall:output:0conv2d_184_1238837conv2d_184_1238839*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1237396и
"conv2d_185/StatefulPartitionedCallStatefulPartitionedCall+conv2d_184/StatefulPartitionedCall:output:0conv2d_185_1238842conv2d_185_1238844*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1237412и
"conv2d_186/StatefulPartitionedCallStatefulPartitionedCall+conv2d_185/StatefulPartitionedCall:output:0conv2d_186_1238847conv2d_186_1238849*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         # *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1237428и
"conv2d_187/StatefulPartitionedCallStatefulPartitionedCall+conv2d_186/StatefulPartitionedCall:output:0conv2d_187_1238852conv2d_187_1238854*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1237444Ў
 max_pooling2d_21/PartitionedCallPartitionedCall+conv2d_187/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1236343Ў
#time_distributed_21/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1236400v
!time_distributed_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"           │
time_distributed_21/ReshapeReshape)max_pooling2d_21/PartitionedCall:output:0*time_distributed_21/Reshape/shape:output:0*
T0*+
_output_shapes
:          и
lstm_12/StatefulPartitionedCallStatefulPartitionedCall,time_distributed_21/PartitionedCall:output:0lstm_12_1238861lstm_12_1238863lstm_12_1238865*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1238409Х
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0dense_20_1238868dense_20_1238870*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1237901x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╪
NoOpNoOp#^conv2d_179/StatefulPartitionedCall#^conv2d_180/StatefulPartitionedCall#^conv2d_181/StatefulPartitionedCall#^conv2d_182/StatefulPartitionedCall#^conv2d_183/StatefulPartitionedCall#^conv2d_184/StatefulPartitionedCall#^conv2d_185/StatefulPartitionedCall#^conv2d_186/StatefulPartitionedCall#^conv2d_187/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 2H
"conv2d_179/StatefulPartitionedCall"conv2d_179/StatefulPartitionedCall2H
"conv2d_180/StatefulPartitionedCall"conv2d_180/StatefulPartitionedCall2H
"conv2d_181/StatefulPartitionedCall"conv2d_181/StatefulPartitionedCall2H
"conv2d_182/StatefulPartitionedCall"conv2d_182/StatefulPartitionedCall2H
"conv2d_183/StatefulPartitionedCall"conv2d_183/StatefulPartitionedCall2H
"conv2d_184/StatefulPartitionedCall"conv2d_184/StatefulPartitionedCall2H
"conv2d_185/StatefulPartitionedCall"conv2d_185/StatefulPartitionedCall2H
"conv2d_186/StatefulPartitionedCall"conv2d_186/StatefulPartitionedCall2H
"conv2d_187/StatefulPartitionedCall"conv2d_187/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:a ]
/
_output_shapes
:         2
*
_user_specified_nameconv2d_179_input
ж;
┴
!__inference_standard_lstm_1238136

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
          B
ShapeShapetranspose:y:0*
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ╕
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_1238050*
condR
while_cond_1238049*b
output_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_cb091bd2-efbb-4745-821f-5ab4d1e7c4f2*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ё
б
,__inference_conv2d_185_layer_call_fn_1240180

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         &*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1237412w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         &`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         &: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         &
 
_user_specified_nameinputs
л

А
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1240085

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         /g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         /w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
л

А
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1240209

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         # g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         # w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         &: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         &
 
_user_specified_nameinputs
┌)
╨
while_body_1239170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	 Р:	dР:Р: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
╙
╢
/__inference_sequential_23_layer_call_fn_1237957
conv2d_179_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13: 

unknown_14: $

unknown_15:  

unknown_16: 

unknown_17:	 Р

unknown_18:	dР

unknown_19:	Р

unknown_20:d

unknown_21:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallconv2d_179_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_23_layer_call_and_return_conditional_losses_1237908o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         2: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:         2
*
_user_specified_nameconv2d_179_input
Ц	
╞
while_cond_1236916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1236916___redundant_placeholder05
1while_while_cond_1236916___redundant_placeholder15
1while_while_cond_1236916___redundant_placeholder25
1while_while_cond_1236916___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
▄K
в
(__forward_gpu_lstm_with_fallback_1240027

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: d: d: d: d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Аa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:
         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
 :         d:         d:	 Р:	dР:Р*=
api_implements+)lstm_7dfeb892-53cc-4dbc-82cd-f7016a947483*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1239852_1240028*
go_backwards( *

time_major( :S O
+
_output_shapes
:         
 
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	 Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┼
serving_default▒
U
conv2d_179_inputA
"serving_default_conv2d_179_input:0         2<
dense_200
StatefulPartitionedCall:0         tensorflow/serving/predict:Яж
═
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op"
_tf_keras_layer
е
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
▌
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
▌
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op"
_tf_keras_layer
е
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op"
_tf_keras_layer
▌
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias
 Z_jit_compiled_convolution_op"
_tf_keras_layer
▌
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
 c_jit_compiled_convolution_op"
_tf_keras_layer
▌
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias
 l_jit_compiled_convolution_op"
_tf_keras_layer
▌
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel
tbias
 u_jit_compiled_convolution_op"
_tf_keras_layer
е
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
│
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses

Вlayer"
_tf_keras_layer
у
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Й_random_generator
	Кcell
Л
state_spec"
_tf_keras_rnn_layer
├
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses
Тkernel
	Уbias"
_tf_keras_layer
╙
0
 1
.2
/3
74
85
@6
A7
O8
P9
X10
Y11
a12
b13
j14
k15
s16
t17
Ф18
Х19
Ц20
Т21
У22"
trackable_list_wrapper
╙
0
 1
.2
/3
74
85
@6
A7
O8
P9
X10
Y11
a12
b13
j14
k15
s16
t17
Ф18
Х19
Ц20
Т21
У22"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
∙
Ьtrace_0
Эtrace_1
Юtrace_2
Яtrace_32Ж
/__inference_sequential_23_layer_call_fn_1237957
/__inference_sequential_23_layer_call_fn_1238984
/__inference_sequential_23_layer_call_fn_1239035
/__inference_sequential_23_layer_call_fn_1238740┐
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
 zЬtrace_0zЭtrace_1zЮtrace_2zЯtrace_3
х
аtrace_0
бtrace_1
вtrace_2
гtrace_32Є
J__inference_sequential_23_layer_call_and_return_conditional_losses_1239536
J__inference_sequential_23_layer_call_and_return_conditional_losses_1240037
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238807
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238874┐
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
 zаtrace_0zбtrace_1zвtrace_2zгtrace_3
╓B╙
"__inference__wrapped_model_1236334conv2d_179_input"Ш
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
о
	дiter
еbeta_1
жbeta_2

зdecay
иlearning_ratem┴ m┬.m├/m─7m┼8m╞@m╟Am╚Om╔Pm╩Xm╦Ym╠am═bm╬jm╧km╨sm╤tm╥	Тm╙	Уm╘	Фm╒	Хm╓	Цm╫v╪ v┘.v┌/v█7v▄8v▌@v▐Av▀OvрPvсXvтYvуavфbvхjvцkvчsvшtvщ	Тvъ	Уvы	Фvь	Хvэ	Цvю"
	optimizer
-
йserving_default"
signature_map
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Є
пtrace_02╙
,__inference_conv2d_179_layer_call_fn_1240046в
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
 zпtrace_0
Н
░trace_02ю
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1240056в
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
 z░trace_0
+:)2conv2d_179/kernel
:2conv2d_179/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
Ў
╢trace_02╫
0__inference_leaky_re_lu_50_layer_call_fn_1240061в
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
 z╢trace_0
С
╖trace_02Є
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1240066в
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
 z╖trace_0
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Є
╜trace_02╙
,__inference_conv2d_180_layer_call_fn_1240075в
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
 z╜trace_0
Н
╛trace_02ю
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1240085в
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
 z╛trace_0
+:)2conv2d_180/kernel
:2conv2d_180/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
Є
─trace_02╙
,__inference_conv2d_181_layer_call_fn_1240094в
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
 z─trace_0
Н
┼trace_02ю
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1240104в
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
 z┼trace_0
+:)2conv2d_181/kernel
:2conv2d_181/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╞non_trainable_variables
╟layers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
Є
╦trace_02╙
,__inference_conv2d_182_layer_call_fn_1240113в
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
 z╦trace_0
Н
╠trace_02ю
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1240123в
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
 z╠trace_0
+:)2conv2d_182/kernel
:2conv2d_182/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
Ў
╥trace_02╫
0__inference_leaky_re_lu_51_layer_call_fn_1240128в
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
 z╥trace_0
С
╙trace_02Є
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1240133в
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
 z╙trace_0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
Є
┘trace_02╙
,__inference_conv2d_183_layer_call_fn_1240142в
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
 z┘trace_0
Н
┌trace_02ю
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1240152в
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
 z┌trace_0
+:)2conv2d_183/kernel
:2conv2d_183/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
█non_trainable_variables
▄layers
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
Є
рtrace_02╙
,__inference_conv2d_184_layer_call_fn_1240161в
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
 zрtrace_0
Н
сtrace_02ю
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1240171в
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
 zсtrace_0
+:)2conv2d_184/kernel
:2conv2d_184/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
Є
чtrace_02╙
,__inference_conv2d_185_layer_call_fn_1240180в
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
 zчtrace_0
Н
шtrace_02ю
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1240190в
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
 zшtrace_0
+:)2conv2d_185/kernel
:2conv2d_185/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
Є
юtrace_02╙
,__inference_conv2d_186_layer_call_fn_1240199в
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
 zюtrace_0
Н
яtrace_02ю
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1240209в
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
 zяtrace_0
+:) 2conv2d_186/kernel
: 2conv2d_186/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
Є
їtrace_02╙
,__inference_conv2d_187_layer_call_fn_1240218в
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
 zїtrace_0
Н
Ўtrace_02ю
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1240228в
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
 zЎtrace_0
+:)  2conv2d_187/kernel
: 2conv2d_187/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
°
№trace_02┘
2__inference_max_pooling2d_21_layer_call_fn_1240233в
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
 z№trace_0
У
¤trace_02Ї
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1240238в
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
 z¤trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
■non_trainable_variables
 layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
ы
Гtrace_0
Дtrace_12░
5__inference_time_distributed_21_layer_call_fn_1240243
5__inference_time_distributed_21_layer_call_fn_1240248┐
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
 zГtrace_0zДtrace_1
б
Еtrace_0
Жtrace_12ц
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1240265
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1240282┐
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
 zЕtrace_0zЖtrace_1
л
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
_tf_keras_layer
8
Ф0
Х1
Ц2"
trackable_list_wrapper
8
Ф0
Х1
Ц2"
trackable_list_wrapper
 "
trackable_list_wrapper
┼
Нstates
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
Ў
Уtrace_0
Фtrace_1
Хtrace_2
Цtrace_32Г
)__inference_lstm_12_layer_call_fn_1240293
)__inference_lstm_12_layer_call_fn_1240304
)__inference_lstm_12_layer_call_fn_1240315
)__inference_lstm_12_layer_call_fn_1240326╘
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
 zУtrace_0zФtrace_1zХtrace_2zЦtrace_3
т
Чtrace_0
Шtrace_1
Щtrace_2
Ъtrace_32я
D__inference_lstm_12_layer_call_and_return_conditional_losses_1240755
D__inference_lstm_12_layer_call_and_return_conditional_losses_1241184
D__inference_lstm_12_layer_call_and_return_conditional_losses_1241613
D__inference_lstm_12_layer_call_and_return_conditional_losses_1242042╘
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
 zЧtrace_0zШtrace_1zЩtrace_2zЪtrace_3
"
_generic_user_object
Г
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses
б_random_generator
в
state_size
Фkernel
Хrecurrent_kernel
	Цbias"
_tf_keras_layer
 "
trackable_list_wrapper
0
Т0
У1"
trackable_list_wrapper
0
Т0
У1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
Ё
иtrace_02╤
*__inference_dense_20_layer_call_fn_1242051в
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
 zиtrace_0
Л
йtrace_02ь
E__inference_dense_20_layer_call_and_return_conditional_losses_1242062в
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
 zйtrace_0
!:d2dense_20/kernel
:2dense_20/bias
.:,	 Р2lstm_12/lstm_cell_12/kernel
8:6	dР2%lstm_12/lstm_cell_12/recurrent_kernel
(:&Р2lstm_12/lstm_cell_12/bias
 "
trackable_list_wrapper
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
к0
л1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
КBЗ
/__inference_sequential_23_layer_call_fn_1237957conv2d_179_input"┐
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
АB¤
/__inference_sequential_23_layer_call_fn_1238984inputs"┐
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
АB¤
/__inference_sequential_23_layer_call_fn_1239035inputs"┐
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
КBЗ
/__inference_sequential_23_layer_call_fn_1238740conv2d_179_input"┐
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
ЫBШ
J__inference_sequential_23_layer_call_and_return_conditional_losses_1239536inputs"┐
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
ЫBШ
J__inference_sequential_23_layer_call_and_return_conditional_losses_1240037inputs"┐
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
еBв
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238807conv2d_179_input"┐
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
еBв
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238874conv2d_179_input"┐
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╒B╥
%__inference_signature_wrapper_1238933conv2d_179_input"Ф
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_conv2d_179_layer_call_fn_1240046inputs"в
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
√B°
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1240056inputs"в
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
фBс
0__inference_leaky_re_lu_50_layer_call_fn_1240061inputs"в
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
 B№
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1240066inputs"в
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
рB▌
,__inference_conv2d_180_layer_call_fn_1240075inputs"в
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
√B°
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1240085inputs"в
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
рB▌
,__inference_conv2d_181_layer_call_fn_1240094inputs"в
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
√B°
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1240104inputs"в
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
рB▌
,__inference_conv2d_182_layer_call_fn_1240113inputs"в
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
√B°
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1240123inputs"в
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
фBс
0__inference_leaky_re_lu_51_layer_call_fn_1240128inputs"в
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
 B№
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1240133inputs"в
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
рB▌
,__inference_conv2d_183_layer_call_fn_1240142inputs"в
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
√B°
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1240152inputs"в
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
рB▌
,__inference_conv2d_184_layer_call_fn_1240161inputs"в
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
√B°
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1240171inputs"в
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
рB▌
,__inference_conv2d_185_layer_call_fn_1240180inputs"в
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
√B°
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1240190inputs"в
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
рB▌
,__inference_conv2d_186_layer_call_fn_1240199inputs"в
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
√B°
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1240209inputs"в
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
рB▌
,__inference_conv2d_187_layer_call_fn_1240218inputs"в
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
√B°
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1240228inputs"в
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
цBу
2__inference_max_pooling2d_21_layer_call_fn_1240233inputs"в
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
БB■
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1240238inputs"в
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
 "
trackable_list_wrapper
(
В0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
5__inference_time_distributed_21_layer_call_fn_1240243inputs"┐
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
ЖBГ
5__inference_time_distributed_21_layer_call_fn_1240248inputs"┐
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
бBЮ
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1240265inputs"┐
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
бBЮ
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1240282inputs"┐
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
Є
▒trace_02╙
,__inference_flatten_21_layer_call_fn_1242067в
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
 z▒trace_0
Н
▓trace_02ю
G__inference_flatten_21_layer_call_and_return_conditional_losses_1242073в
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
 z▓trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
К0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
СBО
)__inference_lstm_12_layer_call_fn_1240293inputs/0"╘
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
)__inference_lstm_12_layer_call_fn_1240304inputs/0"╘
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
ПBМ
)__inference_lstm_12_layer_call_fn_1240315inputs"╘
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
ПBМ
)__inference_lstm_12_layer_call_fn_1240326inputs"╘
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
D__inference_lstm_12_layer_call_and_return_conditional_losses_1240755inputs/0"╘
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
D__inference_lstm_12_layer_call_and_return_conditional_losses_1241184inputs/0"╘
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
кBз
D__inference_lstm_12_layer_call_and_return_conditional_losses_1241613inputs"╘
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
кBз
D__inference_lstm_12_layer_call_and_return_conditional_losses_1242042inputs"╘
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
8
Ф0
Х1
Ц2"
trackable_list_wrapper
8
Ф0
Х1
Ц2"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
├2└╜
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
├2└╜
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
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_dense_20_layer_call_fn_1242051inputs"в
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
∙BЎ
E__inference_dense_20_layer_call_and_return_conditional_losses_1242062inputs"в
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
R
╕	variables
╣	keras_api

║total

╗count"
_tf_keras_metric
c
╝	variables
╜	keras_api

╛total

┐count
└
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
рB▌
,__inference_flatten_21_layer_call_fn_1242067inputs"в
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
√B°
G__inference_flatten_21_layer_call_and_return_conditional_losses_1242073inputs"в
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
0
║0
╗1"
trackable_list_wrapper
.
╕	variables"
_generic_user_object
:  (2total
:  (2count
0
╛0
┐1"
trackable_list_wrapper
.
╝	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.2Adam/conv2d_179/kernel/m
": 2Adam/conv2d_179/bias/m
0:.2Adam/conv2d_180/kernel/m
": 2Adam/conv2d_180/bias/m
0:.2Adam/conv2d_181/kernel/m
": 2Adam/conv2d_181/bias/m
0:.2Adam/conv2d_182/kernel/m
": 2Adam/conv2d_182/bias/m
0:.2Adam/conv2d_183/kernel/m
": 2Adam/conv2d_183/bias/m
0:.2Adam/conv2d_184/kernel/m
": 2Adam/conv2d_184/bias/m
0:.2Adam/conv2d_185/kernel/m
": 2Adam/conv2d_185/bias/m
0:. 2Adam/conv2d_186/kernel/m
":  2Adam/conv2d_186/bias/m
0:.  2Adam/conv2d_187/kernel/m
":  2Adam/conv2d_187/bias/m
&:$d2Adam/dense_20/kernel/m
 :2Adam/dense_20/bias/m
3:1	 Р2"Adam/lstm_12/lstm_cell_12/kernel/m
=:;	dР2,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m
-:+Р2 Adam/lstm_12/lstm_cell_12/bias/m
0:.2Adam/conv2d_179/kernel/v
": 2Adam/conv2d_179/bias/v
0:.2Adam/conv2d_180/kernel/v
": 2Adam/conv2d_180/bias/v
0:.2Adam/conv2d_181/kernel/v
": 2Adam/conv2d_181/bias/v
0:.2Adam/conv2d_182/kernel/v
": 2Adam/conv2d_182/bias/v
0:.2Adam/conv2d_183/kernel/v
": 2Adam/conv2d_183/bias/v
0:.2Adam/conv2d_184/kernel/v
": 2Adam/conv2d_184/bias/v
0:.2Adam/conv2d_185/kernel/v
": 2Adam/conv2d_185/bias/v
0:. 2Adam/conv2d_186/kernel/v
":  2Adam/conv2d_186/bias/v
0:.  2Adam/conv2d_187/kernel/v
":  2Adam/conv2d_187/bias/v
&:$d2Adam/dense_20/kernel/v
 :2Adam/dense_20/bias/v
3:1	 Р2"Adam/lstm_12/lstm_cell_12/kernel/v
=:;	dР2,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v
-:+Р2 Adam/lstm_12/lstm_cell_12/bias/v╜
"__inference__wrapped_model_1236334Ц ./78@AOPXYabjkstФХЦТУAв>
7в4
2К/
conv2d_179_input         2
к "3к0
.
dense_20"К
dense_20         ╖
G__inference_conv2d_179_layer_call_and_return_conditional_losses_1240056l 7в4
-в*
(К%
inputs         2
к "-в*
#К 
0         2
Ъ П
,__inference_conv2d_179_layer_call_fn_1240046_ 7в4
-в*
(К%
inputs         2
к " К         2╖
G__inference_conv2d_180_layer_call_and_return_conditional_losses_1240085l./7в4
-в*
(К%
inputs         2
к "-в*
#К 
0         /
Ъ П
,__inference_conv2d_180_layer_call_fn_1240075_./7в4
-в*
(К%
inputs         2
к " К         /╖
G__inference_conv2d_181_layer_call_and_return_conditional_losses_1240104l787в4
-в*
(К%
inputs         /
к "-в*
#К 
0         ,
Ъ П
,__inference_conv2d_181_layer_call_fn_1240094_787в4
-в*
(К%
inputs         /
к " К         ,╖
G__inference_conv2d_182_layer_call_and_return_conditional_losses_1240123l@A7в4
-в*
(К%
inputs         ,
к "-в*
#К 
0         ,
Ъ П
,__inference_conv2d_182_layer_call_fn_1240113_@A7в4
-в*
(К%
inputs         ,
к " К         ,╖
G__inference_conv2d_183_layer_call_and_return_conditional_losses_1240152lOP7в4
-в*
(К%
inputs         ,
к "-в*
#К 
0         )
Ъ П
,__inference_conv2d_183_layer_call_fn_1240142_OP7в4
-в*
(К%
inputs         ,
к " К         )╖
G__inference_conv2d_184_layer_call_and_return_conditional_losses_1240171lXY7в4
-в*
(К%
inputs         )
к "-в*
#К 
0         &
Ъ П
,__inference_conv2d_184_layer_call_fn_1240161_XY7в4
-в*
(К%
inputs         )
к " К         &╖
G__inference_conv2d_185_layer_call_and_return_conditional_losses_1240190lab7в4
-в*
(К%
inputs         &
к "-в*
#К 
0         &
Ъ П
,__inference_conv2d_185_layer_call_fn_1240180_ab7в4
-в*
(К%
inputs         &
к " К         &╖
G__inference_conv2d_186_layer_call_and_return_conditional_losses_1240209ljk7в4
-в*
(К%
inputs         &
к "-в*
#К 
0         # 
Ъ П
,__inference_conv2d_186_layer_call_fn_1240199_jk7в4
-в*
(К%
inputs         &
к " К         # ╖
G__inference_conv2d_187_layer_call_and_return_conditional_losses_1240228lst7в4
-в*
(К%
inputs         # 
к "-в*
#К 
0           
Ъ П
,__inference_conv2d_187_layer_call_fn_1240218_st7в4
-в*
(К%
inputs         # 
к " К           з
E__inference_dense_20_layer_call_and_return_conditional_losses_1242062^ТУ/в,
%в"
 К
inputs         d
к "%в"
К
0         
Ъ 
*__inference_dense_20_layer_call_fn_1242051QТУ/в,
%в"
 К
inputs         d
к "К         з
G__inference_flatten_21_layer_call_and_return_conditional_losses_1242073\3в0
)в&
$К!
inputs          
к "%в"
К
0          
Ъ 
,__inference_flatten_21_layer_call_fn_1242067O3в0
)в&
$К!
inputs          
к "К          ╖
K__inference_leaky_re_lu_50_layer_call_and_return_conditional_losses_1240066h7в4
-в*
(К%
inputs         2
к "-в*
#К 
0         2
Ъ П
0__inference_leaky_re_lu_50_layer_call_fn_1240061[7в4
-в*
(К%
inputs         2
к " К         2╖
K__inference_leaky_re_lu_51_layer_call_and_return_conditional_losses_1240133h7в4
-в*
(К%
inputs         ,
к "-в*
#К 
0         ,
Ъ П
0__inference_leaky_re_lu_51_layer_call_fn_1240128[7в4
-в*
(К%
inputs         ,
к " К         ,╔
D__inference_lstm_12_layer_call_and_return_conditional_losses_1240755АФХЦOвL
EвB
4Ъ1
/К,
inputs/0                   

 
p 

 
к "%в"
К
0         d
Ъ ╔
D__inference_lstm_12_layer_call_and_return_conditional_losses_1241184АФХЦOвL
EвB
4Ъ1
/К,
inputs/0                   

 
p

 
к "%в"
К
0         d
Ъ ╕
D__inference_lstm_12_layer_call_and_return_conditional_losses_1241613pФХЦ?в<
5в2
$К!
inputs         
 

 
p 

 
к "%в"
К
0         d
Ъ ╕
D__inference_lstm_12_layer_call_and_return_conditional_losses_1242042pФХЦ?в<
5в2
$К!
inputs         
 

 
p

 
к "%в"
К
0         d
Ъ а
)__inference_lstm_12_layer_call_fn_1240293sФХЦOвL
EвB
4Ъ1
/К,
inputs/0                   

 
p 

 
к "К         dа
)__inference_lstm_12_layer_call_fn_1240304sФХЦOвL
EвB
4Ъ1
/К,
inputs/0                   

 
p

 
к "К         dР
)__inference_lstm_12_layer_call_fn_1240315cФХЦ?в<
5в2
$К!
inputs         
 

 
p 

 
к "К         dР
)__inference_lstm_12_layer_call_fn_1240326cФХЦ?в<
5в2
$К!
inputs         
 

 
p

 
к "К         dЁ
M__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1240238ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╚
2__inference_max_pooling2d_21_layer_call_fn_1240233СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ▀
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238807Р ./78@AOPXYabjkstФХЦТУIвF
?в<
2К/
conv2d_179_input         2
p 

 
к "%в"
К
0         
Ъ ▀
J__inference_sequential_23_layer_call_and_return_conditional_losses_1238874Р ./78@AOPXYabjkstФХЦТУIвF
?в<
2К/
conv2d_179_input         2
p

 
к "%в"
К
0         
Ъ ╒
J__inference_sequential_23_layer_call_and_return_conditional_losses_1239536Ж ./78@AOPXYabjkstФХЦТУ?в<
5в2
(К%
inputs         2
p 

 
к "%в"
К
0         
Ъ ╒
J__inference_sequential_23_layer_call_and_return_conditional_losses_1240037Ж ./78@AOPXYabjkstФХЦТУ?в<
5в2
(К%
inputs         2
p

 
к "%в"
К
0         
Ъ ╖
/__inference_sequential_23_layer_call_fn_1237957Г ./78@AOPXYabjkstФХЦТУIвF
?в<
2К/
conv2d_179_input         2
p 

 
к "К         ╖
/__inference_sequential_23_layer_call_fn_1238740Г ./78@AOPXYabjkstФХЦТУIвF
?в<
2К/
conv2d_179_input         2
p

 
к "К         м
/__inference_sequential_23_layer_call_fn_1238984y ./78@AOPXYabjkstФХЦТУ?в<
5в2
(К%
inputs         2
p 

 
к "К         м
/__inference_sequential_23_layer_call_fn_1239035y ./78@AOPXYabjkstФХЦТУ?в<
5в2
(К%
inputs         2
p

 
к "К         ╘
%__inference_signature_wrapper_1238933к ./78@AOPXYabjkstФХЦТУUвR
в 
KкH
F
conv2d_179_input2К/
conv2d_179_input         2"3к0
.
dense_20"К
dense_20         ╥
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1240265~HвE
>в;
1К.
inputs"                   
p 

 
к "2в/
(К%
0                   
Ъ ╥
P__inference_time_distributed_21_layer_call_and_return_conditional_losses_1240282~HвE
>в;
1К.
inputs"                   
p

 
к "2в/
(К%
0                   
Ъ к
5__inference_time_distributed_21_layer_call_fn_1240243qHвE
>в;
1К.
inputs"                   
p 

 
к "%К"                   к
5__inference_time_distributed_21_layer_call_fn_1240248qHвE
>в;
1К.
inputs"                   
p

 
к "%К"                   