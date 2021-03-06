?	??????@??????@!??????@	????+@????+@!????+@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??????@辜?n??1??4`?t??A}"O????IIڍ>?c	@Y??@????rEagerKernelExecute 0*		ףp=?n@2K
Iterator::Model::Mapr??????!,?v??oQ@)?׻????1??7{,QO@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?X?? ??!R?m?'@)?X?? ??1R?m?'@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat`???Y??!wB????'@)R???Q??14#???*#@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2vöE???!*M?m?t@)vöE???1*M?m?t@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip5???#b??!*7?z?<@)??.??x?1\???f@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor9??? x?!	}Dk?@)9??? x?1	}Dk?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???K7???!?{??+@)??ׁsFt?1?q.l???:Preprocessing2F
Iterator::ModelHm??~???!5rX!~?Q@)??? ?i?1\Bl8?f??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???B????!??m?.-@)?VC?K_?1뷶l????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?51.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????+@Ijd??1R@QY??i??7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	辜?n??辜?n??!辜?n??      ??!       "	??4`?t????4`?t??!??4`?t??*      ??!       2	}"O????}"O????!}"O????:	Iڍ>?c	@Iڍ>?c	@!Iڍ>?c	@B      ??!       J	??@??????@????!??@????R      ??!       Z	??@??????@????!??@????b      ??!       JGPUY????+@b qjd??1R@yY??i??7@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?4?"?ĥ?!?4?"?ĥ?"!
Cast_49Cast?????݂?!eU?|??"!
Cast_52Cast?????݂?!#vum?3??"&
	Greater_8Greater?????݂?!p?k?x???"-
LogicalAnd_13
LogicalAnd?????݂?!???-Q??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?????݂?!.??.㬶?"!
Cast_51Cast*?N'j??!rq?(ڸ?"-
LogicalAnd_12
LogicalAnd*?N'j??!???m??"-
LogicalAnd_14
LogicalAnd*?N'j??!?{i??4??"-
LogicalAnd_15
LogicalAnd*?N'j??!>H??a??Q      Y@Y'oe??8@a?9?&?R@q??l?,@y?V>??#??"?

both?Your program is POTENTIALLY input-bound because 20.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?51.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 