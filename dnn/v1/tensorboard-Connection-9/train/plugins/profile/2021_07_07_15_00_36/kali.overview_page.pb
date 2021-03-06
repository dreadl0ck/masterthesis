?	?U???@?U???@!?U???@	8?ޚ?@8?ޚ?@!8?ޚ?@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?U???@?3????1?8GW??A-σ??v??I?{h?@Yl??3?I??rEagerKernelExecute 0*	 ??Q??w@2K
Iterator::Model::MaplC?8??!M?TT?T@)?a??h???1?:???TS@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??~?n??!?X?@)£?#????1}?S?GZ@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?d??!??;?s@)?d??1??;?s@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?&S???!l?V3?@)?&S???1l?V3?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate&p?n????!7q:P!@)?aod??1????@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipk?) ?3??!H?
`?0@)?j+???s?1??:M?T??:Preprocessing2F
Iterator::Model????V`??!nC?'??T@)?O?I?5s?1)H?4???:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor5?l?/r?!3?-????)5?l?/r?13?-????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??0Bx???!_J?"@)A??h:;Y?1b<?h????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?62.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no97?ޚ?@I????C?S@Q???|?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?3?????3????!?3????      ??!       "	?8GW???8GW??!?8GW??*      ??!       2	-σ??v??-σ??v??!-σ??v??:	?{h?@?{h?@!?{h?@B      ??!       J	l??3?I??l??3?I??!l??3?I??R      ??!       Z	l??3?I??l??3?I??!l??3?I??b      ??!       JGPUY7?ޚ?@b q????C?S@y???|?1@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulg,e\????!g,e\????"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul? ?????!h??!?[??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMulPDtz1??!|???W??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMulPDtz1??!H???0)??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMulPDtz1??!?h??&??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulPDtz1??!\?/N}$??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMulPDtz1??!?y~}#"??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulPDtz1??!8?f?䏰?"E
)gradient_tape/sequential/dense_7/MatMul_1MatMulPDtz1??!}???"E
)gradient_tape/sequential/dense_8/MatMul_1MatMulPDtz1??!?	?????Q      Y@Y|?p? 7@a?`???7S@q{???`?@y????>???"?

both?Your program is POTENTIALLY input-bound because 16.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?62.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 