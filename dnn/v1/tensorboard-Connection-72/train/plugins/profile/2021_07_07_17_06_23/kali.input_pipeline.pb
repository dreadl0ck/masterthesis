	?ՏM? @?ՏM? @!?ՏM? @      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?ՏM? @?2?FY??1+TT????A9(a????I?????@rEagerKernelExecute 0*	?G?z?T@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeato??\????!?????:@)"?*??<??1?$??̇5@:Preprocessing2F
Iterator::Model?`<????!+???B@)??<???1M᥽MG2@:Preprocessing2U
Iterator::Model::ParallelMapV2K<?l???!
/?m:?1@)K<?l???1
/?m:?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice`?5?!??!UD~ͭ-1@)`?5?!??1UD~ͭ-1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?aۢ???!?.?袋=@)0?[w???1m?w6??(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?AC???!?w6?;?O@)M?O?t?1K?_sk@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor3???ySq?!u?E]t@)3???ySq?1u?E]t@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??Tގp??!T?5?6?@)#-??#?V?1?,??D???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?59.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?({E??T@Q?]?>?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?2?FY???2?FY??!?2?FY??      ??!       "	+TT????+TT????!+TT????*      ??!       2	9(a????9(a????!9(a????:	?????@?????@!?????@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?({E??T@y?]?>?1@