	???;?R@???;?R@!???;?R@	??LQ?????LQ???!??LQ???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???;?R@?n???>??1K??^b???A,g*??I??L?*?@Y(??????rEagerKernelExecute 0*	z?G??e@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??????!??????H@)??? %??18,????F@:Preprocessing2U
Iterator::Model::ParallelMapV2??h㈵??!w{?L[?+@)??h㈵??1w{?L[?+@:Preprocessing2F
Iterator::Model?c]?F??!4B??;@)??Q?Q??1%?E*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicee?X???!?z9??#@)e?X???1?z9??#@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?T???B??!;?N??R2@)? ?X4???1?!d?? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorŏ1w-!?!?e?h??@)ŏ1w-!?1?e?h??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??s?//??!3{??_<R@)h??n?|?1??D??P@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap ?M?????!}B/@y3@)8?*5{?U?1I?|H^??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?65.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??LQ???I?D.??UT@Q߆732@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?n???>???n???>??!?n???>??      ??!       "	K??^b???K??^b???!K??^b???*      ??!       2	,g*??,g*??!,g*??:	??L?*?@??L?*?@!??L?*?@B      ??!       J	(??????(??????!(??????R      ??!       Z	(??????(??????!(??????b      ??!       JGPUY??LQ???b q?D.??UT@y߆732@