?	t34?(@t34?(@!t34?(@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCt34?(@??ޫV&??1?????5 @A????+??I?@?V@rEagerKernelExecute 0*	q=
ף?X@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatu<f?2???!?h.?)o=@)?~?T??1C?(??L8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??b('ڕ?!RV??q5@)??b('ڕ?1RV??q5@:Preprocessing2U
Iterator::Model::ParallelMapV2?`????!@?c?Ka2@)?`????1@?c?Ka2@:Preprocessing2F
Iterator::Modela???)??!*????@@)T:X??0??1?GM<(?.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateK?Բ???!?f??>#>@)e?X???1?????b!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor<?.9?t?!???g?@)<?.9?t?1???g?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip0??{????!?j?(?P@)#??t?1?b???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???d?F??!'?QP??@)??H?}]?1C7?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?41.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIz?e~7@P@Q4?A@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??ޫV&????ޫV&??!??ޫV&??      ??!       "	?????5 @?????5 @!?????5 @*      ??!       2	????+??????+??!????+??:	?@?V@?@?V@!?@?V@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qz?e~7@P@y4?A@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsD߈?EN??!D߈?EN??"&
	Greater_8Greater???????!&??ܠ???"-
LogicalAnd_15
LogicalAnd???1????!?s??5???"-
LogicalAnd_14
LogicalAndV???w??!Mɳ?* ??"-
LogicalAnd_13
LogicalAnd?)??0???!?bග??"!
Cast_51CastU??]???!Q??[????"!
Cast_52CastU??]???!???G?J??"-
LogicalAnd_12
LogicalAndU??]???!'?d3!	??"!
Cast_49Cast??Kl??!:屪???"!
Cast_50Cast?N ?`??!???U?B??Q      Y@Y?h???7@a{?e?@	S@q?37#@y?ֆ ???"?

both?Your program is POTENTIALLY input-bound because 22.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?41.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 