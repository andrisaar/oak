őż
á$˛$
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
Ą
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 

ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
)
Rank

input"T

output"	
Ttype
@
ReadVariableOp
resource
value"dtype"
dtypetype
7

Reciprocal
x"T
y"T"
Ttype:
2
	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
}
ResourceApplyGradientDescent
var

alpha"T

delta"T" 
Ttype:
2	"
use_lockingbool( 
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ż
@

tf_examplePlaceholder*
_output_shapes
:*
dtype0
U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 
j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB 
p
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBx
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 

ParseExample/ParseExampleV2ParseExampleV2
tf_example!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keysParseExample/Const*
Tdense
2*
_output_shapes
:*
dense_shapes	
:*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 
M
xIdentityParseExample/ParseExampleV2*
T0*
_output_shapes
:
n
PlaceholderPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

f
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"  
   
P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
zerosFillzeros/shape_as_tensorzeros/Const*
T0*
_output_shapes
:	


VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
shape:	
*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
A
Variable/AssignAssignVariableOpVariablezeros*
dtype0
f
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:	
*
dtype0
T
zeros_1Const*
_output_shapes
:
*
dtype0*
valueB
*    


Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
shape:
*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
G
Variable_1/AssignAssignVariableOp
Variable_1zeros_1*
dtype0
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:
*
dtype0
2
initNoOp^Variable/Assign^Variable_1/Assign
_
MatMul/ReadVariableOpReadVariableOpVariable*
_output_shapes
:	
*
dtype0
T
MatMulBatchMatMulV2xMatMul/ReadVariableOp*
T0*
_output_shapes
:
Y
add/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:
*
dtype0
K
addAddV2MatMuladd/ReadVariableOp*
T0*
_output_shapes
:
4
ySoftmaxadd*
T0*
_output_shapes
:
0
LogLogy*
T0*
_output_shapes
:
?
mulMulPlaceholderLog*
T0*
_output_shapes
:
2
RankRankmul*
T0*
_output_shapes
: 
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : 
M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
S
rangeRangerange/startRankrange/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
7
SumSummulrange*
T0*
_output_shapes
: 
0
NegNegSum*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
^
gradients/grad_ys_0/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
h
gradients/grad_ys_0Fillgradients/Shapegradients/grad_ys_0/Const*
T0*
_output_shapes
: 
S
gradients/Neg_grad/NegNeggradients/grad_ys_0*
T0*
_output_shapes
: 
T
gradients/Sum_grad/ShapeShapemul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 

gradients/Sum_grad/addAddV2rangegradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:

gradients/Sum_grad/range/startConst*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: *
dtype0*
value	B : 

gradients/Sum_grad/range/deltaConst*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
Ě
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/ones/ConstConst*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
ľ
gradients/Sum_grad/onesFillgradients/Sum_grad/Shape_1gradients/Sum_grad/ones/Const*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ú
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/ones*
N*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/DynamicStitch*
T0*
_output_shapes
:

gradients/Sum_grad/BroadcastToBroadcastTogradients/Sum_grad/Reshapegradients/Sum_grad/Shape*
T0*
_output_shapes
:
S
gradients/mul_grad/ShapeShapePlaceholder*
T0*
_output_shapes
:
V
gradients/mul_grad/Shape_1ShapeLog*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
e
gradients/mul_grad/MulMulgradients/Sum_grad/BroadcastToLog*
T0*
_output_shapes
:

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

o
gradients/mul_grad/Mul_1MulPlaceholdergradients/Sum_grad/BroadcastTo*
T0*
_output_shapes
:

gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
_output_shapes
:
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ú
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ń
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
_output_shapes
:

gradients/Log_grad/Reciprocal
Reciprocaly.^gradients/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:

gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*
_output_shapes
:
Y
gradients/y_grad/mulMulgradients/Log_grad/muly*
T0*
_output_shapes
:
q
&gradients/y_grad/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙

gradients/y_grad/SumSumgradients/y_grad/mul&gradients/y_grad/Sum/reduction_indices*
T0*
_output_shapes
:*
	keep_dims(
l
gradients/y_grad/subSubgradients/Log_grad/mulgradients/y_grad/Sum*
T0*
_output_shapes
:
Y
gradients/y_grad/mul_1Mulgradients/y_grad/suby*
T0*
_output_shapes
:
W
gradients/add_grad/ShapeShapeMatMul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
gradients/add_grad/Shape_1Shapeadd/ReadVariableOp*
T0*
_output_shapes
:
Ť
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/add_grad/SumSumgradients/y_grad/mul_1(gradients/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
z
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
_output_shapes
:

gradients/add_grad/Sum_1Sumgradients/y_grad/mul_1*gradients/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
_output_shapes
:

g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ë
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*
_output_shapes
:
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:

Ą
gradients/MatMul_grad/MatMulBatchMatMulV2+gradients/add_grad/tuple/control_dependencyMatMul/ReadVariableOp*
T0*
_output_shapes
:*
adj_y(

gradients/MatMul_grad/MatMul_1BatchMatMulV2x+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
:*
adj_x(
U
gradients/MatMul_grad/ShapeShapex*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
gradients/MatMul_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"  
   
s
)gradients/MatMul_grad/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
~
+gradients/MatMul_grad/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙
u
+gradients/MatMul_grad/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
˘
#gradients/MatMul_grad/strided_sliceStridedSlicegradients/MatMul_grad/Shape)gradients/MatMul_grad/strided_slice/stack+gradients/MatMul_grad/strided_slice/stack_1+gradients/MatMul_grad/strided_slice/stack_2*
Index0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask
u
+gradients/MatMul_grad/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

-gradients/MatMul_grad/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ţ˙˙˙˙˙˙˙˙
w
-gradients/MatMul_grad/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ą
%gradients/MatMul_grad/strided_slice_1StridedSlicegradients/MatMul_grad/Shape_1+gradients/MatMul_grad/strided_slice_1/stack-gradients/MatMul_grad/strided_slice_1/stack_1-gradients/MatMul_grad/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask
Ä
+gradients/MatMul_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/MatMul_grad/strided_slice%gradients/MatMul_grad/strided_slice_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/MatMul_grad/SumSumgradients/MatMul_grad/MatMul+gradients/MatMul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

gradients/MatMul_grad/ReshapeReshapegradients/MatMul_grad/Sumgradients/MatMul_grad/Shape*
T0*
_output_shapes
:

gradients/MatMul_grad/Sum_1Sumgradients/MatMul_grad/MatMul_1-gradients/MatMul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

gradients/MatMul_grad/Reshape_1Reshapegradients/MatMul_grad/Sum_1gradients/MatMul_grad/Shape_1*
T0*
_output_shapes
:	

p
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/Reshape ^gradients/MatMul_grad/Reshape_1
×
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/Reshape'^gradients/MatMul_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/MatMul_grad/Reshape*
_output_shapes
:
ä
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/Reshape_1'^gradients/MatMul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_grad/Reshape_1*
_output_shapes
:	

b
GradientDescent/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
Ý
<GradientDescent/update_Variable/ResourceApplyGradientDescentResourceApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable
ŕ
>GradientDescent/update_Variable_1/ResourceApplyGradientDescentResourceApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1

GradientDescentNoOp=^GradientDescent/update_Variable/ResourceApplyGradientDescent?^GradientDescent/update_Variable_1/ResourceApplyGradientDescent
J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :

D
TopKV2TopKV2yTopKV2/k*
T0*
_output_shapes

::
j
ConstConst*
_output_shapes
:
*
dtype0*1
value(B&
B0B1B2B3B4B5B6B7B8B9
V
index_to_string/SizeConst*
_output_shapes
: *
dtype0*
value	B :

]
index_to_string/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
]
index_to_string/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

index_to_string/rangeRangeindex_to_string/range/startindex_to_string/Sizeindex_to_string/range/delta*
_output_shapes
:

g
index_to_string/CastCastindex_to_string/range*

DstT0	*

SrcT0*
_output_shapes
:

Y
index_to_string/ConstConst*
_output_shapes
: *
dtype0*
valueB	 BUNK
§
index_to_string/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*@
shared_name1/hash_table_f42ca637-c079-42d1-8ccb-a02dc660b26a*
value_dtype0

.index_to_string/table_init/LookupTableImportV2LookupTableImportV2index_to_string/hash_tableindex_to_string/CastConst*	
Tin0	*

Tout0
H
CastCastTopKV2:1*

DstT0	*

SrcT0*
_output_shapes
:
˘
#hash_table_Lookup/LookupTableFindV2LookupTableFindV2index_to_string/hash_tableCastindex_to_string/Const*	
Tin0	*

Tout0*
_output_shapes
:
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
H
ArgMaxArgMaxyArgMax/dimension*
T0*
_output_shapes
:
T
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
a
ArgMax_1ArgMaxPlaceholderArgMax_1/dimension*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
C
EqualEqualArgMaxArgMax_1*
T0	*
_output_shapes
:
G
Cast_1CastEqual*

DstT0*

SrcT0
*
_output_shapes
:
7
Rank_1RankCast_1*
T0*
_output_shapes
: 
O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
[
range_1Rangerange_1/startRank_1range_1/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
>
MeanMeanCast_1range_1*
T0*
_output_shapes
: 
H
init_all_tablesNoOp/^index_to_string/table_init/LookupTableImportV2
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BBVariableB
Variable_1
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
Â
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOp"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BBVariableB
Variable_1
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
¤
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
Q
save/AssignVariableOpAssignVariableOpVariablesave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
U
save/AssignVariableOp_1AssignVariableOp
Variable_1save/Identity_2*
dtype0
L
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"*
saved_model_main_op

init_all_tables"G
table_initializer2
0
.index_to_string/table_init/LookupTableImportV2"
train_op

GradientDescent"ť
trainable_variablesŁ 
J

Variable:0Variable/AssignVariable/Read/ReadVariableOp:0(2zeros:08
R
Variable_1:0Variable_1/Assign Variable_1/Read/ReadVariableOp:0(2	zeros_1:08"ą
	variablesŁ 
J

Variable:0Variable/AssignVariable/Read/ReadVariableOp:0(2zeros:08
R
Variable_1:0Variable_1/Assign Variable_1/Read/ReadVariableOp:0(2	zeros_1:08*\
predict_imagesJ

images
x:0
scores
y:0tensorflow/serving/predict*§
serving_default

inputs
tf_example:08
classes-
%hash_table_Lookup/LookupTableFindV2:0
scores
TopKV2:0tensorflow/serving/classify