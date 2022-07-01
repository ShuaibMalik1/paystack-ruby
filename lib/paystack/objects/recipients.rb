require 'paystack/objects/base.rb'


class PaystackRecipients < PaystackBaseObject

  def create(data={})
    return PaystackRecipients.create(@paystack, data)
  end

  def get(id_or_code)
    return PaystackRecipients.get(@paystack, id_or_code)
  end

  def update(id_or_code, data={})
    return PaystackRecipients.update(@paystack, id_or_code,  data)
  end

  def list(page=1)
    return PaystackRecipients.list(@paystack, page)
  end

  def delete(id_or_code)
    return PaystackRecipients.delete(@paystack, id_or_code)
  end


  def PaystackRecipients.create(paystackObj, data={})
    initPostRequest(paystackObj, "#{API::RECIPIENT_PATH}", data, true)
  end

  def PaystackRecipients.get(paystackObj, id_or_code)
    initGetRequest(paystackObj, "#{API::RECIPIENT_PATH}/#{id_or_code}",)
  end

  def PaystackRecipients.update(paystackObj, id_or_code, data={})
    initPutRequest(paystackObj,"#{API::RECIPIENT_PATH}/#{id_or_code}",  data)
  end

  def PaystackRecipients.list(paystackObj, page=1)
    initGetRequest(paystackObj, "#{API::RECIPIENT_PATH}/?page=#{page}")
  end

  def PaystackRecipients.delete(paystackObj, id_or_code)
    initDeleteRequest(paystackObj, "#{API::RECIPIENT_PATH}/#{id_or_code}",)
  end


end