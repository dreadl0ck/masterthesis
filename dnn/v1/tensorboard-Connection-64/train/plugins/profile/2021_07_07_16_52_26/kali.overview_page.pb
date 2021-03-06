?	w??@w??@!w??@	???t???????t????!???t????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLw??@?{,G???1??]?C??A7???????IGW??:{	@Y:?`???t?rEagerKernelExecute 0*	fffff?j@2K
Iterator::Model::Map*???P??!?Ĥ)z?R@)(D?!T???1????7P@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?//?>:??! X?~#@)?//?>:??1 X?~#@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?4?8EG??!??؈?? @)?4?8EG??1??؈?? @:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat????h??!KD?c#@)???????1???S8 @:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate$0??{??!??ߑ|{&@)5)?^?x?1q$??@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip5?l?/??!H6?!??7@)n??t?1fP\?n@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorK?8???l?!L???z??)K?8???l?1L???z??:Preprocessing2F
Iterator::Model?̒ 5???!n2???S@)ض(?A&i?1?a?{???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?
F%u??!+9K?&?'@)(?XQ?iX?1F????j??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 23.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???t????I%Q??53S@Q?1???7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?{,G????{,G???!?{,G???      ??!       "	??]?C????]?C??!??]?C??*      ??!       2	7???????7???????!7???????:	GW??:{	@GW??:{	@!GW??:{	@B      ??!       J	:?`???t?:?`???t?!:?`???t?R      ??!       Z	:?`???t?:?`???t?!:?`???t?b      ??!       JGPUY???t????b q%Q??53S@y?1???7@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad3j?@#???!3j?@#???"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulf^P?tu??!Ld?????"C
%gradient_tape/sequential/dense/MatMulMatMul?@?5?Ѐ?!`?t?2??0"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul??Ɂ??~?!p?????"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul v$?ђ~?!0Kr?bר?"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul v$?ђ~?!??6.????"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul v$?ђ~?!X?}?>??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul v$?ђ~?!????8'??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul v$?ђ~?!CB?e??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul v$?ђ~?!x??????Q      Y@Y|?p? 7@a?`???7S@qtw??_@y0|L?????"?

both?Your program is POTENTIALLY input-bound because 23.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?52.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 