<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="../jquery/jquery.min.js"></script>
   <script src="../bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row-fluid">
      <div class="span12">
        <div class="box corner-all">
          <div class="box-header grd-white corner-top">
            <div class="header-control"> <a data-toggle="modal" data-target="#myModal2"><i class="icon-external-link"></i></a> <a data-box="collapse"><i class="icofont-caret-up"></i></a> <a data-box="close" data-hide="bounceOutRight">&times;</a> </div>
            <span>用户列表</span> </div>
          <div class="box-body">
            <table id="datatables" class="table table-bordered table-striped responsive">
              <thead>
                <tr>
                  <th>Id</th>
                  <th>规则名</th>
                  <th>中文名</th>
                  <th>状态</th>
                  <th style="width:290px;">操作</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
          <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none;">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="false">&times;</button>
                  <h4 class="modal-title" id="myModalLabel">规则编辑</h4>
                </div>
                <div class="modal-body">
                  <form class="form-horizontal">
                    <div class="control-group">
                      <label class="control-label" for="Name">规则标识</label>
                      <div class="controls">
                        <input type="text" id="Name" name="Name">
                        (英文小写)
                        <input type="hidden" name="Id" id="Id" >
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="Title">规则中文名称</label>
                      <div class="controls">
                        <input type="text" id="Title" name="Title">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="Condition">规则表达式</label>
                      <div class="controls">
                        <textarea id="Condition" name="Condition"></textarea>
                      </div>
                    </div>
                    <div class="control-group">
                      <div class="controls">
                        <label class="checkbox">
                          <input name="Status" type="checkbox" id="Status" value="1">激活 </label>
                      </div>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  <button type="button" class="btn btn-primary">保存</button>
                </div>
              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>
           
          <!-- /box-body -->
        </div>
        <!-- /box -->
      </div>
      <!-- /span -->
    </div>
</body>
</html>