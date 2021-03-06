?	???t@???t@!???t@	??.b??????.b????!??.b????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???t@?<,Ԛ&??1P?}:???A]m???{??I??_????Y?? dˢ?rEagerKernelExecute 0*	)\???`q@2K
Iterator::Model::Map?䠄???!XE?1?R@)#??~j???1[????_Q@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???J???!Lq?qW!@)???J???1Lq?qW!@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?>tA}˜?!?H9W?9$@)R?????1ec?դ @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV26Y??э?!??T^??@)6Y??э?1??T^??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?q??????!??Zw?p&@)??bg
}?1ZJ?wf@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip0??{????!m{?9w?7@)M?O?t?1B XR???:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor1%??et?!D?ۧ??)1%??et?1D?ۧ??:Preprocessing2F
Iterator::Modeli:;%??!%!?1"S@)P6?
?rq?1*?v?????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapv7Ou?͠?!-?:>?'@)????ŊZ?1????????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 26.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?46.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??.b????I?X?XuR@Q???/?39@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?<,Ԛ&???<,Ԛ&??!?<,Ԛ&??      ??!       "	P?}:???P?}:???!P?}:???*      ??!       2	]m???{??]m???{??!]m???{??:	??_??????_????!??_????B      ??!       J	?? dˢ??? dˢ?!?? dˢ?R      ??!       Z	?? dˢ??? dˢ?!?? dˢ?b      ??!       JGPUY??.b????b q?X?XuR@y???/?39@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits*?@x=???!*?@x=???"&
	Greater_8Greater?Fsbގ?!j?n??׳?"!
Cast_49Cast???6????!??I?m??"!
Cast_50Cast???6????!??$?E??"!
Cast_52Cast???6????!???x???"!
Cast_51Cast.#?&?u??!4??????"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul.#?&?u??!gY3s???"-
LogicalAnd_12
LogicalAnd?<>*u??!0??A??"-
LogicalAnd_14
LogicalAnd?<>*u??!???t???"
Sum_15Sum???߻@??!q"?2$m??Q      Y@Y:?g *?@@a?&??j?P@q?|_@yk/???9??"?

both?Your program is POTENTIALLY input-bound because 26.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?46.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 