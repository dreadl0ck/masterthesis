	??E?)@??E?)@!??E?)@	??U
??????U
????!??U
????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??E?)@?x#????1???\?? @Az??L?D??I??P???@Y??K????rEagerKernelExecute 0*	=
ףp?q@2K
Iterator::Model::MapV-?????!>??:iS@).?&??1B\&???P@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??'I?L??!෪??%@)??'I?L??1෪??%@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?%??:???!????"?"@)+~??7??1?_?C7|@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?3??k???!LcJ1L@)?3??k???1LcJ1L@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?	?????!$Nl??t"@)?Ws?`?~?1?q?]L;@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??'I?L??!෪??5@)o??\??v?1?T?6]??:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor
K<?l?u?!????8H??)
K<?l?u?1????8H??:Preprocessing2F
Iterator::Model??S ?g??!RG??S@) ????m?1h?g?K???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?͍?	K??!g?F??#@)?@??_?[?1%???H=??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??U
????I?'E?Q@Qv?};;@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?x#?????x#????!?x#????      ??!       "	???\?? @???\?? @!???\?? @*      ??!       2	z??L?D??z??L?D??!z??L?D??:	??P???@??P???@!??P???@B      ??!       J	??K??????K????!??K????R      ??!       Z	??K??????K????!??K????b      ??!       JGPUY??U
????b q?'E?Q@yv?};;@