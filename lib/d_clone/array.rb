module DClone
    module Array
        def d_clone
            [].tap do |res|
                self.each do |ele|
                    if ele.is_a?(Array) || ele.is_a?(Hash)
                        res << ele.d_clone
                    else
                        res << ele
                    end
                end
            end
        end
    end
end