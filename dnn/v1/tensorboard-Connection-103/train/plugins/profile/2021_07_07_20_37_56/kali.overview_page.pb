?	ު?PM?@ު?PM?@!ު?PM?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCު?PM?@WC?K???1ȵ?b????AqVDM????I??z?2?@rEagerKernelExecute 0*	Q???!S@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatA?} R???!?}?nBf?@)???%ǝ??1??=a?7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceK<?l???!??6?13@)K<?l???1??6?13@:Preprocessing2U
Iterator::Model::ParallelMapV2 ^?/???!o??P?B1@) ^?/???1o??P?B1@:Preprocessing2F
Iterator::Model??????!?????@@)$EdX???1????0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateb??h㈕?!S?!B?z;@)??????y?1?`X?? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorg??j+?w?!?BJĄ?@)g??j+?w?1?BJĄ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip1|DL?$??!y???P@)]?????q?1=????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapI?f??6??!?O)?S?=@)t^c???Z?1)$;8?$@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIƩ??qFR@Q?XA?9?:@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	WC?K???WC?K???!WC?K???      ??!       "	ȵ?b????ȵ?b????!ȵ?b????*      ??!       2	qVDM????qVDM????!qVDM????:	??z?2?@??z?2?@!??z?2?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qƩ??qFR@y?XA?9?:@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?w????!?w????"!
Cast_52Cast@J?xSy??!fJ??b???"&
	Greater_8Greater@J?xSy??!?6̷2??"-
LogicalAnd_13
LogicalAnd@J?xSy??!?w8U?h??"!
Cast_49Cast?0? ???!ޝSY7???"!
Cast_51Cast?0? ???!??n]諵?"-
LogicalAnd_14
LogicalAnd?0? ???!??a?ͷ?"-
LogicalAnd_15
LogicalAnd?0? ???!/?eJ???"C
%gradient_tape/sequential/dense/MatMulMatMul?0? ???!J6?i???0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?0? ???!e\?m?2??Q      Y@Y?h???7@a{?e?@	S@q?ħ??&@y??@I4??"?
both?Your program is POTENTIALLY input-bound because 19.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?11.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 