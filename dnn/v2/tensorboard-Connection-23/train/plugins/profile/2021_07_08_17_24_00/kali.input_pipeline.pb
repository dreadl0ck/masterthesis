	????C?@????C?@!????C?@	???0???????0????!???0????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL????C?@pw?n?P??1AJ????ANE*?-??I?"ڎ??@Yh??n???rEagerKernelExecute 0*	?G?z?r@2K
Iterator::Model::Map?? ?????!`???`jS@)B??=??1D?J??O@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2@?z??{??!?E"?#,,@)@?z??{??1?E"?#,,@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???vÖ?!?k???@)???vÖ?1?k???@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??a?? ??!B?~??!@)?g??s???1???R?w@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate!Y?n??!?%?O?K#@)?%??:?z?1?????{@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip???=?$??!????j+5@)E?a??x?1E?ܛF @:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorw??N#-u?!???????)w??N#-u?1???????:Preprocessing2F
Iterator::Model.9????!
?YL%?S@)?"??l?1??k?,???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap????o??!?6x??$@)X??j`?1?Gy?2??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?47.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???0????I?g>??Q@Q?&?kn<@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	pw?n?P??pw?n?P??!pw?n?P??      ??!       "	AJ????AJ????!AJ????*      ??!       2	NE*?-??NE*?-??!NE*?-??:	?"ڎ??@?"ڎ??@!?"ڎ??@B      ??!       J	h??n???h??n???!h??n???R      ??!       Z	h??n???h??n???!h??n???b      ??!       JGPUY???0????b q?g>??Q@y?&?kn<@