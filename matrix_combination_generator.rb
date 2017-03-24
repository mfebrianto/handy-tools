p "This is Matrix Generator"
p "created by Michael Febrianto - 24 March 2017"

condition_1=['retail', 'online']
condition_2=['as-you-go', 'flexi', 'unlimited 1.5GB', 'unlimited 3GB', 'unlimited 7GB', 'unlimited 7GB plus', 'unlimited 9GB', '1GB Data Plan', '2GB Data Plan', '6GB Data Plan']
condition_3=['CC', 'DD', 'Paypal', 'product voucher', 'monetary voucher', 'combination voucher']
condition_4=['postpaid', 'prepaid']
condition_5=['porting', 'new MSN']
condition_6=['new customer', 'existing_customer']
condition_7=['with_promo', 'without_promo']

conditions = [condition_1, condition_2, condition_3, condition_4]


i = 0
conditions_temp = conditions[i].product(conditions[i+1])


(2...conditions.length).each do |k|
  conditions_temp = conditions_temp.product(conditions[k])
end



conditions_temp.each do |c|
  p c.flatten.join(' ++ ')
end
