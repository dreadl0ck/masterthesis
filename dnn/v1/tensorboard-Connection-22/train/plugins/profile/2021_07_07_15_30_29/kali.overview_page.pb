?	R_?vj. @R_?vj. @!R_?vj. @	?y?N????y?N???!?y?N???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLR_?vj. @c??Ր???1???ڄ??A1??B?ʠ?I?w.??@Y?hr1ֹ?rEagerKernelExecute 0*	?(\???n@2K
Iterator::Model::Map?Zd;???!??????R@)m??J?R??1T???dP@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??x?@e??!?h_`?&@)??x?@e??1?h_`?&@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??A?f??!bQT? @)q8??9@??10?ƒ??@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?&p?n??!?5?%?@)?&p?n??1?5?%?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate)?*????!?????'@)?Y/?r???1??M@?|@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip???x??! U?[7@)?f??v?1?Sqat@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?i?WV?t?!)??/ET @)?i?WV?t?1)??/ET @:Preprocessing2F
Iterator::Model??d?,??!@?j?)S@)'??@jc?1?*?r????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapm????!????`)@)?x#??_?1R?(?1??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 14.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?67.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?y?N???IѡWlF?T@Q?0b??0@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	c??Ր???c??Ր???!c??Ր???      ??!       "	???ڄ?????ڄ??!???ڄ??*      ??!       2	1??B?ʠ?1??B?ʠ?!1??B?ʠ?:	?w.??@?w.??@!?w.??@B      ??!       J	?hr1ֹ??hr1ֹ?!?hr1ֹ?R      ??!       Z	?hr1ֹ??hr1ֹ?!?hr1ֹ?b      ??!       JGPUY?y?N???b qѡWlF?T@y?0b??0@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?E?j??!?E?j??"E
)gradient_tape/sequential/dense_9/MatMul_1MatMulX?w??!wd?u????"C
%gradient_tape/sequential/dense/MatMulMatMul?!?????!?lò???0"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?!?????!????A:??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?!?????!??O?w/??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?!?????!??4?$??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?!?????!S?=????"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?!?????!?e?8???"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?!?????!??'??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul?!?????!?iQ?????Q      Y@Y|?p? 7@a?`???7S@qi<??	3@y??|$???"?

both?Your program is POTENTIALLY input-bound because 14.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?67.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 