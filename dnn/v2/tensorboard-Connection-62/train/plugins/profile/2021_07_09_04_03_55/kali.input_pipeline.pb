	A׾?^@*@A׾?^@*@!A׾?^@*@	OJ???OJ???!OJ???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLA׾?^@*@?5?U????1??'Hl?@A?`??>???I?u????@Y??8+?&??rEagerKernelExecute 0*	?G?zVj@2K
Iterator::Model::Map('?UH???!??͜s?P@)Xs?`???1?t(?L@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??Pk?w??!Q2??c*@)???????1?$aYTj%@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?k?,	P??!?|.F0?!@)?k?,	P??1?|.F0?!@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice<?????!???o?!@)<?????1???o?!@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateڬ?\mŞ?!??Ry{?,@)=???m??1?T???@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip5S"??!=Iv]??@)W	?3?z?1?7d?r?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorf?ʉvu?!%6???@)f?ʉvu?1%6???@:Preprocessing2F
Iterator::Model??<I?f??!1?m??Q@)겘?|\k?1<?hA]??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap???{????!:??)?.@)??ZӼ?d?1??9?l]??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 10.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?59.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9NJ???IcQ@Q??r?}=@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?5?U?????5?U????!?5?U????      ??!       "	??'Hl?@??'Hl?@!??'Hl?@*      ??!       2	?`??>????`??>???!?`??>???:	?u????@?u????@!?u????@B      ??!       J	??8+?&????8+?&??!??8+?&??R      ??!       Z	??8+?&????8+?&??!??8+?&??b      ??!       JGPUYNJ???b qcQ@y??r?}=@