module type Interface = sig
    type m
    val neutre : m
    val combine : m -> m -> m
  end
