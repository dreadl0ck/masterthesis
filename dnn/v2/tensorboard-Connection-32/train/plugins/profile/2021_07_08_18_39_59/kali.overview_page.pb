?	???E?@???E?@!???E?@	???V?<?????V?<??!???V?<??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???E?@?p????1R??8???AUD? ??Ii??r?? @Y?:ǀ????rEagerKernelExecute 0*	?z?G)l@2K
Iterator::Model::Map????<,??!7B=?}Q@)'????9??1_SW??O@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeaty?&1???!??&?Z?(@)?????"??1??????$@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??BB??!?2???m"@)??BB??1?2???m"@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?ȓ?k&??!?*9YT@)?ȓ?k&??1?*9YT@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate`?5?!??!?ϑ??:)@) :̗`?1u??S3@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?|a2U??!w???Q<@)I?2??v?1~{????@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorL??1%r?!?O?0v??)L??1%r?1?O?0v??:Preprocessing2F
Iterator::Model??PN????!bD~???Q@)u????o?1??@?i???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?s?^???!j?????*@)?n??S]?1?O?l??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 25.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?51.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???V?<??I%N?SS@Q??d<?5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?p?????p????!?p????      ??!       "	R??8???R??8???!R??8???*      ??!       2	UD? ??UD? ??!UD? ??:	i??r?? @i??r?? @!i??r?? @B      ??!       J	?:ǀ?????:ǀ????!?:ǀ????R      ??!       Z	?:ǀ?????:ǀ????!?:ǀ????b      ??!       JGPUY???V?<??b q%N?SS@y??d<?5@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsY?j?G??!Y?j?G??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul??V?????!??_????"!
Cast_49Cast?,21?[??!cZ???k??"!
Cast_51CastR?|?[??!m?l?ZW??"!
Cast_52CastR?|?[??!<In?]!??"&
	Greater_8GreaterR?|?[??!A????"!
Cast_50Cast/\,???!1*fP1???"-
LogicalAnd_12
LogicalAnd??K?????!]?JpJ???"-
LogicalAnd_14
LogicalAnd??K?????!??/?c???"
Sum_17Sum1?)???!?T?B?,??Q      Y@Y??c.?A@a?,?h?0P@qDL+??!@y???a????"?

both?Your program is POTENTIALLY input-bound because 25.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?51.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 