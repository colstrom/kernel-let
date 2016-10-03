module Kernel
  def let(**context, &block)
    if block_given?
      let(context).call(&block)
    else
      lambda do |&action|
        Struct
          .new(*context.keys)
          .new(*context.values)
          .instance_eval(&action)
      end
    end
  end
end
