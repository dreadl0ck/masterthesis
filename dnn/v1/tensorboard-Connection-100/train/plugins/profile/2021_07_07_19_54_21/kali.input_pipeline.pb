	?????r@?????r@!?????r@	YEa,*??YEa,*??!YEa,*??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?????r@??????1????%??AZd;?O???IA?G??@YϠ?????rEagerKernelExecute 0*	??????]@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?P??C???!9??
S?>@)????%??1???x?k:@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?D??b??!????B?4@)?D??b??1????B?4@:Preprocessing2F
Iterator::ModelwR~R???!C?)U@@)??7?0??1?ʱ??/2@:Preprocessing2U
Iterator::Model::ParallelMapV2D?l?????!1??W??,@)D?l?????11??W??,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????M??!(??>@)Qf?L2r??1?\?c?e"@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?w(
????!??ku?P@)?f???u?1??%?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?M???Pt?!j??G??@)?M???Pt?1j??G??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??{?丣?!?d?*@@)?m?f?1??+1?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 5.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?69.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9YEa,*??IHM!=?R@QQuf?h?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????????????!??????      ??!       "	????%??????%??!????%??*      ??!       2	Zd;?O???Zd;?O???!Zd;?O???:	A?G??@A?G??@!A?G??@B      ??!       J	Ϡ?????Ϡ?????!Ϡ?????R      ??!       Z	Ϡ?????Ϡ?????!Ϡ?????b      ??!       JGPUYYEa,*??b qHM!=?R@yQuf?h?7@