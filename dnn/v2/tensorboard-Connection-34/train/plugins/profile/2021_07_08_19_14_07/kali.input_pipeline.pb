	,???0@,???0@!,???0@	/?%z_??/?%z_??!/?%z_??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL,???0@????7>??1?Rp??A?>W[????I>[@Y\<???r??rEagerKernelExecute 0*	??(\?ri@2K
Iterator::Model::Mapꕲq???!?=5???R@)?GĔH??1?8??Q@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat|DL?$z??!&XFq(@)ni5$?1?ޢ<??#@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?-???=??!q ?_?V@)?-???=??1q ?_?V@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicef1???6??!?ټ??d@)f1???6??1?ټ??d@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateҩ+??y??!+h?%6?@)|DL?$zy?1&XFq@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::ZipA?c?]K??!ҳ?\?N7@)??ZӼ?t?16???
@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor7l[?? s?!|??m?Y@)7l[?? s?1|??m?Y@:Preprocessing2F
Iterator::Model\U?]???!S?(M,S@)???P?c?19CE???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???ڧ???!1N	Z?)!@)#-??#?V?1??ar???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 29.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?49.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no90?%z_??I&?i?S@Q1D??؊3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????7>??????7>??!????7>??      ??!       "	?Rp???Rp??!?Rp??*      ??!       2	?>W[?????>W[????!?>W[????:	>[@>[@!>[@B      ??!       J	\<???r??\<???r??!\<???r??R      ??!       Z	\<???r??\<???r??!\<???r??b      ??!       JGPUY0?%z_??b q&?i?S@y1D??؊3@