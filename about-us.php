<?php 
$title='About';
session_start();
include('includes/config.php');
 include('includes/header.php');

 
    ?>

<?php 
$pagetype='aboutus';
$query=mysqli_query($con,"select PageTitle,Description from tblpages where PageName='$pagetype'");
while($row=mysqli_fetch_array($query))
{

?>
      <h1 class="mt-4 mb-3"><?php echo htmlentities($row['PageTitle'])?>
  
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Home</a>
        </li>
        <li class="breadcrumb-item active">About</li>
      </ol>

      <!-- Intro Content -->
      <div class="row">

        <div class="col-lg-12">

         <p>
           
         A web portal is a specially designed website that brings information from diverse sources, like emails, online forums and search engines, together in a uniform way. Usually, each information source gets its dedicated area on the page for displaying information (a portlet); often, the user can configure which ones to display. Variants of portals include mashups and intranet "dashboards" for executives and managers. The extent to which content is displayed in a "uniform way" may depend on the intended user and the intended purpose, as well as the diversity of the content. Very often design emphasis is on a certain "metaphor" for configuring and customizing the presentation of the content (e.g., a dashboard or map) and the chosen implementation framework or code libraries. In addition, the role of the user in an organization may determine which content can be added to the portal or deleted from the portal configuration.</p>

      <p>
  A portal may use a search engine's application programming interface (API) to permit users to search intranet content as opposed to extranet content by restricting which domains may be searched. Apart from this common search engines feature, web portals may offer other services such as e-mail, news, stock quotes, information from databases and even entertainment content. Portals provide a way for enterprises and organizations to provide a consistent "look and feel" with access control and procedures for multiple applications and databases, which otherwise would have been different web entities at various URLs. The features available may be restricted by whether access is by an authorized and authenticated user (employee, member) or an anonymous website visitor..
      </p>
        </div>
      </div>
      <!-- /.row -->
<?php } ?>
    
    </div>
    <!-- /.container -->

    <!-- Footer -->
 <?php include('includes/footer.php');?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
