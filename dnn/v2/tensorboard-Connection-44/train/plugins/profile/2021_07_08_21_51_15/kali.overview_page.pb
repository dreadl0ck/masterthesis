?	GF@GF@!GF@	 ?C??@ ?C??@! ?C??@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLGF@?~?7???1Ț?A????A??9d???I'?_[?? @Y1?0&???rEagerKernelExecute 0*	???(\?l@2K
Iterator::Model::MapӼ????!5????\R@)EGr????1?޿?P@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat='?o|???!??Jm_?%@)#??~j???1???*,z!@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceGɫsȎ?!W8??@)GɫsȎ?1W8??@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?X?? ??!S???I@)?X?? ??1S???I@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???????!-U?L(?&@)ܝ??.4??1r???@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorj0?G?t?!?*?	̀@)j0?G?t?1?*?	̀@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?u??ݰ??!?Q+Z9@)???9]s?1r?׼r @:Preprocessing2F
Iterator::Model?? ?=??!?+9ui?R@)wJ??l?1?S?6q??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??G????!??9?,(@)F%u?[?1Z+??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 25.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?45.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?C??@I??z?Q@Q?4!q9@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?~?7????~?7???!?~?7???      ??!       "	Ț?A????Ț?A????!Ț?A????*      ??!       2	??9d?????9d???!??9d???:	'?_[?? @'?_[?? @!'?_[?? @B      ??!       J	1?0&???1?0&???!1?0&???R      ??!       Z	1?0&???1?0&???!1?0&???b      ??!       JGPUY?C??@b q??z?Q@y?4!q9@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits{??WY;??!{??WY;??"V
5gradient_tape/sequential/dense_10/BiasAdd/BiasAddGradBiasAddGradx??m?b??!?q]G^v??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMulԊV?Uى?!?B(????"!
Cast_51Cast?)c= ??!-???????"!
Cast_52Cast?)c= ??!d?Y????"&
	Greater_8Greater?)c= ??!M?'????"-
LogicalAnd_13
LogicalAnd?)c= ??!??X??X??"!
Cast_50CastEu` ?'??!<?^?M???"-
LogicalAnd_12
LogicalAndEu` ?'??!??d=???"-
LogicalAnd_14
LogicalAndEu` ?'??!?k?@???Q      Y@Yt?E]?=@a??.???Q@q????@y^C(R????"?

both?Your program is POTENTIALLY input-bound because 25.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?45.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 