��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
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
�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02unknown8��
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�
*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
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
�
random_zoom/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_zoom/StateVar
y
(random_zoom/StateVar/Read/ReadVariableOpReadVariableOprandom_zoom/StateVar*
_output_shapes
:*
dtype0	
�
random_translation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*,
shared_namerandom_translation/StateVar
�
/random_translation/StateVar/Read/ReadVariableOpReadVariableOprandom_translation/StateVar*
_output_shapes
:*
dtype0	
�
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m
�
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/m
�
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
��*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_1/kernel/m
�
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	�
*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:
*
dtype0
�
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v
�
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/v
�
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
��*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_1/kernel/v
�
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	�
*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
�Y
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�X
value�XB�X B�X
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
�

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
�

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses*
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses* 
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
�

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
�

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*
�
[iter

\beta_1

]beta_2
	^decay
_learning_rate"m�#m�0m�1m�Km�Lm�Sm�Tm�"v�#v�0v�1v�Kv�Lv�Sv�Tv�*
<
"0
#1
02
13
K4
L5
S6
T7*
<
"0
#1
02
13
K4
L5
S6
T7*
* 
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

eserving_default* 
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses*
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q_random_generator
r__call__
*s&call_and_return_all_conditional_losses*
* 
* 
* 
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

"0
#1*

"0
#1*
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

S0
T1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
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
J
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
9*

�0
�1*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

�
_generator*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

�
_generator*
* 
* 
* 

0
1*
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
<

�total

�count
�	variables
�	keras_api*
M

�total

�count
�
_fn_kwargs
�	variables
�	keras_api*
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 

�
_state_var*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
�z
VARIABLE_VALUErandom_zoom/StateVarRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUErandom_translation/StateVarRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_sequential_inputPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_38796
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(random_zoom/StateVar/Read/ReadVariableOp/random_translation/StateVar/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_39567
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1random_zoom/StateVarrandom_translation/StateVarAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_39682��
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_39061

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
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
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
F
*__inference_sequential_layer_call_fn_38801

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37735h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_39139

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
,__inference_sequential_1_layer_call_fn_38178
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_38159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:���������  
*
_user_specified_namesequential_input
�'
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_38388
sequential_input&
conv2d_38363: 
conv2d_38365: (
conv2d_1_38369: @
conv2d_1_38371:@
dense_38377:
��
dense_38379:	� 
dense_1_38382:	�

dense_1_38384:

identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37735�
rescaling/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_38071�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_38363conv2d_38365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_38084�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_38040�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_38369conv2d_1_38371*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_38102�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052�
dropout/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38114�
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_38122�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_38377dense_38379*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_38135�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_38382dense_1_38384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_38152w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:a ]
/
_output_shapes
:���������  
*
_user_specified_namesequential_input
�

�
@__inference_dense_layer_call_and_return_conditional_losses_39159

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
'__inference_dropout_layer_call_fn_39111

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38224w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_38084

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
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
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
,__inference_sequential_1_layer_call_fn_38449

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_38159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
a
E__inference_sequential_layer_call_and_return_conditional_losses_38814

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
E
)__inference_rescaling_layer_call_fn_39033

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_38071h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
C
'__inference_dropout_layer_call_fn_39106

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38114h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
ɂ
�
M__inference_random_translation_layer_call_and_return_conditional_losses_37862

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip�!stateful_uniform_1/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *��L�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��L=`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������\
mulMulstateful_uniform:z:0Cast:y:0*
T0*'
_output_shapes
:���������\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *��L�[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��L=b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: �
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:���������b
mul_1Mulstateful_uniform_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2	mul_1:z:0mul:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
translation_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:p
&translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 translation_matrix/strided_sliceStridedSlice!translation_matrix/Shape:output:0/translation_matrix/strided_slice/stack:output:01translation_matrix/strided_slice/stack_1:output:01translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/ones/packedPack)translation_matrix/strided_slice:output:0)translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:b
translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
translation_matrix/onesFill'translation_matrix/ones/packed:output:0&translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:���������c
!translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/zeros/packedPack)translation_matrix/strided_slice:output:0*translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zerosFill(translation_matrix/zeros/packed:output:0'translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������}
(translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
*translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"translation_matrix/strided_slice_1StridedSliceconcat:output:01translation_matrix/strided_slice_1/stack:output:03translation_matrix/strided_slice_1/stack_1:output:03translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
translation_matrix/NegNeg+translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������e
#translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
!translation_matrix/zeros_1/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zeros_1Fill*translation_matrix/zeros_1/packed:output:0)translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d
"translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
 translation_matrix/ones_1/packedPack)translation_matrix/strided_slice:output:0+translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
translation_matrix/ones_1Fill)translation_matrix/ones_1/packed:output:0(translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:���������}
(translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"translation_matrix/strided_slice_2StridedSliceconcat:output:01translation_matrix/strided_slice_2/stack:output:03translation_matrix/strided_slice_2/stack_1:output:03translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
translation_matrix/Neg_1Neg+translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������e
#translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
!translation_matrix/zeros_2/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zeros_2Fill*translation_matrix/zeros_2/packed:output:0)translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������`
translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/concatConcatV2 translation_matrix/ones:output:0!translation_matrix/zeros:output:0translation_matrix/Neg:y:0#translation_matrix/zeros_1:output:0"translation_matrix/ones_1:output:0translation_matrix/Neg_1:y:0#translation_matrix/zeros_2:output:0'translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs"translation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:���������  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
2__inference_random_translation_layer_call_fn_39309

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_37862w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
i
M__inference_random_translation_layer_call_and_return_conditional_losses_39313

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_39133

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_38122a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�8
�
 __inference__wrapped_model_37715
sequential_inputL
2sequential_1_conv2d_conv2d_readvariableop_resource: A
3sequential_1_conv2d_biasadd_readvariableop_resource: N
4sequential_1_conv2d_1_conv2d_readvariableop_resource: @C
5sequential_1_conv2d_1_biasadd_readvariableop_resource:@E
1sequential_1_dense_matmul_readvariableop_resource:
��A
2sequential_1_dense_biasadd_readvariableop_resource:	�F
3sequential_1_dense_1_matmul_readvariableop_resource:	�
B
4sequential_1_dense_1_biasadd_readvariableop_resource:

identity��*sequential_1/conv2d/BiasAdd/ReadVariableOp�)sequential_1/conv2d/Conv2D/ReadVariableOp�,sequential_1/conv2d_1/BiasAdd/ReadVariableOp�+sequential_1/conv2d_1/Conv2D/ReadVariableOp�)sequential_1/dense/BiasAdd/ReadVariableOp�(sequential_1/dense/MatMul/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�*sequential_1/dense_1/MatMul/ReadVariableOpb
sequential_1/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;d
sequential_1/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_1/rescaling/mulMulsequential_input&sequential_1/rescaling/Cast/x:output:0*
T0*/
_output_shapes
:���������  �
sequential_1/rescaling/addAddV2sequential_1/rescaling/mul:z:0(sequential_1/rescaling/Cast_1/x:output:0*
T0*/
_output_shapes
:���������  �
)sequential_1/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_1/conv2d/Conv2DConv2Dsequential_1/rescaling/add:z:01sequential_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
*sequential_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_1/conv2d/BiasAddBiasAdd#sequential_1/conv2d/Conv2D:output:02sequential_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
sequential_1/conv2d/ReluRelu$sequential_1/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
"sequential_1/max_pooling2d/MaxPoolMaxPool&sequential_1/conv2d/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential_1/conv2d_1/Conv2DConv2D+sequential_1/max_pooling2d/MaxPool:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
sequential_1/dropout/IdentityIdentity-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:���������@k
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
sequential_1/flatten/ReshapeReshape&sequential_1/dropout/Identity:output:0#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
(sequential_1/dense/MatMul/ReadVariableOpReadVariableOp1sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_1/dense/MatMulMatMul%sequential_1/flatten/Reshape:output:00sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_1/dense/BiasAddBiasAdd#sequential_1/dense/MatMul:product:01sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential_1/dense/ReluRelu#sequential_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_1/dense_1/MatMulMatMul%sequential_1/dense/Relu:activations:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
sequential_1/dense_1/SoftmaxSoftmax%sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
u
IdentityIdentity&sequential_1/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp+^sequential_1/conv2d/BiasAdd/ReadVariableOp*^sequential_1/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp*^sequential_1/dense/BiasAdd/ReadVariableOp)^sequential_1/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2X
*sequential_1/conv2d/BiasAdd/ReadVariableOp*sequential_1/conv2d/BiasAdd/ReadVariableOp2V
)sequential_1/conv2d/Conv2D/ReadVariableOp)sequential_1/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2V
)sequential_1/dense/BiasAdd/ReadVariableOp)sequential_1/dense/BiasAdd/ReadVariableOp2T
(sequential_1/dense/MatMul/ReadVariableOp(sequential_1/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:a ]
/
_output_shapes
:���������  
*
_user_specified_namesequential_input
�
�
(__inference_conv2d_1_layer_call_fn_39080

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_38102w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�-
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_38515

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�
5
'dense_1_biasadd_readvariableop_resource:

identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOpU
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    q
rescaling/mulMulinputsrescaling/Cast/x:output:0*
T0*/
_output_shapes
:���������  �
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*/
_output_shapes
:���������  �
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
x
dropout/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:���������@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_39128

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_38071

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ]
mulMulinputsCast/x:output:0*
T0*/
_output_shapes
:���������  b
addAddV2mul:z:0Cast_1/x:output:0*
T0*/
_output_shapes
:���������  W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
&__inference_conv2d_layer_call_fn_39050

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_38084w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_38015
random_zoom_input
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37999w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:���������  
+
_user_specified_namerandom_zoom_input
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_39091

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_38031
random_zoom_input
random_zoom_38024:	&
random_translation_38027:	
identity��*random_translation/StatefulPartitionedCall�#random_zoom/StatefulPartitionedCall�
#random_zoom/StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_inputrandom_zoom_38024*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_37977�
*random_translation/StatefulPartitionedCallStatefulPartitionedCall,random_zoom/StatefulPartitionedCall:output:0random_translation_38027*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_37862�
IdentityIdentity3random_translation/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp+^random_translation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 2X
*random_translation/StatefulPartitionedCall*random_translation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:b ^
/
_output_shapes
:���������  
+
_user_specified_namerandom_zoom_input
�J
�
__inference__traced_save_39567
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_random_zoom_statevar_read_readvariableop	:
6savev2_random_translation_statevar_read_readvariableop	3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_random_zoom_statevar_read_readvariableop6savev2_random_translation_statevar_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$			�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : @:@:
��:�:	�
:
: : : : : : : : : ::: : : @:@:
��:�:	�
:
: : : @:@:
��:�:	�
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:	
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:& "
 
_output_shapes
:
��:!!

_output_shapes	
:�:%"!

_output_shapes
:	�
: #

_output_shapes
:
:$

_output_shapes
: 
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_39101

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_39179

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�*
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_38310

inputs
sequential_38279:	
sequential_38281:	&
conv2d_38285: 
conv2d_38287: (
conv2d_1_38291: @
conv2d_1_38293:@
dense_38299:
��
dense_38301:	� 
dense_1_38304:	�

dense_1_38306:

identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�"sequential/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_38279sequential_38281*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37999�
rescaling/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_38071�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_38285conv2d_38287*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_38084�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_38040�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_38291conv2d_1_38293*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_38102�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052�
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38224�
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_38122�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_38299dense_38301*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_38135�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_38304dense_1_38306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_38152w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
G
+__inference_random_zoom_layer_call_fn_39184

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_37726h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_38152

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
,__inference_sequential_1_layer_call_fn_38474

inputs
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�

	unknown_8:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_38310o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_37999

inputs
random_zoom_37992:	&
random_translation_37995:	
identity��*random_translation/StatefulPartitionedCall�#random_zoom/StatefulPartitionedCall�
#random_zoom/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_zoom_37992*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_37977�
*random_translation/StatefulPartitionedCallStatefulPartitionedCall,random_zoom/StatefulPartitionedCall:output:0random_translation_37995*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_37862�
IdentityIdentity3random_translation/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp+^random_translation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 2X
*random_translation/StatefulPartitionedCall*random_translation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
'__inference_dense_1_layer_call_fn_39168

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_38152o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�n
�
F__inference_random_zoom_layer_call_and_return_conditional_losses_37977

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *33s?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff�?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:���������X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:���������v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:���������  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������  h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�'
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_38159

inputs&
conv2d_38085: 
conv2d_38087: (
conv2d_1_38103: @
conv2d_1_38105:@
dense_38136:
��
dense_38138:	� 
dense_1_38153:	�

dense_1_38155:

identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37735�
rescaling/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_38071�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_38085conv2d_38087*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_38084�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_38040�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_38103conv2d_1_38105*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_38102�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052�
dropout/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38114�
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_38122�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_38136dense_38138*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_38135�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_38153dense_1_38155*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_38152w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_38040

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
ɂ
�
M__inference_random_translation_layer_call_and_return_conditional_losses_39429

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip�!stateful_uniform_1/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *��L�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��L=`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������\
mulMulstateful_uniform:z:0Cast:y:0*
T0*'
_output_shapes
:���������\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *��L�[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��L=b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: �
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:���������b
mul_1Mulstateful_uniform_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2	mul_1:z:0mul:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
translation_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:p
&translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 translation_matrix/strided_sliceStridedSlice!translation_matrix/Shape:output:0/translation_matrix/strided_slice/stack:output:01translation_matrix/strided_slice/stack_1:output:01translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/ones/packedPack)translation_matrix/strided_slice:output:0)translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:b
translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
translation_matrix/onesFill'translation_matrix/ones/packed:output:0&translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:���������c
!translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/zeros/packedPack)translation_matrix/strided_slice:output:0*translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zerosFill(translation_matrix/zeros/packed:output:0'translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������}
(translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
*translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"translation_matrix/strided_slice_1StridedSliceconcat:output:01translation_matrix/strided_slice_1/stack:output:03translation_matrix/strided_slice_1/stack_1:output:03translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
translation_matrix/NegNeg+translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������e
#translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
!translation_matrix/zeros_1/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zeros_1Fill*translation_matrix/zeros_1/packed:output:0)translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d
"translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
 translation_matrix/ones_1/packedPack)translation_matrix/strided_slice:output:0+translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
translation_matrix/ones_1Fill)translation_matrix/ones_1/packed:output:0(translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:���������}
(translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"translation_matrix/strided_slice_2StridedSliceconcat:output:01translation_matrix/strided_slice_2/stack:output:03translation_matrix/strided_slice_2/stack_1:output:03translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
translation_matrix/Neg_1Neg+translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������e
#translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
!translation_matrix/zeros_2/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zeros_2Fill*translation_matrix/zeros_2/packed:output:0)translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������`
translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/concatConcatV2 translation_matrix/ones:output:0!translation_matrix/zeros:output:0translation_matrix/Neg:y:0#translation_matrix/zeros_1:output:0"translation_matrix/ones_1:output:0translation_matrix/Neg_1:y:0#translation_matrix/zeros_2:output:0'translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs"translation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:���������  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_38122

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
@__inference_dense_layer_call_and_return_conditional_losses_38135

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_39028

inputsB
4random_zoom_stateful_uniform_rngreadandskip_resource:	I
;random_translation_stateful_uniform_rngreadandskip_resource:	
identity��2random_translation/stateful_uniform/RngReadAndSkip�4random_translation/stateful_uniform_1/RngReadAndSkip�+random_zoom/stateful_uniform/RngReadAndSkipG
random_zoom/ShapeShapeinputs*
T0*
_output_shapes
:i
random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_zoom/strided_sliceStridedSlicerandom_zoom/Shape:output:0(random_zoom/strided_slice/stack:output:0*random_zoom/strided_slice/stack_1:output:0*random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
!random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������v
#random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������m
#random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_zoom/strided_slice_1StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_1/stack:output:0,random_zoom/strided_slice_1/stack_1:output:0,random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
random_zoom/CastCast$random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: t
!random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������v
#random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������m
#random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_zoom/strided_slice_2StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_2/stack:output:0,random_zoom/strided_slice_2/stack_1:output:0,random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
random_zoom/Cast_1Cast$random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: f
$random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
"random_zoom/stateful_uniform/shapePack"random_zoom/strided_slice:output:0-random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:e
 random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *33s?e
 random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff�?l
"random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!random_zoom/stateful_uniform/ProdProd+random_zoom/stateful_uniform/shape:output:0+random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: e
#random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
#random_zoom/stateful_uniform/Cast_1Cast*random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
+random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip4random_zoom_stateful_uniform_rngreadandskip_resource,random_zoom/stateful_uniform/Cast/x:output:0'random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:z
0random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*random_zoom/stateful_uniform/strided_sliceStridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:09random_zoom/stateful_uniform/strided_slice/stack:output:0;random_zoom/stateful_uniform/strided_slice/stack_1:output:0;random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
$random_zoom/stateful_uniform/BitcastBitcast3random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0|
2random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,random_zoom/stateful_uniform/strided_slice_1StridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:0;random_zoom/stateful_uniform/strided_slice_1/stack:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
&random_zoom/stateful_uniform/Bitcast_1Bitcast5random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0{
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
5random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2+random_zoom/stateful_uniform/shape:output:0/random_zoom/stateful_uniform/Bitcast_1:output:0-random_zoom/stateful_uniform/Bitcast:output:0Brandom_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
 random_zoom/stateful_uniform/subSub)random_zoom/stateful_uniform/max:output:0)random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
 random_zoom/stateful_uniform/mulMul>random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0$random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
random_zoom/stateful_uniformAddV2$random_zoom/stateful_uniform/mul:z:0)random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������Y
random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
random_zoom/concatConcatV2 random_zoom/stateful_uniform:z:0 random_zoom/stateful_uniform:z:0 random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������h
random_zoom/zoom_matrix/ShapeShaperandom_zoom/concat:output:0*
T0*
_output_shapes
:u
+random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%random_zoom/zoom_matrix/strided_sliceStridedSlice&random_zoom/zoom_matrix/Shape:output:04random_zoom/zoom_matrix/strided_slice/stack:output:06random_zoom/zoom_matrix/strided_slice/stack_1:output:06random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
random_zoom/zoom_matrix/subSubrandom_zoom/Cast_1:y:0&random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: f
!random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
random_zoom/zoom_matrix/truedivRealDivrandom_zoom/zoom_matrix/sub:z:0*random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: �
-random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
'random_zoom/zoom_matrix/strided_slice_1StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_1/stack:output:08random_zoom/zoom_matrix/strided_slice_1/stack_1:output:08random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskd
random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
random_zoom/zoom_matrix/sub_1Sub(random_zoom/zoom_matrix/sub_1/x:output:00random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:����������
random_zoom/zoom_matrix/mulMul#random_zoom/zoom_matrix/truediv:z:0!random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:���������d
random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
random_zoom/zoom_matrix/sub_2Subrandom_zoom/Cast:y:0(random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: h
#random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
!random_zoom/zoom_matrix/truediv_1RealDiv!random_zoom/zoom_matrix/sub_2:z:0,random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: �
-random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
'random_zoom/zoom_matrix/strided_slice_2StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_2/stack:output:08random_zoom/zoom_matrix/strided_slice_2/stack_1:output:08random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskd
random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
random_zoom/zoom_matrix/sub_3Sub(random_zoom/zoom_matrix/sub_3/x:output:00random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
random_zoom/zoom_matrix/mul_1Mul%random_zoom/zoom_matrix/truediv_1:z:0!random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:����������
-random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
'random_zoom/zoom_matrix/strided_slice_3StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_3/stack:output:08random_zoom/zoom_matrix/strided_slice_3/stack_1:output:08random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskh
&random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
$random_zoom/zoom_matrix/zeros/packedPack.random_zoom/zoom_matrix/strided_slice:output:0/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
random_zoom/zoom_matrix/zerosFill-random_zoom/zoom_matrix/zeros/packed:output:0,random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������j
(random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
&random_zoom/zoom_matrix/zeros_1/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
random_zoom/zoom_matrix/zeros_1Fill/random_zoom/zoom_matrix/zeros_1/packed:output:0.random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:����������
-random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
'random_zoom/zoom_matrix/strided_slice_4StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_4/stack:output:08random_zoom/zoom_matrix/strided_slice_4/stack_1:output:08random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
&random_zoom/zoom_matrix/zeros_2/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
random_zoom/zoom_matrix/zeros_2Fill/random_zoom/zoom_matrix/zeros_2/packed:output:0.random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������e
#random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
random_zoom/zoom_matrix/concatConcatV20random_zoom/zoom_matrix/strided_slice_3:output:0&random_zoom/zoom_matrix/zeros:output:0random_zoom/zoom_matrix/mul:z:0(random_zoom/zoom_matrix/zeros_1:output:00random_zoom/zoom_matrix/strided_slice_4:output:0!random_zoom/zoom_matrix/mul_1:z:0(random_zoom/zoom_matrix/zeros_2:output:0,random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������Q
random_zoom/transform/ShapeShapeinputs*
T0*
_output_shapes
:s
)random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#random_zoom/transform/strided_sliceStridedSlice$random_zoom/transform/Shape:output:02random_zoom/transform/strided_slice/stack:output:04random_zoom/transform/strided_slice/stack_1:output:04random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:e
 random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs'random_zoom/zoom_matrix/concat:output:0,random_zoom/transform/strided_slice:output:0)random_zoom/transform/fill_value:output:0*/
_output_shapes
:���������  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
random_translation/ShapeShapeErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:p
&random_translation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(random_translation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(random_translation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 random_translation/strided_sliceStridedSlice!random_translation/Shape:output:0/random_translation/strided_slice/stack:output:01random_translation/strided_slice/stack_1:output:01random_translation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
(random_translation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������}
*random_translation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������t
*random_translation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"random_translation/strided_slice_1StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_1/stack:output:03random_translation/strided_slice_1/stack_1:output:03random_translation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_translation/CastCast+random_translation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: {
(random_translation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������}
*random_translation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������t
*random_translation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"random_translation/strided_slice_2StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_2/stack:output:03random_translation/strided_slice_2/stack_1:output:03random_translation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
random_translation/Cast_1Cast+random_translation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+random_translation/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
)random_translation/stateful_uniform/shapePack)random_translation/strided_slice:output:04random_translation/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:l
'random_translation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *��L�l
'random_translation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��L=s
)random_translation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(random_translation/stateful_uniform/ProdProd2random_translation/stateful_uniform/shape:output:02random_translation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: l
*random_translation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*random_translation/stateful_uniform/Cast_1Cast1random_translation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2random_translation/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource3random_translation/stateful_uniform/Cast/x:output:0.random_translation/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
7random_translation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9random_translation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9random_translation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1random_translation/stateful_uniform/strided_sliceStridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0@random_translation/stateful_uniform/strided_slice/stack:output:0Brandom_translation/stateful_uniform/strided_slice/stack_1:output:0Brandom_translation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+random_translation/stateful_uniform/BitcastBitcast:random_translation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9random_translation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;random_translation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;random_translation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3random_translation/stateful_uniform/strided_slice_1StridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0Brandom_translation/stateful_uniform/strided_slice_1/stack:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-random_translation/stateful_uniform/Bitcast_1Bitcast<random_translation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
@random_translation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
<random_translation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_translation/stateful_uniform/shape:output:06random_translation/stateful_uniform/Bitcast_1:output:04random_translation/stateful_uniform/Bitcast:output:0Irandom_translation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
'random_translation/stateful_uniform/subSub0random_translation/stateful_uniform/max:output:00random_translation/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
'random_translation/stateful_uniform/mulMulErandom_translation/stateful_uniform/StatelessRandomUniformV2:output:0+random_translation/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
#random_translation/stateful_uniformAddV2+random_translation/stateful_uniform/mul:z:00random_translation/stateful_uniform/min:output:0*
T0*'
_output_shapes
:����������
random_translation/mulMul'random_translation/stateful_uniform:z:0random_translation/Cast:y:0*
T0*'
_output_shapes
:���������o
-random_translation/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
+random_translation/stateful_uniform_1/shapePack)random_translation/strided_slice:output:06random_translation/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:n
)random_translation/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *��L�n
)random_translation/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��L=u
+random_translation/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*random_translation/stateful_uniform_1/ProdProd4random_translation/stateful_uniform_1/shape:output:04random_translation/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: n
,random_translation/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,random_translation/stateful_uniform_1/Cast_1Cast3random_translation/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4random_translation/stateful_uniform_1/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource5random_translation/stateful_uniform_1/Cast/x:output:00random_translation/stateful_uniform_1/Cast_1:y:03^random_translation/stateful_uniform/RngReadAndSkip*
_output_shapes
:�
9random_translation/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;random_translation/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;random_translation/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3random_translation/stateful_uniform_1/strided_sliceStridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Brandom_translation/stateful_uniform_1/strided_slice/stack:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_1:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-random_translation/stateful_uniform_1/BitcastBitcast<random_translation/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;random_translation/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=random_translation/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_translation/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_translation/stateful_uniform_1/strided_slice_1StridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Drandom_translation/stateful_uniform_1/strided_slice_1/stack:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_1:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/random_translation/stateful_uniform_1/Bitcast_1Bitcast>random_translation/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
>random_translation/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV24random_translation/stateful_uniform_1/shape:output:08random_translation/stateful_uniform_1/Bitcast_1:output:06random_translation/stateful_uniform_1/Bitcast:output:0Krandom_translation/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
)random_translation/stateful_uniform_1/subSub2random_translation/stateful_uniform_1/max:output:02random_translation/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: �
)random_translation/stateful_uniform_1/mulMulGrandom_translation/stateful_uniform_1/StatelessRandomUniformV2:output:0-random_translation/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
%random_translation/stateful_uniform_1AddV2-random_translation/stateful_uniform_1/mul:z:02random_translation/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:����������
random_translation/mul_1Mul)random_translation/stateful_uniform_1:z:0random_translation/Cast_1:y:0*
T0*'
_output_shapes
:���������`
random_translation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
random_translation/concatConcatV2random_translation/mul_1:z:0random_translation/mul:z:0'random_translation/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������}
+random_translation/translation_matrix/ShapeShape"random_translation/concat:output:0*
T0*
_output_shapes
:�
9random_translation/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;random_translation/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;random_translation/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3random_translation/translation_matrix/strided_sliceStridedSlice4random_translation/translation_matrix/Shape:output:0Brandom_translation/translation_matrix/strided_slice/stack:output:0Drandom_translation/translation_matrix/strided_slice/stack_1:output:0Drandom_translation/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3random_translation/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
1random_translation/translation_matrix/ones/packedPack<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:u
0random_translation/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*random_translation/translation_matrix/onesFill:random_translation/translation_matrix/ones/packed:output:09random_translation/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:���������v
4random_translation/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
2random_translation/translation_matrix/zeros/packedPack<random_translation/translation_matrix/strided_slice:output:0=random_translation/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1random_translation/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
+random_translation/translation_matrix/zerosFill;random_translation/translation_matrix/zeros/packed:output:0:random_translation/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:����������
;random_translation/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
=random_translation/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
=random_translation/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
5random_translation/translation_matrix/strided_slice_1StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_1/stack:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask�
)random_translation/translation_matrix/NegNeg>random_translation/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������x
6random_translation/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
4random_translation/translation_matrix/zeros_1/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:x
3random_translation/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-random_translation/translation_matrix/zeros_1Fill=random_translation/translation_matrix/zeros_1/packed:output:0<random_translation/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������w
5random_translation/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
3random_translation/translation_matrix/ones_1/packedPack<random_translation/translation_matrix/strided_slice:output:0>random_translation/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:w
2random_translation/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,random_translation/translation_matrix/ones_1Fill<random_translation/translation_matrix/ones_1/packed:output:0;random_translation/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:����������
;random_translation/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
=random_translation/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
=random_translation/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
5random_translation/translation_matrix/strided_slice_2StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_2/stack:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask�
+random_translation/translation_matrix/Neg_1Neg>random_translation/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������x
6random_translation/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
4random_translation/translation_matrix/zeros_2/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:x
3random_translation/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-random_translation/translation_matrix/zeros_2Fill=random_translation/translation_matrix/zeros_2/packed:output:0<random_translation/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������s
1random_translation/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
,random_translation/translation_matrix/concatConcatV23random_translation/translation_matrix/ones:output:04random_translation/translation_matrix/zeros:output:0-random_translation/translation_matrix/Neg:y:06random_translation/translation_matrix/zeros_1:output:05random_translation/translation_matrix/ones_1:output:0/random_translation/translation_matrix/Neg_1:y:06random_translation/translation_matrix/zeros_2:output:0:random_translation/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
"random_translation/transform/ShapeShapeErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:z
0random_translation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2random_translation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2random_translation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*random_translation/transform/strided_sliceStridedSlice+random_translation/transform/Shape:output:09random_translation/transform/strided_slice/stack:output:0;random_translation/transform/strided_slice/stack_1:output:0;random_translation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:l
'random_translation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7random_translation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Erandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:05random_translation/translation_matrix/concat:output:03random_translation/transform/strided_slice:output:00random_translation/transform/fill_value:output:0*/
_output_shapes
:���������  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentityLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp3^random_translation/stateful_uniform/RngReadAndSkip5^random_translation/stateful_uniform_1/RngReadAndSkip,^random_zoom/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 2h
2random_translation/stateful_uniform/RngReadAndSkip2random_translation/stateful_uniform/RngReadAndSkip2l
4random_translation/stateful_uniform_1/RngReadAndSkip4random_translation/stateful_uniform_1/RngReadAndSkip2Z
+random_zoom/stateful_uniform/RngReadAndSkip+random_zoom/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
a
E__inference_sequential_layer_call_and_return_conditional_losses_37735

inputs
identity�
random_zoom/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_37726�
"random_translation/PartitionedCallPartitionedCall$random_zoom/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_37732{
IdentityIdentity+random_translation/PartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_38114

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
#__inference_signature_wrapper_38796
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_37715o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:���������  
*
_user_specified_namesequential_input
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_39041

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ]
mulMulinputsCast/x:output:0*
T0*/
_output_shapes
:���������  b
addAddV2mul:z:0Cast_1/x:output:0*
T0*/
_output_shapes
:���������  W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
l
E__inference_sequential_layer_call_and_return_conditional_losses_38021
random_zoom_input
identity�
random_zoom/PartitionedCallPartitionedCallrandom_zoom_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_37726�
"random_translation/PartitionedCallPartitionedCall$random_zoom/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_37732{
IdentityIdentity+random_translation/PartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :b ^
/
_output_shapes
:���������  
+
_user_specified_namerandom_zoom_input
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_38102

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_38810

inputs
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37999w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
��
�
!__inference__traced_restore_39682
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_1_kernel: @.
 assignvariableop_3_conv2d_1_bias:@3
assignvariableop_4_dense_kernel:
��,
assignvariableop_5_dense_bias:	�4
!assignvariableop_6_dense_1_kernel:	�
-
assignvariableop_7_dense_1_bias:
&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: 6
(assignvariableop_17_random_zoom_statevar:	=
/assignvariableop_18_random_translation_statevar:	B
(assignvariableop_19_adam_conv2d_kernel_m: 4
&assignvariableop_20_adam_conv2d_bias_m: D
*assignvariableop_21_adam_conv2d_1_kernel_m: @6
(assignvariableop_22_adam_conv2d_1_bias_m:@;
'assignvariableop_23_adam_dense_kernel_m:
��4
%assignvariableop_24_adam_dense_bias_m:	�<
)assignvariableop_25_adam_dense_1_kernel_m:	�
5
'assignvariableop_26_adam_dense_1_bias_m:
B
(assignvariableop_27_adam_conv2d_kernel_v: 4
&assignvariableop_28_adam_conv2d_bias_v: D
*assignvariableop_29_adam_conv2d_1_kernel_v: @6
(assignvariableop_30_adam_conv2d_1_bias_v:@;
'assignvariableop_31_adam_dense_kernel_v:
��4
%assignvariableop_32_adam_dense_bias_v:	�<
)assignvariableop_33_adam_dense_1_kernel_v:	�
5
'assignvariableop_34_adam_dense_1_bias_v:

identity_36��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp(assignvariableop_17_random_zoom_statevarIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp/assignvariableop_18_random_translation_statevarIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_conv2d_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_conv2d_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv2d_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv2d_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp%assignvariableop_24_adam_dense_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_conv2d_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_dense_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342(
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
�
i
M__inference_random_translation_layer_call_and_return_conditional_losses_37732

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_39148

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_38135p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
߀
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_38773

inputsM
?sequential_random_zoom_stateful_uniform_rngreadandskip_resource:	T
Fsequential_random_translation_stateful_uniform_rngreadandskip_resource:	?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�
5
'dense_1_biasadd_readvariableop_resource:

identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�=sequential/random_translation/stateful_uniform/RngReadAndSkip�?sequential/random_translation/stateful_uniform_1/RngReadAndSkip�6sequential/random_zoom/stateful_uniform/RngReadAndSkipR
sequential/random_zoom/ShapeShapeinputs*
T0*
_output_shapes
:t
*sequential/random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential/random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential/random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential/random_zoom/strided_sliceStridedSlice%sequential/random_zoom/Shape:output:03sequential/random_zoom/strided_slice/stack:output:05sequential/random_zoom/strided_slice/stack_1:output:05sequential/random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
,sequential/random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
.sequential/random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������x
.sequential/random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential/random_zoom/strided_slice_1StridedSlice%sequential/random_zoom/Shape:output:05sequential/random_zoom/strided_slice_1/stack:output:07sequential/random_zoom/strided_slice_1/stack_1:output:07sequential/random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
sequential/random_zoom/CastCast/sequential/random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
,sequential/random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
.sequential/random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������x
.sequential/random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential/random_zoom/strided_slice_2StridedSlice%sequential/random_zoom/Shape:output:05sequential/random_zoom/strided_slice_2/stack:output:07sequential/random_zoom/strided_slice_2/stack_1:output:07sequential/random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
sequential/random_zoom/Cast_1Cast/sequential/random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: q
/sequential/random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
-sequential/random_zoom/stateful_uniform/shapePack-sequential/random_zoom/strided_slice:output:08sequential/random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:p
+sequential/random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *33s?p
+sequential/random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff�?w
-sequential/random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,sequential/random_zoom/stateful_uniform/ProdProd6sequential/random_zoom/stateful_uniform/shape:output:06sequential/random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: p
.sequential/random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
.sequential/random_zoom/stateful_uniform/Cast_1Cast5sequential/random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
6sequential/random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip?sequential_random_zoom_stateful_uniform_rngreadandskip_resource7sequential/random_zoom/stateful_uniform/Cast/x:output:02sequential/random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
;sequential/random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
=sequential/random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential/random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5sequential/random_zoom/stateful_uniform/strided_sliceStridedSlice>sequential/random_zoom/stateful_uniform/RngReadAndSkip:value:0Dsequential/random_zoom/stateful_uniform/strided_slice/stack:output:0Fsequential/random_zoom/stateful_uniform/strided_slice/stack_1:output:0Fsequential/random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
/sequential/random_zoom/stateful_uniform/BitcastBitcast>sequential/random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
=sequential/random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?sequential/random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?sequential/random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential/random_zoom/stateful_uniform/strided_slice_1StridedSlice>sequential/random_zoom/stateful_uniform/RngReadAndSkip:value:0Fsequential/random_zoom/stateful_uniform/strided_slice_1/stack:output:0Hsequential/random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0Hsequential/random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
1sequential/random_zoom/stateful_uniform/Bitcast_1Bitcast@sequential/random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Dsequential/random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
@sequential/random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV26sequential/random_zoom/stateful_uniform/shape:output:0:sequential/random_zoom/stateful_uniform/Bitcast_1:output:08sequential/random_zoom/stateful_uniform/Bitcast:output:0Msequential/random_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
+sequential/random_zoom/stateful_uniform/subSub4sequential/random_zoom/stateful_uniform/max:output:04sequential/random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
+sequential/random_zoom/stateful_uniform/mulMulIsequential/random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0/sequential/random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
'sequential/random_zoom/stateful_uniformAddV2/sequential/random_zoom/stateful_uniform/mul:z:04sequential/random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������d
"sequential/random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
sequential/random_zoom/concatConcatV2+sequential/random_zoom/stateful_uniform:z:0+sequential/random_zoom/stateful_uniform:z:0+sequential/random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������~
(sequential/random_zoom/zoom_matrix/ShapeShape&sequential/random_zoom/concat:output:0*
T0*
_output_shapes
:�
6sequential/random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8sequential/random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential/random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0sequential/random_zoom/zoom_matrix/strided_sliceStridedSlice1sequential/random_zoom/zoom_matrix/Shape:output:0?sequential/random_zoom/zoom_matrix/strided_slice/stack:output:0Asequential/random_zoom/zoom_matrix/strided_slice/stack_1:output:0Asequential/random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
(sequential/random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&sequential/random_zoom/zoom_matrix/subSub!sequential/random_zoom/Cast_1:y:01sequential/random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: q
,sequential/random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
*sequential/random_zoom/zoom_matrix/truedivRealDiv*sequential/random_zoom/zoom_matrix/sub:z:05sequential/random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: �
8sequential/random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
:sequential/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
:sequential/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
2sequential/random_zoom/zoom_matrix/strided_slice_1StridedSlice&sequential/random_zoom/concat:output:0Asequential/random_zoom/zoom_matrix/strided_slice_1/stack:output:0Csequential/random_zoom/zoom_matrix/strided_slice_1/stack_1:output:0Csequential/random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masko
*sequential/random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(sequential/random_zoom/zoom_matrix/sub_1Sub3sequential/random_zoom/zoom_matrix/sub_1/x:output:0;sequential/random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:����������
&sequential/random_zoom/zoom_matrix/mulMul.sequential/random_zoom/zoom_matrix/truediv:z:0,sequential/random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:���������o
*sequential/random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(sequential/random_zoom/zoom_matrix/sub_2Subsequential/random_zoom/Cast:y:03sequential/random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: s
.sequential/random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
,sequential/random_zoom/zoom_matrix/truediv_1RealDiv,sequential/random_zoom/zoom_matrix/sub_2:z:07sequential/random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: �
8sequential/random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
:sequential/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
:sequential/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
2sequential/random_zoom/zoom_matrix/strided_slice_2StridedSlice&sequential/random_zoom/concat:output:0Asequential/random_zoom/zoom_matrix/strided_slice_2/stack:output:0Csequential/random_zoom/zoom_matrix/strided_slice_2/stack_1:output:0Csequential/random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masko
*sequential/random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(sequential/random_zoom/zoom_matrix/sub_3Sub3sequential/random_zoom/zoom_matrix/sub_3/x:output:0;sequential/random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
(sequential/random_zoom/zoom_matrix/mul_1Mul0sequential/random_zoom/zoom_matrix/truediv_1:z:0,sequential/random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:����������
8sequential/random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
:sequential/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
:sequential/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
2sequential/random_zoom/zoom_matrix/strided_slice_3StridedSlice&sequential/random_zoom/concat:output:0Asequential/random_zoom/zoom_matrix/strided_slice_3/stack:output:0Csequential/random_zoom/zoom_matrix/strided_slice_3/stack_1:output:0Csequential/random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masks
1sequential/random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
/sequential/random_zoom/zoom_matrix/zeros/packedPack9sequential/random_zoom/zoom_matrix/strided_slice:output:0:sequential/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:s
.sequential/random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
(sequential/random_zoom/zoom_matrix/zerosFill8sequential/random_zoom/zoom_matrix/zeros/packed:output:07sequential/random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������u
3sequential/random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
1sequential/random_zoom/zoom_matrix/zeros_1/packedPack9sequential/random_zoom/zoom_matrix/strided_slice:output:0<sequential/random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:u
0sequential/random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
*sequential/random_zoom/zoom_matrix/zeros_1Fill:sequential/random_zoom/zoom_matrix/zeros_1/packed:output:09sequential/random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:����������
8sequential/random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
:sequential/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
:sequential/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
2sequential/random_zoom/zoom_matrix/strided_slice_4StridedSlice&sequential/random_zoom/concat:output:0Asequential/random_zoom/zoom_matrix/strided_slice_4/stack:output:0Csequential/random_zoom/zoom_matrix/strided_slice_4/stack_1:output:0Csequential/random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masku
3sequential/random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
1sequential/random_zoom/zoom_matrix/zeros_2/packedPack9sequential/random_zoom/zoom_matrix/strided_slice:output:0<sequential/random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:u
0sequential/random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
*sequential/random_zoom/zoom_matrix/zeros_2Fill:sequential/random_zoom/zoom_matrix/zeros_2/packed:output:09sequential/random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������p
.sequential/random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential/random_zoom/zoom_matrix/concatConcatV2;sequential/random_zoom/zoom_matrix/strided_slice_3:output:01sequential/random_zoom/zoom_matrix/zeros:output:0*sequential/random_zoom/zoom_matrix/mul:z:03sequential/random_zoom/zoom_matrix/zeros_1:output:0;sequential/random_zoom/zoom_matrix/strided_slice_4:output:0,sequential/random_zoom/zoom_matrix/mul_1:z:03sequential/random_zoom/zoom_matrix/zeros_2:output:07sequential/random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������\
&sequential/random_zoom/transform/ShapeShapeinputs*
T0*
_output_shapes
:~
4sequential/random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
6sequential/random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential/random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential/random_zoom/transform/strided_sliceStridedSlice/sequential/random_zoom/transform/Shape:output:0=sequential/random_zoom/transform/strided_slice/stack:output:0?sequential/random_zoom/transform/strided_slice/stack_1:output:0?sequential/random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:p
+sequential/random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
;sequential/random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs2sequential/random_zoom/zoom_matrix/concat:output:07sequential/random_zoom/transform/strided_slice:output:04sequential/random_zoom/transform/fill_value:output:0*/
_output_shapes
:���������  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
#sequential/random_translation/ShapeShapePsequential/random_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:{
1sequential/random_translation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential/random_translation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential/random_translation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential/random_translation/strided_sliceStridedSlice,sequential/random_translation/Shape:output:0:sequential/random_translation/strided_slice/stack:output:0<sequential/random_translation/strided_slice/stack_1:output:0<sequential/random_translation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3sequential/random_translation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
5sequential/random_translation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������
5sequential/random_translation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential/random_translation/strided_slice_1StridedSlice,sequential/random_translation/Shape:output:0<sequential/random_translation/strided_slice_1/stack:output:0>sequential/random_translation/strided_slice_1/stack_1:output:0>sequential/random_translation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
"sequential/random_translation/CastCast6sequential/random_translation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
3sequential/random_translation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
5sequential/random_translation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������
5sequential/random_translation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential/random_translation/strided_slice_2StridedSlice,sequential/random_translation/Shape:output:0<sequential/random_translation/strided_slice_2/stack:output:0>sequential/random_translation/strided_slice_2/stack_1:output:0>sequential/random_translation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
$sequential/random_translation/Cast_1Cast6sequential/random_translation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: x
6sequential/random_translation/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
4sequential/random_translation/stateful_uniform/shapePack4sequential/random_translation/strided_slice:output:0?sequential/random_translation/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:w
2sequential/random_translation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *��L�w
2sequential/random_translation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��L=~
4sequential/random_translation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3sequential/random_translation/stateful_uniform/ProdProd=sequential/random_translation/stateful_uniform/shape:output:0=sequential/random_translation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: w
5sequential/random_translation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
5sequential/random_translation/stateful_uniform/Cast_1Cast<sequential/random_translation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
=sequential/random_translation/stateful_uniform/RngReadAndSkipRngReadAndSkipFsequential_random_translation_stateful_uniform_rngreadandskip_resource>sequential/random_translation/stateful_uniform/Cast/x:output:09sequential/random_translation/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
Bsequential/random_translation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Dsequential/random_translation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential/random_translation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential/random_translation/stateful_uniform/strided_sliceStridedSliceEsequential/random_translation/stateful_uniform/RngReadAndSkip:value:0Ksequential/random_translation/stateful_uniform/strided_slice/stack:output:0Msequential/random_translation/stateful_uniform/strided_slice/stack_1:output:0Msequential/random_translation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
6sequential/random_translation/stateful_uniform/BitcastBitcastEsequential/random_translation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Dsequential/random_translation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Fsequential/random_translation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Fsequential/random_translation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential/random_translation/stateful_uniform/strided_slice_1StridedSliceEsequential/random_translation/stateful_uniform/RngReadAndSkip:value:0Msequential/random_translation/stateful_uniform/strided_slice_1/stack:output:0Osequential/random_translation/stateful_uniform/strided_slice_1/stack_1:output:0Osequential/random_translation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
8sequential/random_translation/stateful_uniform/Bitcast_1BitcastGsequential/random_translation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Ksequential/random_translation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Gsequential/random_translation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2=sequential/random_translation/stateful_uniform/shape:output:0Asequential/random_translation/stateful_uniform/Bitcast_1:output:0?sequential/random_translation/stateful_uniform/Bitcast:output:0Tsequential/random_translation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
2sequential/random_translation/stateful_uniform/subSub;sequential/random_translation/stateful_uniform/max:output:0;sequential/random_translation/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
2sequential/random_translation/stateful_uniform/mulMulPsequential/random_translation/stateful_uniform/StatelessRandomUniformV2:output:06sequential/random_translation/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
.sequential/random_translation/stateful_uniformAddV26sequential/random_translation/stateful_uniform/mul:z:0;sequential/random_translation/stateful_uniform/min:output:0*
T0*'
_output_shapes
:����������
!sequential/random_translation/mulMul2sequential/random_translation/stateful_uniform:z:0&sequential/random_translation/Cast:y:0*
T0*'
_output_shapes
:���������z
8sequential/random_translation/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
6sequential/random_translation/stateful_uniform_1/shapePack4sequential/random_translation/strided_slice:output:0Asequential/random_translation/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
4sequential/random_translation/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *��L�y
4sequential/random_translation/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��L=�
6sequential/random_translation/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5sequential/random_translation/stateful_uniform_1/ProdProd?sequential/random_translation/stateful_uniform_1/shape:output:0?sequential/random_translation/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: y
7sequential/random_translation/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
7sequential/random_translation/stateful_uniform_1/Cast_1Cast>sequential/random_translation/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
?sequential/random_translation/stateful_uniform_1/RngReadAndSkipRngReadAndSkipFsequential_random_translation_stateful_uniform_rngreadandskip_resource@sequential/random_translation/stateful_uniform_1/Cast/x:output:0;sequential/random_translation/stateful_uniform_1/Cast_1:y:0>^sequential/random_translation/stateful_uniform/RngReadAndSkip*
_output_shapes
:�
Dsequential/random_translation/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Fsequential/random_translation/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Fsequential/random_translation/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential/random_translation/stateful_uniform_1/strided_sliceStridedSliceGsequential/random_translation/stateful_uniform_1/RngReadAndSkip:value:0Msequential/random_translation/stateful_uniform_1/strided_slice/stack:output:0Osequential/random_translation/stateful_uniform_1/strided_slice/stack_1:output:0Osequential/random_translation/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
8sequential/random_translation/stateful_uniform_1/BitcastBitcastGsequential/random_translation/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Fsequential/random_translation/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Hsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Hsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential/random_translation/stateful_uniform_1/strided_slice_1StridedSliceGsequential/random_translation/stateful_uniform_1/RngReadAndSkip:value:0Osequential/random_translation/stateful_uniform_1/strided_slice_1/stack:output:0Qsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_1:output:0Qsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
:sequential/random_translation/stateful_uniform_1/Bitcast_1BitcastIsequential/random_translation/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Msequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Isequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2?sequential/random_translation/stateful_uniform_1/shape:output:0Csequential/random_translation/stateful_uniform_1/Bitcast_1:output:0Asequential/random_translation/stateful_uniform_1/Bitcast:output:0Vsequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
4sequential/random_translation/stateful_uniform_1/subSub=sequential/random_translation/stateful_uniform_1/max:output:0=sequential/random_translation/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: �
4sequential/random_translation/stateful_uniform_1/mulMulRsequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2:output:08sequential/random_translation/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
0sequential/random_translation/stateful_uniform_1AddV28sequential/random_translation/stateful_uniform_1/mul:z:0=sequential/random_translation/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:����������
#sequential/random_translation/mul_1Mul4sequential/random_translation/stateful_uniform_1:z:0(sequential/random_translation/Cast_1:y:0*
T0*'
_output_shapes
:���������k
)sequential/random_translation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
$sequential/random_translation/concatConcatV2'sequential/random_translation/mul_1:z:0%sequential/random_translation/mul:z:02sequential/random_translation/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
6sequential/random_translation/translation_matrix/ShapeShape-sequential/random_translation/concat:output:0*
T0*
_output_shapes
:�
Dsequential/random_translation/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Fsequential/random_translation/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Fsequential/random_translation/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential/random_translation/translation_matrix/strided_sliceStridedSlice?sequential/random_translation/translation_matrix/Shape:output:0Msequential/random_translation/translation_matrix/strided_slice/stack:output:0Osequential/random_translation/translation_matrix/strided_slice/stack_1:output:0Osequential/random_translation/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>sequential/random_translation/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
<sequential/random_translation/translation_matrix/ones/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Gsequential/random_translation/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:�
;sequential/random_translation/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential/random_translation/translation_matrix/onesFillEsequential/random_translation/translation_matrix/ones/packed:output:0Dsequential/random_translation/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:����������
?sequential/random_translation/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
=sequential/random_translation/translation_matrix/zeros/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Hsequential/random_translation/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:�
<sequential/random_translation/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
6sequential/random_translation/translation_matrix/zerosFillFsequential/random_translation/translation_matrix/zeros/packed:output:0Esequential/random_translation/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:����������
Fsequential/random_translation/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
Hsequential/random_translation/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
Hsequential/random_translation/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
@sequential/random_translation/translation_matrix/strided_slice_1StridedSlice-sequential/random_translation/concat:output:0Osequential/random_translation/translation_matrix/strided_slice_1/stack:output:0Qsequential/random_translation/translation_matrix/strided_slice_1/stack_1:output:0Qsequential/random_translation/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask�
4sequential/random_translation/translation_matrix/NegNegIsequential/random_translation/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:����������
Asequential/random_translation/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
?sequential/random_translation/translation_matrix/zeros_1/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Jsequential/random_translation/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
>sequential/random_translation/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
8sequential/random_translation/translation_matrix/zeros_1FillHsequential/random_translation/translation_matrix/zeros_1/packed:output:0Gsequential/random_translation/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:����������
@sequential/random_translation/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
>sequential/random_translation/translation_matrix/ones_1/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Isequential/random_translation/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
=sequential/random_translation/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7sequential/random_translation/translation_matrix/ones_1FillGsequential/random_translation/translation_matrix/ones_1/packed:output:0Fsequential/random_translation/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:����������
Fsequential/random_translation/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
Hsequential/random_translation/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
Hsequential/random_translation/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
@sequential/random_translation/translation_matrix/strided_slice_2StridedSlice-sequential/random_translation/concat:output:0Osequential/random_translation/translation_matrix/strided_slice_2/stack:output:0Qsequential/random_translation/translation_matrix/strided_slice_2/stack_1:output:0Qsequential/random_translation/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask�
6sequential/random_translation/translation_matrix/Neg_1NegIsequential/random_translation/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
Asequential/random_translation/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
?sequential/random_translation/translation_matrix/zeros_2/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Jsequential/random_translation/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:�
>sequential/random_translation/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
8sequential/random_translation/translation_matrix/zeros_2FillHsequential/random_translation/translation_matrix/zeros_2/packed:output:0Gsequential/random_translation/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������~
<sequential/random_translation/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
7sequential/random_translation/translation_matrix/concatConcatV2>sequential/random_translation/translation_matrix/ones:output:0?sequential/random_translation/translation_matrix/zeros:output:08sequential/random_translation/translation_matrix/Neg:y:0Asequential/random_translation/translation_matrix/zeros_1:output:0@sequential/random_translation/translation_matrix/ones_1:output:0:sequential/random_translation/translation_matrix/Neg_1:y:0Asequential/random_translation/translation_matrix/zeros_2:output:0Esequential/random_translation/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
-sequential/random_translation/transform/ShapeShapePsequential/random_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:�
;sequential/random_translation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=sequential/random_translation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential/random_translation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5sequential/random_translation/transform/strided_sliceStridedSlice6sequential/random_translation/transform/Shape:output:0Dsequential/random_translation/transform/strided_slice/stack:output:0Fsequential/random_translation/transform/strided_slice/stack_1:output:0Fsequential/random_translation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:w
2sequential/random_translation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Bsequential/random_translation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Psequential/random_zoom/transform/ImageProjectiveTransformV3:transformed_images:0@sequential/random_translation/translation_matrix/concat:output:0>sequential/random_translation/transform/strided_slice:output:0;sequential/random_translation/transform/fill_value:output:0*/
_output_shapes
:���������  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARU
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rescaling/mulMulWsequential/random_translation/transform/ImageProjectiveTransformV3:transformed_images:0rescaling/Cast/x:output:0*
T0*/
_output_shapes
:���������  �
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*/
_output_shapes
:���������  �
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout/dropout/MulMul max_pooling2d_1/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������@e
dropout/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
flatten/ReshapeReshapedropout/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp>^sequential/random_translation/stateful_uniform/RngReadAndSkip@^sequential/random_translation/stateful_uniform_1/RngReadAndSkip7^sequential/random_zoom/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2~
=sequential/random_translation/stateful_uniform/RngReadAndSkip=sequential/random_translation/stateful_uniform/RngReadAndSkip2�
?sequential/random_translation/stateful_uniform_1/RngReadAndSkip?sequential/random_translation/stateful_uniform_1/RngReadAndSkip2p
6sequential/random_zoom/stateful_uniform/RngReadAndSkip6sequential/random_zoom/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
{
+__inference_random_zoom_layer_call_fn_39191

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_37977w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
Q
*__inference_sequential_layer_call_fn_37738
random_zoom_input
identity�
PartitionedCallPartitionedCallrandom_zoom_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37735h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :b ^
/
_output_shapes
:���������  
+
_user_specified_namerandom_zoom_input
�
K
/__inference_max_pooling2d_1_layer_call_fn_39096

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_39116

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
N
2__inference_random_translation_layer_call_fn_39302

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_37732h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
b
F__inference_random_zoom_layer_call_and_return_conditional_losses_39195

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
b
F__inference_random_zoom_layer_call_and_return_conditional_losses_37726

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
,__inference_sequential_1_layer_call_fn_38358
sequential_input
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�

	unknown_8:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_38310o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:���������  
*
_user_specified_namesequential_input
�n
�
F__inference_random_zoom_layer_call_and_return_conditional_losses_39297

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *33s?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff�?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:���������X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:���������v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:���������  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������  h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_38224

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_39066

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_38040�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�+
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_38422
sequential_input
sequential_38391:	
sequential_38393:	&
conv2d_38397: 
conv2d_38399: (
conv2d_1_38403: @
conv2d_1_38405:@
dense_38411:
��
dense_38413:	� 
dense_1_38416:	�

dense_1_38418:

identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�"sequential/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCallsequential_inputsequential_38391sequential_38393*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37999�
rescaling/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_38071�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_38397conv2d_38399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_38084�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_38040�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_38403conv2d_1_38405*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_38102�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052�
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_38224�
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_38122�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_38411dense_38413*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_38135�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_38416dense_1_38418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_38152w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������  : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:a ]
/
_output_shapes
:���������  
*
_user_specified_namesequential_input
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_39071

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
sequential_inputA
"serving_default_sequential_input:0���������  ;
dense_10
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
�

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
[iter

\beta_1

]beta_2
	^decay
_learning_rate"m�#m�0m�1m�Km�Lm�Sm�Tm�"v�#v�0v�1v�Kv�Lv�Sv�Tv�"
	optimizer
X
"0
#1
02
13
K4
L5
S6
T7"
trackable_list_wrapper
X
"0
#1
02
13
K4
L5
S6
T7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_sequential_1_layer_call_fn_38178
,__inference_sequential_1_layer_call_fn_38449
,__inference_sequential_1_layer_call_fn_38474
,__inference_sequential_1_layer_call_fn_38358�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_1_layer_call_and_return_conditional_losses_38515
G__inference_sequential_1_layer_call_and_return_conditional_losses_38773
G__inference_sequential_1_layer_call_and_return_conditional_losses_38388
G__inference_sequential_1_layer_call_and_return_conditional_losses_38422�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_37715sequential_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
eserving_default"
signature_map
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q_random_generator
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_sequential_layer_call_fn_37738
*__inference_sequential_layer_call_fn_38801
*__inference_sequential_layer_call_fn_38810
*__inference_sequential_layer_call_fn_38015�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_sequential_layer_call_and_return_conditional_losses_38814
E__inference_sequential_layer_call_and_return_conditional_losses_39028
E__inference_sequential_layer_call_and_return_conditional_losses_38021
E__inference_sequential_layer_call_and_return_conditional_losses_38031�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_rescaling_layer_call_fn_39033�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_rescaling_layer_call_and_return_conditional_losses_39041�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
':% 2conv2d/kernel
: 2conv2d/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�2�
&__inference_conv2d_layer_call_fn_39050�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_conv2d_layer_call_and_return_conditional_losses_39061�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_max_pooling2d_layer_call_fn_39066�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_39071�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
):' @2conv2d_1/kernel
:@2conv2d_1/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_conv2d_1_layer_call_fn_39080�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_39091�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_max_pooling2d_1_layer_call_fn_39096�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_39101�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
'__inference_dropout_layer_call_fn_39106
'__inference_dropout_layer_call_fn_39111�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_dropout_layer_call_and_return_conditional_losses_39116
B__inference_dropout_layer_call_and_return_conditional_losses_39128�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_flatten_layer_call_fn_39133�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_flatten_layer_call_and_return_conditional_losses_39139�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 :
��2dense/kernel
:�2
dense/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�2�
%__inference_dense_layer_call_fn_39148�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_dense_layer_call_and_return_conditional_losses_39159�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
!:	�
2dense_1/kernel
:
2dense_1/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_dense_1_layer_call_fn_39168�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_1_layer_call_and_return_conditional_losses_39179�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
f
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
9"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_signature_wrapper_38796sequential_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
/
�
_generator"
_generic_user_object
�2�
+__inference_random_zoom_layer_call_fn_39184
+__inference_random_zoom_layer_call_fn_39191�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_random_zoom_layer_call_and_return_conditional_losses_39195
F__inference_random_zoom_layer_call_and_return_conditional_losses_39297�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
/
�
_generator"
_generic_user_object
�2�
2__inference_random_translation_layer_call_fn_39302
2__inference_random_translation_layer_call_fn_39309�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
M__inference_random_translation_layer_call_and_return_conditional_losses_39313
M__inference_random_translation_layer_call_and_return_conditional_losses_39429�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
.
0
1"
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
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
/
�
_state_var"
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
/
�
_state_var"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 :	2random_zoom/StateVar
':%	2random_translation/StateVar
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
.:, @2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
%:#
��2Adam/dense/kernel/m
:�2Adam/dense/bias/m
&:$	�
2Adam/dense_1/kernel/m
:
2Adam/dense_1/bias/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
.:, @2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
%:#
��2Adam/dense/kernel/v
:�2Adam/dense/bias/v
&:$	�
2Adam/dense_1/kernel/v
:
2Adam/dense_1/bias/v�
 __inference__wrapped_model_37715�"#01KLSTA�>
7�4
2�/
sequential_input���������  
� "1�.
,
dense_1!�
dense_1���������
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_39091l017�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0���������@
� �
(__inference_conv2d_1_layer_call_fn_39080_017�4
-�*
(�%
inputs��������� 
� " ����������@�
A__inference_conv2d_layer_call_and_return_conditional_losses_39061l"#7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0��������� 
� �
&__inference_conv2d_layer_call_fn_39050_"#7�4
-�*
(�%
inputs���������  
� " ���������� �
B__inference_dense_1_layer_call_and_return_conditional_losses_39179]ST0�-
&�#
!�
inputs����������
� "%�"
�
0���������

� {
'__inference_dense_1_layer_call_fn_39168PST0�-
&�#
!�
inputs����������
� "����������
�
@__inference_dense_layer_call_and_return_conditional_losses_39159^KL0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� z
%__inference_dense_layer_call_fn_39148QKL0�-
&�#
!�
inputs����������
� "������������
B__inference_dropout_layer_call_and_return_conditional_losses_39116l;�8
1�.
(�%
inputs���������@
p 
� "-�*
#� 
0���������@
� �
B__inference_dropout_layer_call_and_return_conditional_losses_39128l;�8
1�.
(�%
inputs���������@
p
� "-�*
#� 
0���������@
� �
'__inference_dropout_layer_call_fn_39106_;�8
1�.
(�%
inputs���������@
p 
� " ����������@�
'__inference_dropout_layer_call_fn_39111_;�8
1�.
(�%
inputs���������@
p
� " ����������@�
B__inference_flatten_layer_call_and_return_conditional_losses_39139a7�4
-�*
(�%
inputs���������@
� "&�#
�
0����������
� 
'__inference_flatten_layer_call_fn_39133T7�4
-�*
(�%
inputs���������@
� "������������
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_39101�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_1_layer_call_fn_39096�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_39071�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_39066�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
M__inference_random_translation_layer_call_and_return_conditional_losses_39313l;�8
1�.
(�%
inputs���������  
p 
� "-�*
#� 
0���������  
� �
M__inference_random_translation_layer_call_and_return_conditional_losses_39429p�;�8
1�.
(�%
inputs���������  
p
� "-�*
#� 
0���������  
� �
2__inference_random_translation_layer_call_fn_39302_;�8
1�.
(�%
inputs���������  
p 
� " ����������  �
2__inference_random_translation_layer_call_fn_39309c�;�8
1�.
(�%
inputs���������  
p
� " ����������  �
F__inference_random_zoom_layer_call_and_return_conditional_losses_39195l;�8
1�.
(�%
inputs���������  
p 
� "-�*
#� 
0���������  
� �
F__inference_random_zoom_layer_call_and_return_conditional_losses_39297p�;�8
1�.
(�%
inputs���������  
p
� "-�*
#� 
0���������  
� �
+__inference_random_zoom_layer_call_fn_39184_;�8
1�.
(�%
inputs���������  
p 
� " ����������  �
+__inference_random_zoom_layer_call_fn_39191c�;�8
1�.
(�%
inputs���������  
p
� " ����������  �
D__inference_rescaling_layer_call_and_return_conditional_losses_39041h7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������  
� �
)__inference_rescaling_layer_call_fn_39033[7�4
-�*
(�%
inputs���������  
� " ����������  �
G__inference_sequential_1_layer_call_and_return_conditional_losses_38388|"#01KLSTI�F
?�<
2�/
sequential_input���������  
p 

 
� "%�"
�
0���������

� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_38422���"#01KLSTI�F
?�<
2�/
sequential_input���������  
p

 
� "%�"
�
0���������

� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_38515r"#01KLST?�<
5�2
(�%
inputs���������  
p 

 
� "%�"
�
0���������

� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_38773v��"#01KLST?�<
5�2
(�%
inputs���������  
p

 
� "%�"
�
0���������

� �
,__inference_sequential_1_layer_call_fn_38178o"#01KLSTI�F
?�<
2�/
sequential_input���������  
p 

 
� "����������
�
,__inference_sequential_1_layer_call_fn_38358s��"#01KLSTI�F
?�<
2�/
sequential_input���������  
p

 
� "����������
�
,__inference_sequential_1_layer_call_fn_38449e"#01KLST?�<
5�2
(�%
inputs���������  
p 

 
� "����������
�
,__inference_sequential_1_layer_call_fn_38474i��"#01KLST?�<
5�2
(�%
inputs���������  
p

 
� "����������
�
E__inference_sequential_layer_call_and_return_conditional_losses_38021{J�G
@�=
3�0
random_zoom_input���������  
p 

 
� "-�*
#� 
0���������  
� �
E__inference_sequential_layer_call_and_return_conditional_losses_38031���J�G
@�=
3�0
random_zoom_input���������  
p

 
� "-�*
#� 
0���������  
� �
E__inference_sequential_layer_call_and_return_conditional_losses_38814p?�<
5�2
(�%
inputs���������  
p 

 
� "-�*
#� 
0���������  
� �
E__inference_sequential_layer_call_and_return_conditional_losses_39028v��?�<
5�2
(�%
inputs���������  
p

 
� "-�*
#� 
0���������  
� �
*__inference_sequential_layer_call_fn_37738nJ�G
@�=
3�0
random_zoom_input���������  
p 

 
� " ����������  �
*__inference_sequential_layer_call_fn_38015t��J�G
@�=
3�0
random_zoom_input���������  
p

 
� " ����������  �
*__inference_sequential_layer_call_fn_38801c?�<
5�2
(�%
inputs���������  
p 

 
� " ����������  �
*__inference_sequential_layer_call_fn_38810i��?�<
5�2
(�%
inputs���������  
p

 
� " ����������  �
#__inference_signature_wrapper_38796�"#01KLSTU�R
� 
K�H
F
sequential_input2�/
sequential_input���������  "1�.
,
dense_1!�
dense_1���������
