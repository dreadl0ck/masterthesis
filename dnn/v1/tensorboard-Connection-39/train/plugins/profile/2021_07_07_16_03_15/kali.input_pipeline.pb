	z????@z????@!z????@	?2??[????2??[???!?2??[???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLz????@?Xni5???1(5
???A??C?l???I%vmo??@Y???a???rEagerKernelExecute 0*	??Q?>Z@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?t???a??!rޯ?4C<@)??A?f??1??????3@:Preprocessing2U
Iterator::Model::ParallelMapV2+5{???!Ex^??0@)+5{???1Ex^??0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???????!
$?jv?0@)???????1
$?jv?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?ĬC9??!?T4O?@@)???{????1]?g?/@:Preprocessing2F
Iterator::Model???x?&??!?6?,??@)??.Q?5??1??E?z(.@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??|y???!D??;? @)??|y???1D??;? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?mQf?L??!H2y˴Q@)A??h:;y?1??>u?x@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?m4??@??!??????@@)e?z?Fw`?1?4?wh???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?64.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?2??[???I??b>?ET@Q??'?J2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Xni5????Xni5???!?Xni5???      ??!       "	(5
???(5
???!(5
???*      ??!       2	??C?l?????C?l???!??C?l???:	%vmo??@%vmo??@!%vmo??@B      ??!       J	???a??????a???!???a???R      ??!       Z	???a??????a???!???a???b      ??!       JGPUY?2??[???b q??b>?ET@y??'?J2@