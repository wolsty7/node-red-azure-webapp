(if not exist \home mkdir \home)
(if not exist \home\nodered mkdir \home\nodered)
(if not exist \home\nodered\.node-red mkdir \home\nodered\.node-red)
copy npm_.cmd \home\nodered\.node-red\npm_.cmd
pushd \home\nodered\.node-red
npm install node-red-dashboard node-red-contrib-ui_list node-red-contrib-azure-sql node-red-contrib-azureiotc2d & (
     copy npm_.cmd npm.cmd /y
     popd 
     copy npm_.cmd npm.cmd /y
)
