?	??Za?.@??Za?.@!??Za?.@	_Ti??[@_Ti??[@!_Ti??[@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??Za?.@R?Q????1D1y? @A??e6??IT;?Ԗ?@Y?sD?K???rEagerKernelExecute 0*23333#w@)      0=2K
Iterator::Model::MapF%u???!+?GN??S@)?`TR'???1o??#?R@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat? ??????!?~?2?&@)???'??1?"?.*}@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??_vO??!"W?c?V@)??_vO??1"W?c?V@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?jH?c???!7Pt??%@)??0Bx???1MI???@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?Zd;??!?k??Bz@)?Zd;??1?k??Bz@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?x@ٔ??!?\?l?4@)?%??:?z?1??<>?"??:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorf?ʉvu?!?p}????)f?ʉvu?1?p}????:Preprocessing2F
Iterator::Model?? %???!?(???S@)oӟ?Hi?1?bB`Xs??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??u????!?槦1;&@)???B??b?1`e9???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 5.8% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?40.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t18.9 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9_Ti??[@Ir7?i??M@Q?Sv?_A@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	R?Q????R?Q????!R?Q????      ??!       "	D1y? @D1y? @!D1y? @*      ??!       2	??e6????e6??!??e6??:	T;?Ԗ?@T;?Ԗ?@!T;?Ԗ?@B      ??!       J	?sD?K????sD?K???!?sD?K???R      ??!       Z	?sD?K????sD?K???!?sD?K???b      ??!       JGPUY_Ti??[@b qr7?i??M@y?Sv?_A@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?E?????!?E?????"&
	Greater_8Greaterx74????!?&?#????"-
LogicalAnd_12
LogicalAnd5???9??!?Q|??}??"-
LogicalAnd_13
LogicalAnd5???9??!??+m??"!
Cast_49Cast.m?V????!0?肺d??"!
Cast_51Cast.m?V????!>#SL?c??"!
Cast_52Cast.m?V????!??1W??"-
LogicalAnd_14
LogicalAnd.m?V????!?~bb???"-
LogicalAnd_15
LogicalAnd.m?V????!0,?l?w??"!
Cast_50CastUf??}??!???p??Q      Y@Y'oe??8@a?9?&?R@q??_t?!@y???Jk??"?
both?Your program is MODERATELY input-bound because 5.8% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?40.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t18.9 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 