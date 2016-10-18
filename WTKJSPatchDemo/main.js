/**
 * Created by wangtongke on 16/7/21.
 */
//require('WViewController')
defineClass("ViewController", {
            tableView_didSelectRowAtIndexPath: function(tableView, indexPath) {
            
            
            
            var row = indexPath.row()
            console.log(self.dataArray());
            console.log(row);
            
            var jsArray = self.dataArray().toJS();
            if (jsArray.length > row) {
            
            var vc = require('WViewController').alloc().init();
            self.navigationController().pushViewController_animated(vc,YES);
           
            }else
            {
            var alertView = require('UIAlertView')
            .alloc().
            initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("提示","数组越界了",self,"确定",null);
            alertView.show();
            }

            },
            
            tableView_cellForRowAtIndexPath: function(tableView,indexPath){
            var cell = tableView.dequeueReusableCellWithIdentifier("cell");
            if(!cell){
            cell = require('UITableViewCell').alloc().initWithStyle_reuseIdentifier(0,"cell");
            }
            cell.textLabel().setText("第"+indexPath.row()+"行  from JS");
            console.log(indexPath.row);
            return cell;
            }
           
})


