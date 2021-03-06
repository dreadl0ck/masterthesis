?	?2?W@?2?W@!?2?W@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?2?W@7Ou??p??1???c>???A_}<?ݭ??I??>m@rEagerKernelExecute 0*	?G?z?R@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?]K?=??!??CWq?A@),??ypw??1szoP??=@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicet^c??ފ?!'<hg[?1@)t^c??ފ?1'<hg[?1@:Preprocessing2U
Iterator::Model::ParallelMapV2??@??ǈ?!UM?M0@)??@??ǈ?1UM?M0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??ܕ?!?X??<@)?????ڀ?1???;d-&@:Preprocessing2F
Iterator::Modeljj?Z_$??!{???:@)?:?f??1KBA?f$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?\?C????!a??x?_R@)/?r?]?t?1X???4 @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???9]s?!??`xQ@)???9]s?1??`xQ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap˹W?}??!đ??y?>@)[|
??Z?1fG?c#@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?58.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?#???S@Q?q??U5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	7Ou??p??7Ou??p??!7Ou??p??      ??!       "	???c>??????c>???!???c>???*      ??!       2	_}<?ݭ??_}<?ݭ??!_}<?ݭ??:	??>m@??>m@!??>m@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?#???S@y?q??U5@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??y??!??y??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulc?:j2S??!??(?e???"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul(?????!<j?/eƚ?"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul(?????!c?:j2S??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul(?????!??<2C??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul(?????!?T?23??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul(?????!2?4?1#??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul(?????!???٘???"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul(?????!^z????"E
)gradient_tape/sequential/dense_6/MatMul_1MatMul(?????! ??y??Q      Y@Y???L6@aϺ??lS@qz?:$ +@y???????"?
both?Your program is POTENTIALLY input-bound because 20.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?58.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?13.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 