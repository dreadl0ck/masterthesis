?	?+??f?@?+??f?@!?+??f?@	?lmo??@?lmo??@!?lmo??@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?+??f?@??$??1????=m??A????9]??Ik'JB"?	@Y?}ƅ!??rEagerKernelExecute 0*	??Q?Vl@2K
Iterator::Model::Mapy?Z??K??!?׹??XR@)?HP???1????sP@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatض(?A&??!??6??%@)'"????1??yBo?!@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2HĔH????!??ϊ?O@)HĔH????1??ϊ?O@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?8
??!?`?Yծ@)?8
??1?`?Yծ@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate ????m??!??????&@)??Hh˹??1?A&??@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipuv28J^??!???OM9@)??BBu?1??\?kP@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorƊL??q?!b?U?g???)ƊL??q?1b?U?g???:Preprocessing2F
Iterator::Model????B???!?????R@)??ϛ?Th?1(?nY????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapٔ+??E??!v?gqk[(@)??H?}]?1??+h??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?lmo??@I?{s=?UR@QxcD??l8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??$????$??!??$??      ??!       "	????=m??????=m??!????=m??*      ??!       2	????9]??????9]??!????9]??:	k'JB"?	@k'JB"?	@!k'JB"?	@B      ??!       J	?}ƅ!???}ƅ!??!?}ƅ!??R      ??!       Z	?}ƅ!???}ƅ!??!?}ƅ!??b      ??!       JGPUY?lmo??@b q?{s=?UR@yxcD??l8@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits4??????!4??????"&
	Greater_8Greater˟!?N??!'??Z^???"!
Cast_52CastQP??ۂ?!;??Pv??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulQP??ۂ?!(??"!
Cast_49Cast<K1jۂ?!?>5???"-
LogicalAnd_13
LogicalAnd<K1jۂ?!?_{{M??"-
LogicalAnd_15
LogicalAnd???ph??!p5~?z??"!
Cast_51Cast???@h??!F?S拧??"-
LogicalAnd_14
LogicalAnd???@h??!rN?Լ?"!
Cast_50Cast?D??x??!`??%Ӿ?Q      Y@Y'oe??8@a?9?&?R@q???5?9@y? ???!??"?

both?Your program is POTENTIALLY input-bound because 18.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 