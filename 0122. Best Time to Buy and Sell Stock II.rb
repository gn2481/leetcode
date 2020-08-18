

def stack(price)
  profit = 0
  # 跌了就買，漲了就賣
  # i從0跑到i-1
  i = 0
  while i < price.length - 1 do
    yester_price = price[i]
    today_price = price[i+1]
    if yester_price < today_price
      profit += (today_price - yester_price)
    end
    # puts "--------"
    # puts i
    i+=1
    # puts today_price
    # puts yester_price
    # puts profit
    # puts "--------"
  end
  return profit
end
# Input: [7,6,4,3,1]
# Output: 0

# Input: [7,1,5,3,6,4]
# Output: 7

# Input: [1,2,3,4,5]
# Output: 4

def except(a,b)
  puts  stack(a) == b
end

except([7,6,4,3,1],0)
except([7,1,5,3,6,4],7)
except([1,2,3,4,5],4)