	`??"?)@`??"?)@!`??"?)@	_jA?????_jA?????!_jA?????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL`??"?)@/4?i?%??1M,??z??A?K⬈???I???=H@Yu?8F?G??rEagerKernelExecute 0*	?????p@2K
Iterator::Model::Map ?o_???!V????S@)R?Q???1?,O9R@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?n??S??!??9C&@)M?O???1T!5-g@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?̯? ???!YmI??@)?̯? ???1YmI??@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?M(D?!??!4??sD?@)?M(D?!??14??sD?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor~oӟ?H??!+|???=
@)~oӟ?H??1+|???=
@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate&6׆???!#??ga?@)?<,Ԛ?}?1??[~?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?zNz????!?̉3by4@)?????gv?1?WF??@:Preprocessing2F
Iterator::Model7???0??!Ɍs??S@)?E|'f?h?1Μ8#????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?3????!%?~cx?@)??9̗W?1?ݷ???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?61.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9^jA?????I??-???S@Q?Go???4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	/4?i?%??/4?i?%??!/4?i?%??      ??!       "	M,??z??M,??z??!M,??z??*      ??!       2	?K⬈????K⬈???!?K⬈???:	???=H@???=H@!???=H@B      ??!       J	u?8F?G??u?8F?G??!u?8F?G??R      ??!       Z	u?8F?G??u?8F?G??!u?8F?G??b      ??!       JGPUY^jA?????b q??-???S@y?Go???4@