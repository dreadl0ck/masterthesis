	o.2?@o.2?@!o.2?@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCo.2?@?&?f???1V??y?O??Ay?t????I?????@rEagerKernelExecute 0*	H?z?GT@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?ĬC9??!$ۊ7?4@)?ĬC9??1$ۊ7?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???[???!?i?)9@)C?+j??1{d[???3@:Preprocessing2U
Iterator::Model::ParallelMapV2?҇.?o??!5??.@)?҇.?o??15??.@:Preprocessing2F
Iterator::Modelk?w??#??!:ֈC>@)bg
?׈?1?
?-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???x??!???9?A@)???|~??1̷|˷|-@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???7????!|1z?oQ@)?)??sx?1?z?<p@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorƊL??q?!U?6|??@)ƊL??q?1U?6|??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?:?? ???!Y?,E??B@)?????W?1??
ц???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?56.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI.r??`S@QH?7ʰ|6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?&?f????&?f???!?&?f???      ??!       "	V??y?O??V??y?O??!V??y?O??*      ??!       2	y?t????y?t????!y?t????:	?????@?????@!?????@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q.r??`S@yH?7ʰ|6@