?	?hq?0w@?hq?0w@!?hq?0w@	ɉ?r??ɉ?r??!ɉ?r??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?hq?0w@	m9?????1?j?vo??A?+I?????I"??T2`@Y?H?}8??rEagerKernelExecute 0*	effffo@2K
Iterator::Model::Map?c@?z???!v??:?R@)???P1???1?7??+O@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2????&???!??fU2*@)????&???1??fU2*@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??4?R??!??0o?#@)?t{Ic??1+??# @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??N?`???!?!??Y,@)??N?`???1?!??Y,@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???W???!?u?|ۘ#@)?5?;Nс?1???
@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip`?5?!??!?k}??6@)o??\??v?1?2???@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???"?s?!q<? \??)???"?s?1q<? \??:Preprocessing2F
Iterator::Model???|~??!9??WFS@)r?&"?p?1y0?v)???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?]K?=??!ո?0o%@)v?ꭁ?b?1?04;Ie??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?61.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9ʉ?r??I;>Y HfT@Q?jbNJ?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
		m9?????	m9?????!	m9?????      ??!       "	?j?vo???j?vo??!?j?vo??*      ??!       2	?+I??????+I?????!?+I?????:	"??T2`@"??T2`@!"??T2`@B      ??!       J	?H?}8???H?}8??!?H?}8??R      ??!       Z	?H?}8???H?}8??!?H?}8??b      ??!       JGPUYʉ?r??b q;>Y HfT@y?jbNJ?1@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?޴ί ??!?޴ί ??"!
Cast_25Cast?o?+???!:'B}?@??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?%(????!BU)???"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul???
?~?!???)р??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMuls-%~?!TL`??@??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMuls-%~?!???j??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMuls-%~?!?+????"F
*gradient_tape/sequential/dense_13/MatMul_1MatMuls-%~?!wW??c???"F
*gradient_tape/sequential/dense_14/MatMul_1MatMuls-%~?!???%Ġ??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMuls-%~?!Z.vր??Q      Y@Y|?p? 7@a?`???7S@q??qh3@yכ??!??"?

both?Your program is POTENTIALLY input-bound because 19.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?61.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 