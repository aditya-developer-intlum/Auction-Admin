   
   <!-- Footer : Begin  -->
    <!-- Jquery-->
    <script src="js/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

    <script src="js/bootstrap.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/particles.min.js"></script>
    <script src="js/custom.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>
<script>
	$(document).ready(function() {
        $(".note-popover popover in note-link-popover bottom").css('display','none !important');
    $('#example').DataTable({
        paging: false,
        bFilter: false,
        ordering: true,
        searching: false,
        info:false,
        'columnDefs': [ {
        'targets': [0,1,2,3,4,5,6,7,8,9,10,11,15], /* column index */
        'orderable': false, /* true or false */
        }]
    });
} );
</script>
</body>
@stack('script')
</html>

