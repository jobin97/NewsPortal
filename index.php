<?php 
$title='Home';
session_start();
include('includes/config.php');
 include('includes/header.php');
 ?>


 <!-- Page Content -->
 <div class="container">
      <div class="row" style="margin-top: 4%">
        <!-- Blog Entries Column -->
        <div class="col-md-8">

          <!-- Blog Post -->
<?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 8;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where CURRENT_DATE <= ExpiryDate  order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
while ($row=mysqli_fetch_array($query)) {
?>

          <div class="card mb-4">
 <!-- <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>"> -->
            <div class="card-body">
              <h2 class="card-title"><?php echo htmlentities($row['posttitle']);?></h2>
              <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>" class="btn btn-primary"> More Details &rarr;</a>
            </div>
          </div>
<?php } ?>
<br>
       

      

      </div>
      <!-- /.row -->

    </div>






















































<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
      <?php include('includes/footer.php');?>
