	?+d??@?+d??@!?+d??@	??^?.
@??^?.
@!??^?.
@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?+d??@?n?1P??1?;??????Ay?t????I????@Y?$??C??rEagerKernelExecute 0*	r=
ף?s@2K
Iterator::Model::Map(??y??!?e?֯oS@)?~?:p???1?lM???Q@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?c#????!?u????@)?c#????1?u????@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??|гY??!?/?B^@)??|гY??1?/?B^@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatB&9{??!?:?
"Z @)I??Q,???1??????@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???????!dmI???%@)eS??.??1? ?ǡ@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??{w?![ٽ??z??)??{w?1[ٽ??z??:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?} R?8??!TF??D5@){?G?zt?1?@K??:Preprocessing2F
Iterator::Model?c*????!k.=?ѮS@)?'?>?i?19adF????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??~?T???!?P???'@)?[[%X\?119~?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?62.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??^?.
@I??JɠS@Q 
72@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?n?1P???n?1P??!?n?1P??      ??!       "	?;???????;??????!?;??????*      ??!       2	y?t????y?t????!y?t????:	????@????@!????@B      ??!       J	?$??C???$??C??!?$??C??R      ??!       Z	?$??C???$??C??!?$??C??b      ??!       JGPUY??^?.
@b q??JɠS@y 
72@