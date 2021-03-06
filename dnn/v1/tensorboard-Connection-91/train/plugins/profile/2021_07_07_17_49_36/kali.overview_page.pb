?	?????@?????@!?????@	^K???@^K???@!^K???@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?????@?f????1u?(%???A?g?RD???I?????@Y?DIH?m??rEagerKernelExecute 0*	???(\u@2K
Iterator::Model::Map????y??!?Rc?? S@)dX??G??1??֐??Q@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat2????#??!n?"đ"@)?HP???1??	@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??<?;k??!?
P,`0@)??<?;k??1?
P,`0@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?????^??!? ?h??@)?????^??1? ?h??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??&S??!?C6~6&@)W!?'?>??1?|??@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??.??x?!~D??u???)??.??x?1~D??u???:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip???<?;??!???O]T6@)?+e?Xw?1TnN??:Preprocessing2F
Iterator::Model???v????!??jS@)?q????o?1}T0(ɋ??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap????m???!?????1'@)O;?5Y?^?1???;???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 6.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?46.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t19.0 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9]K???@I?3?z?P@Q[j8?^;@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?f?????f????!?f????      ??!       "	u?(%???u?(%???!u?(%???*      ??!       2	?g?RD????g?RD???!?g?RD???:	?????@?????@!?????@B      ??!       J	?DIH?m???DIH?m??!?DIH?m??R      ??!       Z	?DIH?m???DIH?m??!?DIH?m??b      ??!       JGPUY]K???@b q?3?z?P@y[j8?^;@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?|h??!?|h??"C
%gradient_tape/sequential/dense/MatMulMatMulr??OD??!|H?`(֒?0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?x???d?!?&g?c???"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?x???d?!r??OD??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?x???d?!?q?l?0??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?x???d?!?`?+???"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?x???d?!?O?(
??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?x???d?!m?Tc{??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?x???d?!??4?q??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul?x???d?!?|h??Q      Y@Y|?p? 7@a?`???7S@q ?xd!@y??????"?
both?Your program is MODERATELY input-bound because 6.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?46.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t19.0 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 