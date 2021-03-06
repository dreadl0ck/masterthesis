?	?2nj??@?2nj??@!?2nj??@	??ưG????ưG??!??ưG??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?2nj??@#1?0f??1?M?#E??AT5A?} ??I?/-??@Yd?3?%??rEagerKernelExecute 0*	??Q??`@2U
Iterator::Model::ParallelMapV2}?5^?I??!ҕ?b??D@)}?5^?I??1ҕ?b??D@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??????!D??I??3@)??&k?C??1????v?-@:Preprocessing2F
Iterator::Modelz???3K??!?? ?c?J@)??x?Z???1b??!?y(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice\ A?c̍?!?R?	?%@)\ A?c̍?1?R?	?%@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate-C??6??!??X?S3@)?e??a???1B޶-? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?$]3?f{?!W??3@)?$]3?f{?1W??3@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?Zd;??!Vj??G@){????z?1???տ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???ʦ??!???c?5@)?kC?8c?1l?ȭ????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??ưG??IEJm:?sT@Q?(?a?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	#1?0f??#1?0f??!#1?0f??      ??!       "	?M?#E???M?#E??!?M?#E??*      ??!       2	T5A?} ??T5A?} ??!T5A?} ??:	?/-??@?/-??@!?/-??@B      ??!       J	d?3?%??d?3?%??!d?3?%??R      ??!       Z	d?3?%??d?3?%??!d?3?%??b      ??!       JGPUY??ưG??b qEJm:?sT@y?(?a?1@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad?k?D???!?k?D???"C
%gradient_tape/sequential/dense/MatMulMatMulz??ك?!?o,Kn??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulz??ك?!$h>ی-??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul????ˀ?!???Ɓ`??"E
)gradient_tape/sequential/dense_8/MatMul_1MatMul????ˀ?!0???v???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMulL??i??~?!V???d??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?c??݉~?!JaYO???"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?c??݉~?!??.????"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?c??݉~?!??J?l??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?c??݉~?!????T??Q      Y@Y???L6@aϺ??lS@q?????@y??@???"?

both?Your program is POTENTIALLY input-bound because 17.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?63.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 