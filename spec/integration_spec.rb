require_relative './../lib/d_clone'

describe "DClone" do

    describe 'Array' do
        context 'For empty array' do
            it 'Returns the empty array with different object id' do
                arr = []
                d_clone_arr = arr.d_clone

                expect(arr.object_id).not_to eq(d_clone_arr.object_id)
                expect(arr.length).to eq(d_clone_arr.length)
            end
        end

        context 'For nested array' do
            it 'Returns the deep clone array with different object id' do
                arr = [ 1, 2, [ 3, 4, [ 5, 6 ] ] ]
                d_clone_arr = arr.d_clone

                arr[2][2] << 77

                expect(arr.object_id).not_to eq(d_clone_arr.object_id)
                expect(arr[2][2].object_id).not_to eq(d_clone_arr[2][2].object_id)
                expect(arr[2][2].length).to eq(3)
                expect(d_clone_arr[2][2].length).to eq(2)
            end
        end

        context 'For array with nil' do
            it 'Returns the deep clone array with different object id' do
                arr = [ nil ]
                d_clone_arr = arr.d_clone

                expect(arr.object_id).not_to eq(d_clone_arr.object_id)
                expect(arr.length).to eq(1)
                expect(d_clone_arr.length).to eq(1)
            end
        end
    end

    describe 'Hash' do
        context 'For empty hash' do
            it 'Returns the empty hash with different object id' do
                hash = {}
                d_clone_hash = hash.d_clone

                expect(hash.object_id).not_to eq(d_clone_hash.object_id)
                expect(hash.length).to eq(d_clone_hash.length)
            end
        end

        context 'For nested hash' do
            it 'Returns the deep clone hash with different object id' do
                hash = { a: 1, b: { c: 3, d: [ 11, 12, 13 ], e: 12 } }
                d_clone_hash = hash.d_clone

                hash[:b][:d] << 33

                expect(hash.object_id).not_to eq(d_clone_hash.object_id)
                expect(hash[:b][:d].object_id).not_to eq(d_clone_hash[:b][:d].object_id)
                expect(hash[:b][:d].length).to eq(4)
                expect(d_clone_hash[:b][:d].length).to eq(3)
            end
        end
    end

end