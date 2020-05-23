module DClone
    module Hash
        def d_clone
            {}.tap do |res|
                self.each do |k, v|
                    if v.is_a?(Hash)
                        res[k] = v.d_clone
                    elsif v.is_a?(Array)
                        res[k] = v.d_clone
                    else
                        res[k] = v
                    end
                end
            end
        end
    end
end
