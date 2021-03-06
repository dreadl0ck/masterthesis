?	??zt@??zt@!??zt@	?d??J?@?d??J?@!?d??J?@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??zt@B??=P??11DN_????A?W?\T??Ib???@Y??;jL???rEagerKernelExecute 0*	G?z?g^@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?R??%???!??
ç/<@)?[[%X??1?"F?h?6@:Preprocessing2U
Iterator::Model::ParallelMapV2?x?@e???!{????x6@)?x?@e???1{????x6@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??BB??!????1@)??BB??1????1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?1w-!??!Iq?l)(@@)@ޫV&???1???5}.@:Preprocessing2F
Iterator::Model<Nё\???!e[Ű?@@)G?ŧ ??1??)??E#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?v??N#??!MR?'?P@)???S??{?1}xR?F3@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorF%u?{?!h??@)F%u?{?1h??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapM???D??!;???A@)???מYb?1:??x??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?46.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?d??J?@I?r??Q@Q?h@X?;@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B??=P??B??=P??!B??=P??      ??!       "	1DN_????1DN_????!1DN_????*      ??!       2	?W?\T???W?\T??!?W?\T??:	b???@b???@!b???@B      ??!       J	??;jL?????;jL???!??;jL???R      ??!       Z	??;jL?????;jL???!??;jL???b      ??!       JGPUY?d??J?@b q?r??Q@y?h@X?;@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsAb?b⯤?!Ab?b⯤?"!
Cast_51CastU(HK????!Vl?u?R??"&
	Greater_8GreaterU(HK????!kvR?????"!
Cast_49Cast?8???!S??????"!
Cast_50Cast?8???!p	?˜B??"!
Cast_52Cast?8???!?pstf??"-
LogicalAnd_12
LogicalAnd?8???!??6SK???"-
LogicalAnd_13
LogicalAnd?8???!?>??"???"-
LogicalAnd_14
LogicalAnd?8???!襽??ѻ?"-
LogicalAnd_15
LogicalAnd?8???!?????Q      Y@Y?h???7@a{?e?@	S@q?یr @y??
????"?

both?Your program is POTENTIALLY input-bound because 21.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?46.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 