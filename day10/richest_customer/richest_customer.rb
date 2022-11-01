# @param {Integer[][]} accounts
# @return {Integer}

# map accounts to the sum of all the money in account (sum of row in 2d array)
# get maximum value out of those wealths
def maximum_wealth(accounts)
  wealths = accounts.map(&:sum)
  wealths.max
end
