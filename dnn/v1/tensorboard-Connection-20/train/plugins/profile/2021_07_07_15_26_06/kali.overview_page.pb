?	ѕT??@ѕT??@!ѕT??@	????? ??????? ??!????? ??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLѕT??@?Q???1?Y?rL???A?0??????Iߌ???O
@Y*?Z^?޶?rEagerKernelExecute 0*	???Q?r@2K
Iterator::Model::Map???~????!C??sR@)??d??1_?kP@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?>???!6v?
~Y%@)?%jjٚ?1???^?\!@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?}ƅ!??!޽@?%@ @)?}ƅ!??1޽@?%@ @:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceE?
)????!??j/O@)E?
)????1??j/O@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?5^?I??!?ж`?W'@)t^c??ފ?1???VW`@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?2???V??!]?y?9@)_??x?Zy?1*8??qe @:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorcb?qm?x?!ݪu_U???)cb?qm?x?1ݪu_U???:Preprocessing2F
Iterator::Model?Z??K???!?J?!B?R@)?=\r?)m?1XcL????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap㈵? ??!zf?~?(@)~t??gy^?1mY?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????? ??I4v?$??R@Qa
K?з7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Q????Q???!?Q???      ??!       "	?Y?rL????Y?rL???!?Y?rL???*      ??!       2	?0???????0??????!?0??????:	ߌ???O
@ߌ???O
@!ߌ???O
@B      ??!       J	*?Z^?޶?*?Z^?޶?!*?Z^?޶?R      ??!       Z	*?Z^?޶?*?Z^?޶?!*?Z^?޶?b      ??!       JGPUY????? ??b q4v?$??R@ya
K?з7@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?7?Q??!?7?Q??"C
%gradient_tape/sequential/dense/MatMulMatMul	C{ة}?!???_???0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul	C{ة}?!????g??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul	C{ة}?!(_?>?#??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul	C{ة}?!??zO??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul	C{ة}?!?/???"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul	C{ة}?!K? ?????"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul	C{ة}?!? 0+o???"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul	C{ة}?!??3???"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul	C{ة}?!?h??????Q      Y@Y|?p? 7@a?`???7S@q>G?D=m@y؎?:υ??"?

both?Your program is POTENTIALLY input-bound because 16.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?57.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 