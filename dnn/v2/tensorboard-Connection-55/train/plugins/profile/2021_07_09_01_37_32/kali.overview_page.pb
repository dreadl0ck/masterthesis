?	Qg?!?;@Qg?!?;@!Qg?!?;@	ha?Y??ha?Y??!ha?Y??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLQg?!?;@7?',????1???f? @A?C?r?c??I?\4d<?@Y???_#??rEagerKernelExecute 0*	??Q?m@2K
Iterator::Model::Map?w??#???!?Ϗ?eQ@)]P?2????13????O@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?A`??"??!?Mt???&@)I.?!????1???N]p"@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?gyܝ??!?!]??%"@)?gyܝ??1?!]??%"@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?s???׎?!??7?P?@)?s???׎?1??7?P?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate7?????!?41??,@)???W???1S?q??@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?}W?[??!2???A%=@)?~j?t?x?1!?=Ն?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorM?O?t?!$wz?H]@)M?O?t?1$wz?H]@:Preprocessing2F
Iterator::Model?o_???!4????Q@)??0?*h?1e?Q?I??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??q?&??!?!?6rZ.@)?7?0?`?1?h5U???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 13.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9ha?Y??IÓ?:?=Q@Q?5??q>@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	7?',????7?',????!7?',????      ??!       "	???f? @???f? @!???f? @*      ??!       2	?C?r?c???C?r?c??!?C?r?c??:	?\4d<?@?\4d<?@!?\4d<?@B      ??!       J	???_#?????_#??!???_#??R      ??!       Z	???_#?????_#??!???_#??b      ??!       JGPUYha?Y??b qÓ?:?=Q@y?5??q>@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???????!???????"&
	Greater_8Greater?JN??"z?!??	u???"!
Cast_52Cast??7خ x?!??P???"!
Cast_49Cast
?,. x?! ?????"!
Cast_51Cast
?,. x?!c?6??"??"-
LogicalAnd_12
LogicalAnd
?,. x?!?gɠ'??"-
LogicalAnd_13
LogicalAnd
?,. x?!t$.3???"-
LogicalAnd_15
LogicalAnd
?,. x?!??????"C
%gradient_tape/sequential/dense/MatMulMatMul
?,. x?!??????0"F
*gradient_tape/sequential/dense_35/MatMul_1MatMul
?,. x?!Wv?ی???Q      Y@Y??.?d|2@aH???`T@qT??->?@y???$???"?

both?Your program is POTENTIALLY input-bound because 13.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 