class LRUCache
   def initialize(cache)
     @cache_size = cache
     @queue = []
   end

   def count
     # returns number of elements currently in cache
     queue.count
   end

   def add(el)
     # adds element to cache according to LRU principle
     if queue.include?(el)
       queue.delete(el)
       queue << el
     elsif queue.count == @cache_size
       queue.shift
       queue << el
     else
       queue << el
     end
   end

   def show
     # shows the items in the cache, with the LRU item first
     p queue
   end

   private
   # helper methods go here!
   attr_accessor :queue

 end
