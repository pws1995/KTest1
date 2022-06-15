<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">발주서 발행</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            구매 발주서 작성
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                </thead>
                                <tbody>                             
                                    <tr class="odd gradeX">  
                                        <td>발주번호</td>
                                        <td><input type="number" value="ordernum"></td>
                                    <tr class="odd gradeX">
                                        <td>품목명</td>
                                        <td><input type="text" name="name"></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>수량</td>
                                        <td><input type="number" name="count"></td>
                                    </tr> 
                                    <tr class="odd gradeX">
                                        <td>협력(공급)회사</td>
                                        <td><input type="text" name="company"></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>공급가격</td>
                                        <td><input type="number" name="sprice"></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>납기일</td>
                                        <td><input type="date" name="duedate"></td>
                                    </tr>                                
                            </tbody>
                            
                        </table>
                        <br><br>
                    <div style="text-align:center;">
                        <span style="margin-right:100px;"><button type="button" class="btn btn-default">수정</button></span>
                        <span style="margin-right:100px;"><button type="button" class="btn btn-default">검수</button></span>
                        <span style="margin-right:100px;"><button type="button" class="btn btn-default">발행</button></span>
                    </div>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
   		 </div>
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>
   
    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>

</html>
