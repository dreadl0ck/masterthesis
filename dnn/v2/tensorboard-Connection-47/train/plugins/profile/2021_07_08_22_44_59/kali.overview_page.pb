?	?6?X@?6?X@!?6?X@	9.?¨??9.?¨??!9.?¨??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?6?X@ȔA?(??1`"ĕ???Am?OT6???I????@YG??ǁ??rEagerKernelExecute 0*	<
ףp?n@2K
Iterator::Model::Map??ht???!ܨ?5z?R@)1??*???1??x??~P@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2???:?f??!?/9?#@)???:?f??1?/9?#@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?a??4???!?u?n??#@)
??ϛ???1?5Xj @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceW?}W???!??Z_@)W?}W???1??Z_@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??0?*??!??v#?O#@)???	.V??1̤)?.@@:Preprocessing2F
Iterator::Model(?XQ?i??!yP??S@)??{w?1???Zcm@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorn?2d?q?!??i?2??)n?2d?q?1??i?2??:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipt$???~??!???j?5@)a???)q?1???W?m??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapk`??Ù?!D?{Eg?$@)?'?>?Y?1DM ?l??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no98.?¨??I3İ?wS@QQ??q?4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ȔA?(??ȔA?(??!ȔA?(??      ??!       "	`"ĕ???`"ĕ???!`"ĕ???*      ??!       2	m?OT6???m?OT6???!m?OT6???:	????@????@!????@B      ??!       J	G??ǁ??G??ǁ??!G??ǁ??R      ??!       Z	G??ǁ??G??ǁ??!G??ǁ??b      ??!       JGPUY8.?¨??b q3İ?wS@yQ??q?4@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??f?E??!??f?E??"!
Cast_52Cast??_eՊ?!?Q_?0}??"!
Cast_51Cast?[kp`???!\?l?|???"&
	Greater_8Greater?[kp`???!?(z?ȷ??"-
LogicalAnd_13
LogicalAnd?[kp`???!L???պ?"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?[kp`???!????`???"-
LogicalAnd_12
LogicalAnd??v{????!??,i??"-
LogicalAnd_14
LogicalAnd??v{????!>Y??'???"-
LogicalAnd_15
LogicalAnd??v{????!??p?#I??"!
Cast_49Cast?9????!????t???Q      Y@Yt?E]?=@a??.???Q@q<???K@yz?tx????"?

both?Your program is POTENTIALLY input-bound because 21.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?55.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 