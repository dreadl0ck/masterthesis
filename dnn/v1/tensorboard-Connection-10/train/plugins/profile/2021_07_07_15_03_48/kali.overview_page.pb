?	????c?@????c?@!????c?@	ū8?Z5@ū8?Z5@!ū8?Z5@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL????c?@0e??V??1?O?????AF??j????Ig???u	@Y}?X??L??rEagerKernelExecute 0*	G?z??s@2K
Iterator::Model::Map???m????!o?????S@)h??n??1]?PsVR@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatCV?zNz??!?@?Z??#@)??|?5^??1??N??m @:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2&?R?o*??!#A.?ޢ@)&?R?o*??1#A.?ޢ@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate=a??M??!?4????@)?Z?!???1??=@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceǺ?????!??(??@)Ǻ?????1??(??@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorƢ??dpt?!?Du?x??)Ƣ??dpt?1?Du?x??:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?r?]????!굋?3@)?ds?1+??c????:Preprocessing2F
Iterator::Model?H?}??!y??T@)r?&"?p?1m???H??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap	?c???!?<Vp?? @)[|
??Z?1?#?0;??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 5.6% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?53.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t18.1 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9ƫ8?Z5@I?1?b??Q@Q???{?6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	0e??V??0e??V??!0e??V??      ??!       "	?O??????O?????!?O?????*      ??!       2	F??j????F??j????!F??j????:	g???u	@g???u	@!g???u	@B      ??!       J	}?X??L??}?X??L??!}?X??L??R      ??!       Z	}?X??L??}?X??L??!}?X??L??b      ??!       JGPUYƫ8?Z5@b q?1?b??Q@y???{?6@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad%?Q?? ??!%?Q?? ??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul3??????!?8%?????"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulQ#S???!??PV??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMulQ#S???!*e?????"C
%gradient_tape/sequential/dense/MatMulMatMulF?!??!??zg???0"F
*gradient_tape/sequential/dense_11/MatMul_1MatMulF?!??!??/r֪?"F
*gradient_tape/sequential/dense_12/MatMul_1MatMulF?!??!?ti????"F
*gradient_tape/sequential/dense_13/MatMul_1MatMulF?!??!g\0?N??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMulF?!??![9??u@??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMulF?!??!OT?'F2??Q      Y@Y|?p? 7@a?`???7S@qzj6??@yR?>7+??"?
both?Your program is MODERATELY input-bound because 5.6% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t18.1 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 