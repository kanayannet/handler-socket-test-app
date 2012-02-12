
require 'handlersocket'

hs = HandlerSocket.new('localhost',9999)

hs.open_index(1,'handler','user','PRIMARY','id,name')
#データ書き込み
hs.execute_insert(1,[1,'name1'])
#データ読み込み
res = hs.execute_single(1,'=',[1])
p res
hs.close

exit
