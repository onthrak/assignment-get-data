## helper function, finds all 3 measurements for given id
## x should be "read.table('./summary_measurements.txt', header = 1)"
find_val = function(x,id){
        
        selected = x[c(id,id+128,id+256),]
        rownames(selected) = c(
                'body_acc',
                'body_gyro',
                'total_acc') 
        return (selected)
}