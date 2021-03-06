?	B\9{g?@B\9{g?@!B\9{g?@	????????????!??????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLB\9{g?@???|????1q??H/???A|҉S͜?I_(`;?	@Y?/fKVE??rEagerKernelExecute 0*	?p=
ףm@2K
Iterator::Model::Map?Y?wg??!?/>\?Q@)??q????1??uP@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat"?uq??!;?;q*@)>???d???1?I????%@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?ui????!??r~@)?ui????1??r~@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Y??Bs??! Ԓ??A@)?Y??Bs??1 Ԓ??A@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateS\U?]??!??<}'@)?^??x???1??????@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??m????!Y9R??5<@)Zd;?O?w?1d??Cf@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??+H3v?!??;?=I@)??+H3v?1??;?=I@:Preprocessing2F
Iterator::Model|'f????!?qk??Q@)cb?qm?h?1?$??uO??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???E???!V{c )@)?kC?8c?1?@?y3??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??????I?)>Б?R@Q<?f?h?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???|???????|????!???|????      ??!       "	q??H/???q??H/???!q??H/???*      ??!       2	|҉S͜?|҉S͜?!|҉S͜?:	_(`;?	@_(`;?	@!_(`;?	@B      ??!       J	?/fKVE???/fKVE??!?/fKVE??R      ??!       Z	?/fKVE???/fKVE??!?/fKVE??b      ??!       JGPUY??????b q?)>Б?R@y<?f?h?7@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad Wn?*ˋ?! Wn?*ˋ?"C
%gradient_tape/sequential/dense/MatMulMatMulV?I?q???!+??N)??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulV?I?q???!k] |?6??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?\7#??~?!?Hg????"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??z~??~?!1?6????"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul??z~??~?!c?@C˫?"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul??z~??~?!?B??z???"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul??z~??~?!?J?O????"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??z~??~?!|??'????"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul??z~??~?!??????Q      Y@Y|?p? 7@a?`???7S@q#????@y???
\ ??"?

both?Your program is POTENTIALLY input-bound because 18.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 