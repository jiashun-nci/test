<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html lang="en">
  <head>
    <meta charset="utf-8"></meta>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
    <meta name="viewport" content="width=device-width, initial-scale=1"></meta>

    <title>About Us</title>


    <link href="./css/bootstrap.min.css" rel="stylesheet"></link>
    <link href="./css/style.css" rel="stylesheet"></link>

  </head>
  <body>

<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
          <ul class="nav nav-pills bg-primary mb-1">
            <li class="nav-item btn-primary">
              <a class="nav-link text-white" href="../index.html">Home</a>
            </li>
            <li class="nav-item btn-primary">
              <a class="nav-link text-white" href="products.html">Products</a>
            </li>
            <li class="nav-item btn-primary">
              <a class="nav-link text-white" href="mission.html">Our Mission</a>
            </li>
            <li class="nav-item btn-primary">
              <a class="nav-link active text-success" href="about-us.html">About Us</a>
            </li>
            <li class="nav-item btn-primary">
              <a class="nav-link text-white" href="contact-us.html">Contact Us</a>
            </li>
          </ul>
          <h2 class="text-center font-weight-bold mt-3 mb-3">
            About Us
          </h2>
  <div class="col-md-12">
    <table class="table table-bordered table-sm table-hover table-striped">
    <tr>
      <th>Category</th>
      <th>Code</th>
      <th>Name</th>
      <th >Quantity</th>
    </tr>
    <xsl:for-each select="products/product">
    <tr>
      <td><xsl:value-of select="category"/></td>
      <td><xsl:value-of select="name/@code"/></td>
      <td><xsl:value-of select="name"/></td>
      <td style="text-align:right"><xsl:value-of select="quantity"/></td>
    </tr>
    </xsl:for-each>
  </table>
</div>


            <div class="footer-copyright text-center py-3">© 2020 Copyright: <a href="#"> Web Application Development</a></div>

        </div>
        <div class="col-md-1">
        </div>
      </div>
    </div>
  </div>
</div>

    <script src="./js/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/scripts.js"></script>
  </body>
</html>

</xsl:template>
</xsl:stylesheet>