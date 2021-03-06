?	Z.??C@Z.??C@!Z.??C@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCZ.??C@R~R?S??1???wo??AY2?????I??(???@rEagerKernelExecute 0*	?(\???Z@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceܝ??.4??!??~:5@)ܝ??.4??1??~:5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??	??ϛ?!l?{Mz/9@)
pUj??1k?cmpL4@:Preprocessing2F
Iterator::Model????y???!Pg???A@)??#?????1?&?פ?2@:Preprocessing2U
Iterator::Model::ParallelMapV2??7??̒?!??3?t1@)??7??̒?1??3?t1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?6qr?C??!r?%n?D?@)؞Y????1 O?	?$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?|\*Ʊ?!X??yP@)?A?L??z?1ڑ@;h@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?f???u?!<a?'?@)?f???u?1<a?'?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?????E??!????3?@@)??V?c#`?1???~:??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??	FO?R@Q?????.9@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	R~R?S??R~R?S??!R~R?S??      ??!       "	???wo?????wo??!???wo??*      ??!       2	Y2?????Y2?????!Y2?????:	??(???@??(???@!??(???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??	FO?R@y?????.9@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??k??!??k??"!
Cast_49Cast?B5Viۂ?!XV??E???"&
	Greater_8Greater?B5Viۂ?!?.P v??"-
LogicalAnd_13
LogicalAnd?B5Viۂ?!???R}???"!
Cast_51Cast??Loh??!??s<?ó?"-
LogicalAnd_14
LogicalAnd??Loh??!ju	&????"!
Cast_52CastQ?vh??!48?t???"-
LogicalAnd_15
LogicalAndQ?vh??!???ÝJ??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulQ?vh??!Ƚ??w??"!
Cast_50Cast??m/w??!???7v??Q      Y@Y?h???7@a{?e?@	S@qU?????@y߂?ٜ2??"?

both?Your program is POTENTIALLY input-bound because 20.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 