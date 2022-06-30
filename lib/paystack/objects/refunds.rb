require 'paystack/objects/base.rb'

class PaystackRefunds < PaystackBaseObject
  def create(data={})
    return PaystackRefunds.create(@paystack, data)
  end

  def get(reference)
    return PaystackRefunds.get(@paystack, reference)
  end

  def list(page=1)
    return PaystackRefunds.list(@paystack, page)
  end

  def PaystackRefunds.create(paystackObj, data)
    initPostRequest(paystackObj,"#{API::REFUND_PATH}",  data, true)
  end

  def PaystackRefunds.get(paystackObj, reference)
    initGetRequest(paystackObj, "#{API::REFUND_PATH}/#{reference}")
  end

  def PaystackRefunds.list(paystackObj, page=1)
    initGetRequest(paystackObj, "#{API::REFUND_PATH}?page=#{page}")
  end
end