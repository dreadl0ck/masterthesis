?	!ɬ???@!ɬ???@!!ɬ???@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC!ɬ???@ݵ?|г??1?Ye??>??AWv???;??I@?0`?%@rEagerKernelExecute 0*	?z?G?m@2K
Iterator::Model::Map?Ǻ????!S?/-W?R@)???dp???1?x?P@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?E???Ԙ?!j?=?u$@)M?J???1녆I?~ @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?r?]????!?G?R[@)?r?]????1?G?R[@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?aod??!w????
@)?aod??1w????
@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?CV???!?bX?^&@)
ףp=
??18޼r??@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??0_^???!6_???N8@)?????w?1_Z?*?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorU???N@s?!??w????)U???N@s?1??w????:Preprocessing2F
Iterator::Model??<???!2hΉG?R@)?	.V?`j?1?7?'???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??x?@e??!k????e'@)t^c???Z?1:4??#??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?66.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?}??T@Q??:?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ݵ?|г??ݵ?|г??!ݵ?|г??      ??!       "	?Ye??>???Ye??>??!?Ye??>??*      ??!       2	Wv???;??Wv???;??!Wv???;??:	@?0`?%@@?0`?%@!@?0`?%@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?}??T@y??:?1@?"C
%gradient_tape/sequential/dense/MatMulMatMulFˇ?De??!Fˇ?De??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulFˇ?De??!Fˇ?De??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?M?L??~?!?^????"F
*gradient_tape/sequential/dense_10/MatMul_1MatMult??Ǩ~?!
??k?ܠ?"F
*gradient_tape/sequential/dense_11/MatMul_1MatMult??Ǩ~?!?n~N???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMult??Ǩ~?!f1???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMult??Ǩ~?!??7\??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMult??Ǩ~?!??????"F
*gradient_tape/sequential/dense_15/MatMul_1MatMult??Ǩ~?!?vbl4??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMult??Ǩ~?!?F??????Q      Y@Y|?p? 7@a?`???7S@q?W?kC: @y&?????"?

both?Your program is POTENTIALLY input-bound because 15.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?66.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 