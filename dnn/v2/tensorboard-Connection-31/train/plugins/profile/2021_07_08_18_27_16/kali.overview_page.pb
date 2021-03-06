?	B?V?9?@B?V?9?@!B?V?9?@	??@??@!??@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLB?V?9?@&䃞ͪ??1?-???&??Az5@i?Q??I????@Y?J?*n??rEagerKernelExecute 0*	    `m@2K
Iterator::Model::Map&S????!br1??R@)?JY?8???1\AL? ?M@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?l??????!????F}/@)?l??????1????F}/@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?????ʘ?!?-z??$@)b???I??1???? @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??m??!?/|*Kq@)??m??1?/|*Kq@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatecb?qm???!?!c?]~$@)?X?O0~?18'?h?	@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip>??m??!??"?7@)?GĔH?w?1"c?]~?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/n??r?!x6?;???)/n??r?1x6?;???:Preprocessing2F
Iterator::ModelE?$]3???!_??H?S@)N^??i?1.????O??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???b('??!???u?%@)?c#??W?1?ˏt???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 23.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?51.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??@I?@ӗ??R@QAh??4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	&䃞ͪ??&䃞ͪ??!&䃞ͪ??      ??!       "	?-???&???-???&??!?-???&??*      ??!       2	z5@i?Q??z5@i?Q??!z5@i?Q??:	????@????@!????@B      ??!       J	?J?*n???J?*n??!?J?*n??R      ??!       Z	?J?*n???J?*n??!?J?*n??b      ??!       JGPUY??@b q?@ӗ??R@yAh??4@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??????!??????"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul???h]??!$?
cj??"!
Cast_51Cast??R	t??!n???-??"!
Cast_49Cast?]?????!ܹj?????"!
Cast_50Cast?]?????!͂???Y??"&
	Greater_8Greater?]?????!??i?r;??"!
Cast_52Cast??Z1ȋ?!zU?????"-
LogicalAnd_12
LogicalAnd??Z1ȋ?!H??x???"-
LogicalAnd_14
LogicalAnd??Z1ȋ?!????p??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul??Z1ȋ?!?[@-??Q      Y@Y??c.?A@a?,?h?0P@qwh??8@y?Ӣ?M???"?

both?Your program is POTENTIALLY input-bound because 23.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?51.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 