	.py??1@.py??1@!.py??1@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC.py??1@?4F??j??1z??y?@A<?2T?T??Id=????(@rEagerKernelExecute 0*		ףp=k@2K
Iterator::Model::Map??a??4??!??x9RQ@)?(?'?$??1][??K?N@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??Pk?w??!F?=I?)@)Qf?L2r??1c??9->$@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???????!?婓T?@)???????1?婓T?@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2????#??!!f@x;?@)????#??1!f@x;?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?@H0???!W???(@)?x???1Ȏ??@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::ZipP?}:3??!????8=@)?&???Kz?1Kr??@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?*5{?x?!??Qp?@)?*5{?x?1??Qp?@:Preprocessing2F
Iterator::Model;?f????!????Q@)????Ŋj?1Ҡ?O????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??|?????!?.?*?*@)/n??b?1?S?,?@??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 7.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?70.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIF@<?݌S@Q?????5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?4F??j???4F??j??!?4F??j??      ??!       "	z??y?@z??y?@!z??y?@*      ??!       2	<?2T?T??<?2T?T??!<?2T?T??:	d=????(@d=????(@!d=????(@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qF@<?݌S@y?????5@