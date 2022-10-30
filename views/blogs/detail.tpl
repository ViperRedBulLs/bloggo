<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ .article.Title }} | Bloggo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"
        integrity="sha512-naukR7I+Nk6gp7p5TMA4ycgfxaZBJ7MO5iC3Fp6ySQyKFHOGfpkSZkYVWV5R7u7cfAicxanwYQ5D1e17EfJcMA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="/static/assets/css/style.css">
</head>

<body>

    <button type="button" id="toTop" class="hide"><i class="fas fa-arrow-up"></i></button>

    <!-- Header -->
    <div class="header">
        <div class="header-box">
            <h1>{{ .article.Title}}</h1>
            <p>{{ .article.Desc }}</p>
        </div>
    </div>
    <!-- Header -->

    <!-- Content -->
    <div class="container pt-4">
        <div class="row">

            <!-- Right -->
            <div class="col-xl-8 col-md-12 mb-4">

                <div class="row">
                    <div class="d-flex align-items-center justify-content-between">
                        <h1 class="fw-bold">{{ .article.Title }}</h1>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#editPostModal">Edit Post</button>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="editPostModal" data-bs-backdrop="static" data-bs-keyboard="false"
                        tabindex="-1" aria-labelledby="editPostModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="editPostModalLabel">Add Post</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="" method="post" enctype="multipart/form-data">
                                        <input type="hidden" name="author_id" id="author_id">
                                        <div class="form-group mb-2">
                                            <label for="title">Title</label>
                                            <input type="text" name="title" id="title" class="form-control" required>
                                        </div>
                                        <div class="form-group mb-2">
                                            <label for="desc">Description</label>
                                            <input type="text" name="desc" id="desc" class="form-control" max="255"
                                                required>
                                        </div>
                                        <div class="form-group mb-2">
                                            <label for="content">Content</label>
                                            <textarea name="content" id="content" rows="10"
                                                class="form-control"></textarea>
                                            <div class="form-text">Please use Markdown only!</div>
                                        </div>
                                        <div class="d-grid gap-2">
                                            <button type="submit" class="btn btn-primary">Post</button>
                                            <button type="reset" class="btn btn-danger">Cancel</button>
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal -->
                    <div class="col-xl-12 col-md-12 mb-4 mt-4">
                        <img src="{{ .article.Logo }}" alt="" class="img-fluid my-3">
                        <div id="article-content"></div>
                        <script>
                            document.querySelector("#article-content").innerHTML = "{{ .article.Content | markdown }}"
                        </script>

                        <hr class="my-5">

                        <form action="" method="post" class="mt-4">
                            <h3>Leave a Comment</h3>
                            <div class="form-group mb-2">
                                <label for="full_name">Full Name</label>
                                <input type="text" name="full_name" id="full_name" class="form-control">
                            </div>
                            <div class="form-group mb-2">
                                <label for="email">Email</label>
                                <input type="email" name="email" id="email" class="form-control">
                            </div>
                            <div class="form-group mb-2">
                                <label for="message">Message</label>
                                <textarea name="message" id="message" class="form-control" rows="10"></textarea>
                            </div>
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-dark">Send</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
            <!-- Right -->

            <!-- Left -->
            <div class="col-xl-4 col-md-12 mb-4">

                <h4>Related Post</h4>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item d-flex align-items-center">
                        <a href="#">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni, asperiores?</a>
                    </li>
                    <li class="list-group-item d-flex align-items-center">
                        <a href="#">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni, asperiores?</a>
                    </li>
                    <li class="list-group-item d-flex align-items-center">
                        <a href="#">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni, asperiores?</a>
                    </li>
                </ul>

                <hr class="my-5">

                <h4>Popular Post</h4>

                <ul class="list-group list-group-flush">
                    <li class="list-group-item d-flex align-items-center">
                        <a href="#">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni, asperiores?</a>
                    </li>
                    <li class="list-group-item d-flex align-items-center">
                        <a href="#">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni, asperiores?</a>
                    </li>
                    <li class="list-group-item d-flex align-items-center">
                        <a href="#">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni, asperiores?</a>
                    </li>
                </ul>
            </div>
            <!-- Left -->

        </div>
    </div>
    <!-- Content -->

    <!-- Footer -->
    <!-- Footer -->
    <footer class="text-center text-lg-start bg-white text-muted">
        <!-- Section: Social media -->
        <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom bg-light">
            <!-- Left -->
            <div class="me-5 d-none d-lg-block">
                <span>Get connected with us on social networks:</span>
            </div>
            <!-- Left -->

            <!-- Right -->
            <div>
                <a href="" class="me-4 link-secondary">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="me-4 link-secondary">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="me-4 link-secondary">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="me-4 link-secondary">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="" class="me-4 link-secondary">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="" class="me-4 link-secondary">
                    <i class="fab fa-github"></i>
                </a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            <i class="fas fa-gem me-3 text-secondary"></i>Company name
                        </h6>
                        <p>
                            Here you can use rows and columns to organize your footer content. Lorem ipsum
                            dolor sit amet, consectetur adipisicing elit.
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Products
                        </h6>
                        <p>
                            <a href="#!" class="text-reset">Angular</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">React</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Vue</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Laravel</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Useful links
                        </h6>
                        <p>
                            <a href="#!" class="text-reset">Pricing</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Settings</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Orders</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Help</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                        <p><i class="fas fa-home me-3 text-secondary"></i> New York, NY 10012, US</p>
                        <p>
                            <i class="fas fa-envelope me-3 text-secondary"></i>
                            info@example.com
                        </p>
                        <p><i class="fas fa-phone me-3 text-secondary"></i> + 01 234 567 88</p>
                        <p><i class="fas fa-print me-3 text-secondary"></i> + 01 234 567 89</p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.025);">
            © 2021 Copyright:
            <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->
    <!-- Footer -->

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
    <script src="/static/assets/js/style.js"></script>
</body>

</html>