?	=??M?@=??M?@!=??M?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC=??M?@??}????1p???$???Ag??j+???IE)!XU?@rEagerKernelExecute 0*	??Q??e@2K
Iterator::Model::Map?,g~??!]y?ɦ?S@)I?2?喾?1&???Q@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2HĔH????!t??)ɝ#@)HĔH????1t??)ɝ#@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?D???J??!r???3@)?£?#??1??)ɝ?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?M(D?!??!@?=?r@)?M(D?!??1@?=?r@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3?f?ӓ?!?H?G&@)j???v???14w?QQ?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip	m9?⪢?!?w톴?4@)\???4o?1eӠ?TO@:Preprocessing2F
Iterator::Model?C??????!?D???S@)7T??7?`?1,
???:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorA??h:;Y?!?!?_"??)A??h:;Y?1?!?_"??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???Δ?!?{??3'@)iUMuO?1i???ʉ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIO8́S@Q?????7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??}??????}????!??}????      ??!       "	p???$???p???$???!p???$???*      ??!       2	g??j+???g??j+???!g??j+???:	E)!XU?@E)!XU?@!E)!XU?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qO8́S@y?????7@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMule????*??!e????*??"C
%gradient_tape/sequential/dense/MatMulMatMul斟 C6?!lb?=?b??0"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul斟 C6?!&Ht0??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul斟 C6?!?-=????"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul斟 C6?!͉2?????"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul斟 C6?!?|F/?̧?"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul斟 C6?!?oZ?[???"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul斟 C6?!dbn?#???"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul斟 C6?!?*?-v???"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul斟 C6?!$?_ڳ??Q      Y@Y|?p? 7@a?`???7S@q?WQ*?%@yx????B??"?

both?Your program is POTENTIALLY input-bound because 20.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 