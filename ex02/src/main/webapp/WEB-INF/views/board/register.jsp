<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">게시판</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            게시글 등록
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <form action="/board/register" method="post">
                            <label>제목</label>
                            <input class="form-control" type="text"
                             name="title" placeholder="제목을 입력해주세요."> <br>
                            <label>내용</label>
                            <textarea class="form-control" rows="10" placeholder="내용을 입력해주세요."
                             name="content"></textarea> <br>
                            <label>작성자</label>
                            <input class="form-control" type="text"
                             name="writer" placeholder="작성자를 입력해주세요."> <br>
                            
                            <button type="submit" class="btn btn-default">글등록</button>
                            <button type="reset" class="btn btn-default">다시쓰기</button>
                                                                                
                            </form>
                        <!-- /.panel-body -->
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
